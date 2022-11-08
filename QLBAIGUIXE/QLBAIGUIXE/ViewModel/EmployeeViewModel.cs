using QLBAIGUIXE.Model;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Net;
using System.Security.Policy;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Input;

namespace QLBAIGUIXE.ViewModel
{
    class EmployeeViewModel : BaseViewModel
    {
        private ObservableCollection<EMPLOYEE> _List;
        public ObservableCollection<EMPLOYEE> List
        {
            get => _List; set { _List = value; OnPropertyChanged(); }
        }
        //Thuoc tinh bang nhan vien
        private int _Id;
        public int Id { get => _Id; set { _Id = value; OnPropertyChanged(); } }

        private string _UserName;
        public string UserName { get => _UserName; set { _UserName = value; OnPropertyChanged(); } }

        private string _PassWord;
        public string PassWord { get => _PassWord; set { _PassWord = value; OnPropertyChanged(); } }

        private string _DisplayName;
        public string DisplayName { get => _DisplayName; set { _DisplayName = value; OnPropertyChanged(); } }
        
        private string _IdRole;
        public string IdRole { get => _IdRole; set { _IdRole = value; OnPropertyChanged(); } }

        private EMPLOYEE _SelectedItem;
        public EMPLOYEE SelectedItem
        {
            get => _SelectedItem; set
            {
                _SelectedItem = value;
                OnPropertyChanged();
                if (SelectedItem != null)
                {
                    Id = SelectedItem.Id;
                    UserName = SelectedItem.UserName;
                    PassWord = SelectedItem.Password;
                    DisplayName = SelectedItem.DisplayName;
                    IdRole = SelectedItem.IdRole;
                }
            }
        }
        public ICommand AddCommand { get; set; }
        public ICommand EditCommand { get; set; }
        public EmployeeViewModel()
        {
            List = new ObservableCollection<EMPLOYEE>(DataProvider.Ins.DB.EMPLOYEEs);

            AddCommand = new RelayCommand<object>((p) =>
            {
                return true;

            }, (p) =>
            {
                var EMPLOYEE = new EMPLOYEE() {Id = Id, UserName = UserName, Password = PassWord, 
                                                DisplayName = DisplayName, IdRole = IdRole };

                DataProvider.Ins.DB.EMPLOYEEs.Add(EMPLOYEE);
                DataProvider.Ins.DB.SaveChanges();

                List.Add(EMPLOYEE);
            });

        }
    }
}
