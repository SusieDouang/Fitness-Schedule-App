using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Susie.Common.Extensions
{
    public static class Extensions
    {
     public static DateTime ToDate(this string s)
        {
            DateTime dateTime;

            if (DateTime.TryParse(s, out dateTime))
                return dateTime;
            else
                return DateTime.MinValue;
        }

      public static int ToInt(this string s)
        {
            int intValue = 0;
            if (int.TryParse(s, out intValue))
                return intValue;
            else
                return 0; 
        }

            }
}
