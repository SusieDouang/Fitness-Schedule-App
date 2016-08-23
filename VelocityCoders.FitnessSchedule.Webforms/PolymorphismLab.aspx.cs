using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using VelocityCoders.FitnessSchedule.Webforms;
using VelocityCoders.FitnessSchedule.Models;
using Susie.Common;

namespace VelocityCoders.FitnessSchedule.Webforms
{
    public partial class PolymorphismLab : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            this.Poly();
        }

        private void Poly()
        {
            Person person01 = new Person();
            Poly2.Text = person01.PolyName();
        }

  //      private void Poly()
  //      {
  //      }

        private string Poly(string titleAbbreviation)
        {
            string returnValue = string.Empty;
            switch (titleAbbreviation.ToUpper())
            {
                case "DR":
                    returnValue = "Doctor";
                    break;

                case "MS":
                    returnValue = "Miss";
                    break;
            }
            return returnValue;
        }

       private string Poly(int titleId)
        {
            string returnValue = string.Empty; 
            switch(titleId)
            {
                case 1:
                    returnValue = "Doctor";
                    break;

                case 2:
                    returnValue = "Misses";
                    break;
            }

            return returnValue;
        }

        
        
    }
}