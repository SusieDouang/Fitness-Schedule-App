using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Susie.Common.Extensions;
using VelocityCoders.FitnessSchedule.Models;
using VelocityCoders.FitnessSchedule.DAL;



namespace VelocityCoders.FitnessSchedule.Webforms.Admin
{
    public partial class PersonDetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            this.BindPerson();
        }

        private void BindPerson()
        {
            int personId = Request.QueryString["personId"].ToInt();
            if (personId > 0)
            {
                Person personLookup = PersonDAL.GetItem(personId);
                if (personLookup != null)
                {
                    personIdMessage.Text = personLookup.PersonId.ToString();
                    firstNameMessage.Text = personLookup.FirstName;
                    lastNameMessage.Text = personLookup.LastName;
                    displayFirstNameMessage.Text = personLookup.DisplayFirstName;
                    genderMessage.Text = personLookup.Gender;
                }

                else
                    message1.Text = "Person could not be found.";
            }
            else message1.Text = "Invaild ID. Person record could not be found.";
        }
        
    }
}