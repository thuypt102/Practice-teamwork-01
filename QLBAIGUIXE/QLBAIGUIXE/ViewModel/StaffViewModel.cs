using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Input;
using System.IO;
using System.Security.Cryptography;
using System.Windows;
using System.Windows.Controls;
using QLBAIGUIXE.Model;
using System.Windows.Documents;

namespace QLBAIGUIXE.ViewModel
{
    class StaffViewModel : BaseViewModel
    {
        private string _LicensePlate;
        public string LicensePlate { get => _LicensePlate; set { _LicensePlate = value; OnPropertyChanged(); } }
        private string _Code;
        public string Code { get => _Code; set { _Code = value; OnPropertyChanged(); } }
        public ICommand AddCommand { get; set; }
        public ICommand EditCommand { get; set; }

        public StaffViewModel()
        {
            AddCommand = new RelayCommand<object>((p) =>
            {
                if (string.IsNullOrEmpty(LicensePlate))
                    return false;

                var licensePlate = DataProvider.Ins.DB.INFOCARs.Where(x => x.LicensePlate == LicensePlate);
                if (licensePlate == null || licensePlate.Count() != 0)
                    return false;
                return true;

            }, (p) =>
            {
                var unit = new INFOCAR() { LicensePlate = LicensePlate };

                DataProvider.Ins.DB.INFOCARs.Add(unit);
                DataProvider.Ins.DB.SaveChanges();

                //List.Add(unit);
            });
            /*
            EditCommand = new RelayCommand<object>((p) =>
            {
                if (string.IsNullOrEmpty(LicensePlate) || SelectedItem == null)
                    return false;

                var displayList = DataProvider.Ins.DB.INFOCARs.Where(x => x.LicensePlate == LicensePlate);
                if (displayList == null || displayList.Count() != 0)
                    return false;

                return true;

            }, (p) =>
            {
                var unit = DataProvider.Ins.DBINFOCARs.Where(x => x.Id == SelectedItem.Id).SingleOrDefault();
                unit.DisplayName = DisplayName;
                DataProvider.Ins.DB.SaveChanges();

                SelectedItem.DisplayName = DisplayName;
            });
            */
        }
    }
}
