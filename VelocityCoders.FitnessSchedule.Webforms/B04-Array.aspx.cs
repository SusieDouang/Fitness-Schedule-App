using System;
using System.Text;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace VelocityCoders.FitnessSchedule.Webforms
{
    public partial class B04_Array : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            this.ArrayExample(); //Array is a single variable that stores a collection of items 
        }

        private void ArrayExample()  //method example
        {
            string[] nameList = new string[5];  // specify the datatype -- [5] is # of records

            nameList[0] = "Andy";
            nameList[1] = "Bob";
            nameList[2] = "Cathy";
            nameList[3] = "Doug";
            nameList[4] = "Ellen";

            int[] ageList = new int[] { 2, 10, 15, 3, 25, 40, 50 };  // interger-number arrays

            Array.Sort(ageList); 

            // line1.Text = "Element 1 = " + nameList[0];                       //display message
            //line1.Text = "Element 1 = " + string.Concat(nameList);           // concatentate the values 
            //line1.Text = "All Elements = " + string.Join(", ", nameList);    //string.Join() method allows you to add seperator

            line1.Text = "All Elements = " + string.Join(", ", ageList);

                
        }


    }
}