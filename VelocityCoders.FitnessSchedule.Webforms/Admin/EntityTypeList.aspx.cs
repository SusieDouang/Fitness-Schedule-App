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
    public partial class EntityTypeList : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            this.BindEntityTypeList();
        }

        #region BIND CONTROLS

        private void BindEntityTypeList()
        {
            EntityTypeCollection entityTypeList = new EntityTypeCollection();
            entityTypeList = EntityTypeDAL.GetCollection();

            rptEntityTypeList.DataSource = entityTypeList;
            rptEntityTypeList.DataBind();

        }

        #endregion
    }
}