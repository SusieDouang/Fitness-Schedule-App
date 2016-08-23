using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using VelocityCoders.FitnessSchedule.Models;
using Susie.Common; 

namespace VelocityCoders.FitnessSchedule.Models
{
    public class Email : Base
    {
        public int EmailId { get; set; }
        public string EmailAddress { get; set; }
        public int InstructorId { get; set; }
        public int EntityTypedId { get; set; }

        public Email(string EmailAddress, int InstructorId)
        {
            this.EmailAddress = EmailAddress;
            this.InstructorId = InstructorId;
        }

        public Email()
        {
        
        }

    }
}
