using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using VelocityCoders.FitnessSchedule.Models;
using Susie.Common;


namespace VelocityCoders.FitnessSchedule.Models
{
    public class Person : BaseEntity<int>
    {
        private string _firstName;

        public string firstName
        {
            get { return _firstName; }
            set { _firstName = value; }
        }

        public int PersonId { get; set; }
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public string DisplayFirstName { get; set; }
        public string Gender { get; set; }
             

    public Person()
        {

        }

     public Person(string firstName, string lastName)
        {
            this.FirstName = firstName;
            this.LastName = lastName;
        }

    public Person(string firstName, string lastName, string gender)
        {
 //           this.firstName = DisplayFirstName;
            this.Gender = gender;
        }
    public override string Name
        {
            get
            {
                return this.FirstName + " " + this.LastName;
            }
            set
            {
                value = this.FirstName;
            }
 
        }

   public override string GetIdName()
        {
            return this.Id + " " + this.FirstName + " " + this.LastName;
        }

  public override string GetNameExample()
        {
            return "Return value from the person class";
        }

  public override string GetName()
        {
            return "From Person Class: " + this.FirstName;
        
        }
    }

}
    

