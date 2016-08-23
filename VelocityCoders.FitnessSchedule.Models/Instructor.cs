using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using VelocityCoders.FitnessSchedule.Models;
using Susie.Common;

namespace VelocityCoders.FitnessSchedule.Models
{
    public class Instructor : Person, IPerson
    {

        public Instructor()
        {
        }

        public int InstructorId { get; set; }
        public DateTime HireDate { get; set; }
        public DateTime TermDate { get; set; }
        public string Description { get; set; }
//        public int PersonId { get; set; }

        public Instructor(int InstructorId, string Description)
        {
            this.InstructorId = InstructorId;
            this.Description = Description;
        }

        public Instructor(int InstructorId, DateTime HireDate)
        {

            this.InstructorId = InstructorId;
            this.HireDate = HireDate;
        }
        public string GetFullInfo()
        {
            return "Instructor " + base.Name + " : " + this.HireDate.ToShortDateString();
        }
 
    }

}
