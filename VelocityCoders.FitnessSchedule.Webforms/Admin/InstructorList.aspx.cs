using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using VelocityCoders.FitnessSchedule.Models;
using VelocityCoders.FitnessSchedule.Models.Collections;
using VelocityCoders.FitnessSchedule.DAL;


namespace VelocityCoders.FitnessSchedule.Webforms.Admin
{
    public partial class InstructorList : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            this.BindPersonList();
        }

        #region BIND CONTROLS

        private void BindPersonList()
        {
            InstructorCollection instructorList = new InstructorCollection();
            instructorList = InstructorDAL.GetCollection();

            rptInstructorList.DataSource = instructorList;
            rptInstructorList.DataBind();

        }

        #endregion
    }
}