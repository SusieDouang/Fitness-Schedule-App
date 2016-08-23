using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using VelocityCoders.FitnessSchedule.Models;
using Susie.Common;


namespace VelocityCoders.FitnessSchedule.Models
{
    public class LocationFitnessClass : Base
    
    {

            public int LocationFitnessClassId { get; set; }
            public int LocationId { get; set; }
            public int FitnessClassId { get; set; }
            public string Description { get; set; }

    public LocationFitnessClass()
        {

        }

    public LocationFitnessClass(int LocationId, string Description)
        {
            this.LocationId = LocationId;
            this.Description = Description;
        }

     }





    
}
