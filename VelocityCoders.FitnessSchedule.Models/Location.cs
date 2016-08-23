using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using VelocityCoders.FitnessSchedule.Models;
using Susie.Common;


namespace VelocityCoders.FitnessSchedule.Models
{
    public class Location : Base
    {
            public int LocationId { get; set; }
            public int StateId { get; set; }
            public int GymId { get; set; }
            public string LocationName { get; set; }
            public string Address01 { get; set; }
            public string Address02 { get; set; }
            public string City { get; set; }
            public int ZipCode { get; set; }
            public int ZipCodeProvider { get; set; }
      

    public Location()
        {

        }

    public Location(string LocationName, string City)
        {
            this.LocationName = LocationName;
            this.City = City;
        }


    }
}
