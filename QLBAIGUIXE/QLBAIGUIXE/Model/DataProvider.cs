using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace QLBAIGUIXE.Model
{
    
    public class DataProvider
    {
        public string Acc { get; set; }

        private static DataProvider _ins;
        public static DataProvider Ins
        {
            get
            {
                if (_ins == null)
                    _ins = new DataProvider();
                return _ins;
            }
            set
            {
                _ins = value;
            }
        }
        public QLBAIXEEntities DB { get; set; }

        private DataProvider()
        {
            DB = new QLBAIXEEntities();
        }

        public void setAcc(string acc)
        {
            Acc = acc;
        }

    }
}