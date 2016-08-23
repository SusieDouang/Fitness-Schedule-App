using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Susie.Common;

namespace VelocityCoders.FitnessSchedule.Webforms
{
    public partial class ExceptionsLab : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            this.ExceptionsExample();
        }
        private void ExceptionsExample()
        {
            string[] myArray = new string[] { "Purple", "Blue", "Red" };

            try
            { 
                Exception1.Text = myArray[10];
            }
            catch (IndexOutOfRangeException ex)
            {
                Exception1.Text = "Some error..." + ex.Message;
            }
            catch (FormatException ex)
            {
                Exception1.Text = "There was an exception..." + ex.Message;
            }
            finally
            {
                Exception1.Text = myArray[1] + " "+ "some";
            }
        }
    }
}