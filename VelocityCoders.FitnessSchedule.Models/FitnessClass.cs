using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using VelocityCoders.FitnessSchedule.Models;
using Susie.Common; 

namespace VelocityCoders.FitnessSchedule.Models
{
    public class FitnessClass : Base
    {
            public int FitnessClassId { get; set; }
            public string FitnessClassName { get; set; }
            public string Description { get; set; }
    
    public FitnessClass()
        {
        }

        public FitnessClass(int FitnessClassId, string FitnessClassName)
        {
            this.FitnessClassId = FitnessClassId;
            this.FitnessClassName = FitnessClassName;
            
        }
    }
}
