using System;
using System.Text; 
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace VelocityCoders.FitnessSchedule.Webforms
{
    public partial class B05 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            this.SwitchExample();
            //this.ConditionalExample();
        }

     //   private void ConditionalExample()
       // {

            //           Boolean isDeleted = true;

            //           string firstName = "Susie";
            //            int x = 10;
            //            string outputMessage;

            //            outputMessage = (x > 15) ? "Greater than 15" : "Less than 15";

            //            switch (x)
            //            {
            //                case 1:
            //                case 2:
            //                    outputMessage = "1 or 2 was the value";
            //                    break;

            //                case 20:
            //                    outputMessage = x.ToString();
            //                    break;

            //                case 30:
            //                    outputMessage = x.ToString();
            //                    break;

            //                default:
            //                    outputMessage = "Nothing matched";
            //                       break;
            //            }


            //           if (!isDeleted)
            //            {
            //                //if (firstName == "Susie" || x > 10)

            //if (x > 15)
            //                outputMessage = "Yes";  //relational operator
            //            }
            //            else if (x > 20)
            //            { 
            //              outputMessage = "don't know";
            //            }        
            //            else
            //                outputMessage = "No";
            //    


        
        
        private void SwitchExample()
        {
            string userInput = txtCarMake.Text;
            string outputMessage = string.Empty;
            {
                switch (userInput.ToUpper())
                {
                    case "HONDA":
                    case "TOYOTA":
                        outputMessage = "Japanese Vehicle";
                        break;

                    case "BMW":
                    case "MERCEDES":
                    case "MERCEDES BENZ":
                    case "JAGUAR":
                        outputMessage = "European Vehicle";
                        break;

                    case "CHEVY":
                    case "CHEVROLET":
                    case "FORD":
                        outputMessage = "American Vehicle";
                        break;

                    default:
                        outputMessage = "I don't know where your car is from.";
                        break;
                }

                   con1.Text = "Your input: " + userInput + " - " + outputMessage;
               
                }

                
        }
     }
  
}

    

