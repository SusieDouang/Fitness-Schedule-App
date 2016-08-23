using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace VelocityCoders.FitnessSchedule.Models
{
    public class Student : Person
    {
        public DateTime JoinDate { get; set; }

        public string GetFullInfo()
        {
            return "Student " + base.Name + " : " + this.JoinDate.ToShortDateString();
        }
    }
}
