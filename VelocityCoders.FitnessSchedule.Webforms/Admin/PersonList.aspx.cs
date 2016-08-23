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
    public partial class PersonList : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            this.BindInstructorList();
        }

        #region BIND CONTROLS

        private void BindInstructorList()
        {
            PersonCollection personList = new PersonCollection();
            personList = PersonDAL.GetCollection();

            rptPersonList.DataSource = personList;
            rptPersonList.DataBind();

        }
            
        #endregion
    }
}