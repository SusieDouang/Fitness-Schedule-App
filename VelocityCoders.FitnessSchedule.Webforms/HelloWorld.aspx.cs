using System;
using System.Text;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using VelocityCoders.FitnessSchedule.Models;
using VelocityCoders.FitnessSchedule.Models.Collections;
using Susie.Common.Helpers;
using Susie.Common.Extensions;
using VelocityCoders.FitnessSchedule.Models.Enums;

namespace VelocityCoders.FitnessSchedule.Webforms
{
    public partial class HelloWorld : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)

        {
            this.StringExample();
            this.PersonExample();
            this.InstructorExample();
            this.EmailExample();
            this.AbstractExample();
            this.CollectionExample();
            this.ExceptionsExample();
            this.GetStateName();
            this.PolymorphismExample();
            this.InterfaceExample();
            this.InterfaceExampleStudent();
            this.StaticExample();
            this.ExtensionExample();
            this.EnumsExample();
            this.ExtendLab();
            this.EnumsLab();
            this.GetCollection();

        }
        private void GetCollection()
        {

        }


        private void EnumsLab()
        {
            lblDisplayMessage1.Text = EnumLab.GET_COLLECTION.ToString(); 
        }


        private void ExtendLab()
        {
            string aBirthday = "04/30/1985";
            DateTime convertedDate = aBirthday.ToDate();

           // lblDisplayMessage4.Text = convertedDate.ToString();
        }

        private void EnumsExample()
        {
            lblDisplayMessage4.Text = DaysEnums.Monday.ToString();
       //   lblDisplayMessage4.Text = ((int)DayEnum.Monday).ToString(); 
        }

        private void ExtensionExample()
        {
            string myBirthday = "2/1/1990";
            DateTime convertedDate = myBirthday.ToDate();

            string myAge = "20";
            int convertedAge = myAge.ToInt();
            
            lblDisplayMessage2.Text = convertedAge.ToString();
        }

        private void StaticExample()
        {
            //notes: calls static method
            lblDisplayMessage4.Text = StateHelper.GetStateName("MN");
        }

        private void InterfaceExampleStudent()
        {
            Student inst = new Student()
            {
                FirstName = "John",
                LastName = "Smith",
                JoinDate = new DateTime(2010, 10, 5)
            };

            lblDisplayMessage4.Text = inst.GetFullInfo();
        }

        private void InterfaceExample()
        {
            Instructor inst = new Instructor()
            {
                FirstName = "John",
                LastName = "Smith",
                HireDate = new DateTime(2006, 1, 10)
            };
            lblDisplayMessage3.Text = inst.GetFullInfo();
        }

        private void PolymorphismExample()
        {
            Person person01 = new Person() { FirstName = "Julie" };

            lblDisplayMessage4.Text = person01.GetName();
        }

        private void GetStateName()
        {
        }
        private string GetStateName(int stateId)
        {
            string returnValue = string.Empty;
            switch (stateId)
            {
                case 1:
                    returnValue = "Alabama";
                    break;

                case 2:
                    returnValue = "Alaska";
                    break;
            }
            return returnValue;
        }

        private string GetStateName(string stateAbbreviation)
        {
            string returnValue = string.Empty;
            switch (stateAbbreviation.ToUpper())
            {
                case "AZ":
                    returnValue = "Arizona";
                    break;

                case "AR":
                    returnValue = "Arizona";
                    break;
            }
            return returnValue;
        }


        private void StringExample()
        {
            string firstName = "Jim";
            string middleName;

            middleName = "Eugene";

            //modify
            firstName = "James";

            string firstLetter = firstName.Substring(0, 1);

            int myAge = 30;
            DateTime myBirthdate = new DateTime(1990, 4, 1);

            lblDisplayMessage.Text = "Name: " + firstLetter + " " + middleName;
            lblDisplayMessage.Text = "Name: " + myAge + " " + middleName;
            lblDisplayMessage.Text = "Name: " + myBirthdate.ToShortDateString() + " " + middleName;

            StringBuilder sb = new StringBuilder();

            sb.Append("My Name");

            lblDisplayMessage.Text = sb.ToString();

        }

        protected void PersonExample()
        {
            Person myFriend = new Person("John", "Miller", "Male");

            lblDisplayMessage.Text = myFriend.GetIdName();
        }

        private void InstructorExample()
        {
            Instructor myInstructor = new Instructor(1, "Fitness");

            myInstructor.InstructorId = 1;


            //       lblDisplayMessage1.Text = "Instructor: " + myInstructor.InstructorId;
        }

        private void EmailExample()
        {
            Email myEmail = new Email();
        }

        private void AbstractExample()
        {
            Person person = new Person();
            person.Id = 10;
            person.FirstName = "John";
            person.LastName = "Williams";

            person.Name = "John Wiliams";

            //           lblDisplayMessage1.Text = person.GetIdName();
        }

        private void CollectionExample()
        {
            //            #region Initializing Collection 01

            PersonCollection myList = new PersonCollection();
            //
            //            Person person01 = new Person();
            //            person01.FirstName = "Bob";
            //
            //            Person person02 = new Person();
            //            person02.FirstName = "Cathy";

            //            myList.Add(person01);
            //            myList.Add(person02);
            //
            //            StringBuilder sb = new StringBuilder();
            //
            //            foreach (Person item in myList)
            //            {
            //                sb.Append(item.FirstName + "<br>");
            //            }

            //            lblDisplayMessage2.Text = sb.ToString();

            //            #endregion



            //            #region Initializing Collection 02
            //            PersonCollection list02 = new PersonCollection();

            //            list02.Add(new Person() { FirstName = "Abby" });
            //            list02.Add(new Person() { FirstName = "Ben" });
            //            list02.Add(new Person() { FirstName = "Charlie" });

            //            StringBuilder output02 = new StringBuilder();

            //           foreach (Person item in list02)
            //            {
            //                output02.Append(item.FirstName + "<br>");
            //            }

            //            lblDisplayMessage2.Text = output02.ToString();

            //          #endregion
            //        }


            #region Initializing Collection 03
            PersonCollection list03 = new PersonCollection()
        {
            new Person { FirstName = "Michael" },
            new Person { FirstName = "Nathan" },
            new Person { FirstName = "Othello" },
            new Person { FirstName = "Patty" }
        };

            StringBuilder output03 = new StringBuilder();

            foreach (Person item in list03)
            {
                output03.Append(item.FirstName + "<br>");
            }

            lblDisplayMessage1.Text = output03.ToString();
        }

        #endregion

        private void ExceptionsExample()
        {
            string[] myArray = new string[] { "Ant", "Bee", "Cat" };

            try
            {
                //mnotes: purposeful exception
                lblDisplayMessage2.Text = myArray[5];
            }
            catch(IndexOutOfRangeException ex)
            {
                lblDisplayMessage2.Text = "Some error..." + ex.Message;
            }
            catch (Exception ex)
            {
                lblDisplayMessage2.Text = "There was an exception..." + ex.Message;
            }
            finally
            {
                //notes: excecute some code
                lblDisplayMessage2.Text = "Error Code...";
            }
        }

        }
    }