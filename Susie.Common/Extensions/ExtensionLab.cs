using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Susie.Common.Extensions
{
    public static class ExtensionLab
    {
        public static DateTime aDate(this string b)
        {
            DateTime dateTime;
            if (DateTime.TryParse(b, out dateTime))
                return dateTime;
            else
                return DateTime.MinValue;
        }

        public static int aInt(this string n)
        {
            int intValue = 0;
            if (int.TryParse(n, out intValue))
                return intValue;
            else
                return 0;
        }

        public static String aString()
        {
            string aString = "Hey";
            return aString; 

        }

        }
        
}

