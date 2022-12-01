using QLBAIGUIXE.Model;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Input;

namespace QLBAIGUIXE.ViewModel
{
    public class HomeViewModel:BaseViewModel
    {
        private string _Search { get; set; }
        public string Search { get => _Search; set { _Search = value; OnPropertyChanged(); } }
        private ObservableCollection<Model.VIEWHYSTORY> _ViewHystory;
        public ObservableCollection<Model.VIEWHYSTORY> ViewHystory { get => _ViewHystory; set { _ViewHystory = value; OnPropertyChanged(); } }
        private Model.VIEWHYSTORY _SelectedViewHystory;
        public Model.VIEWHYSTORY SelectedViewHystory
        {
            get => _SelectedViewHystory;
            set
            {
                _SelectedViewHystory = value;
                OnPropertyChanged();


            }
        }

        public ICommand SearchCommand { get; set; }

        public HomeViewModel()
        {
            ViewHystory = new ObservableCollection<Model.VIEWHYSTORY>(DataProvider.Ins.DB.VIEWHYSTORies);
            SearchCommand = new RelayCommand<object>((p) =>
            {
                return true;
            }, (p) =>
            {


                ViewHystory = new ObservableCollection<Model.VIEWHYSTORY>(DataProvider.Ins.DB.VIEWHYSTORies.Where(x => x.Code.Contains(Search)));


            });
        }
    }
}
