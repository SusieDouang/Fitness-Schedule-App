using System;
using System.Text;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace VelocityCoders.FitnessSchedule.Webforms
{
    public partial class B06 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            this.LoopExample();
        }

        private void LoopExample()
        {
            StringBuilder sb = new StringBuilder();

            #region FOR LOOP
            for (int x = 1; x <= 10; x++)
            {
                sb.Append("Loop Iteration:" + x.ToString() + "<br>");
            }

            #endregion

            #region FOREACH LOOP

            sb = new StringBuilder(); 

            string[] namesList = new string[] { "Amy", "Bill", "Michael", "Darin", "Bobby"};
            Array.Sort(namesList);

            foreach(string item in namesList)
            {
                sb.Append("Iteration: " + item + "<br>");
            }

            #endregion

            loop1.Text = sb.ToString();

        }
    }
}