using System;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FitnessSchedule.WebForms
{
    public partial class HelloWorld : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string fullName = this.GetFullName("Jim", "Brown");

            this.DisplayName(lblDisplayMessage, "FullName: " + fullName);
        }


        private void DisplayName(Label labelControl, string displayMessage)
        {
            labelControl.Text = displayMessage;
        }


        private string GetFullName(string firstName, string lastName);
        {
            string fullName = firstName + " " + lastName;
    
            return fullName; 
     
        }

}
    }

           
