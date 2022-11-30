﻿using QLBAIGUIXE.Model;
using System;
using System.Collections.ObjectModel;
using System.Windows;
using System.Windows.Input;

namespace QLBAIGUIXE.ViewModel
{
    public class TrackHistoryVM : BaseViewModel
    {
        private DateTime _CheckOutTime;
        public DateTime CheckOutTime { get => _CheckOutTime; set { _CheckOutTime = value; OnPropertyChanged(); } }
        private string _LicensePlate;
        public string LicensePlate { get => _LicensePlate; set { _LicensePlate = value; OnPropertyChanged(); } }
        private string _Name;
        public string Name { get => _Name; set { _Name = value; OnPropertyChanged(); } }
        private string _Code;
        public string Code { get => _Code; set { _Code = value; OnPropertyChanged(); } }
        private Decimal _Price;
        public Decimal Price { get => _Price; set { _Price = value; OnPropertyChanged(); } }
        private string _DisplayName;
        public string DisplayName { get => _DisplayName; set { _DisplayName = value; OnPropertyChanged(); } }
        private string _UserName;
        public string UserName { get => _UserName; set { _UserName = value; OnPropertyChanged(); } }

        public DateTime dateBegin;
        public DateTime dateEnd;

        private ObservableCollection<VIEWHYSTORY> _List;
        public ObservableCollection<VIEWHYSTORY> List
        {
            get => _List; set { _List = value; OnPropertyChanged(); }
        }

        private VIEWHYSTORY _SelectedItem;
        public VIEWHYSTORY SelectedItem
        {
            get => _SelectedItem; set
            {
                _SelectedItem = value;
                OnPropertyChanged();
                if (SelectedItem != null)
                {
                    CheckOutTime = (DateTime)SelectedItem.CheckOutTime;
                    LicensePlate = SelectedItem.LicensePlate;
                    Name = SelectedItem.Name;
                    Code = SelectedItem.Code;
                    Price = (Decimal)SelectedItem.Price;
                    DisplayName = SelectedItem.DisplayName;
                    UserName = SelectedItem.UserName;
                }
            }
        }
        public ICommand DisplayCommand { get; set; }

        void TimeCheck()
        {

        }
        public TrackHistoryVM()
        {
            List = new ObservableCollection<VIEWHYSTORY>(DataProvider.Ins.DB.VIEWHYSTORies);
            DateTime today = DateTime.Now;
            dateBegin = new DateTime(today.Year, today.Month, 1);
            dateEnd = dateBegin.AddMonths(1).AddDays(-1);

            DisplayCommand = new RelayCommand<object>((p) =>
            {
                //string timeStr = CheckOutTime.ToString();
                string dateB = dateBegin.ToString();
                string dateE = dateEnd.ToString();
                if (string.IsNullOrEmpty(dateB) || string.IsNullOrEmpty(dateE))
                    return false;
                else
                    return true;

            }, (p) =>
            {

                MessageBox.Show("okokoko!", "Thông báo");

            });


        }
    }
}