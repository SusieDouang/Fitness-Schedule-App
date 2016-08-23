using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using VelocityCoders.FitnessSchedule.Models;

namespace VelocityCoders.FitnessSchedule.Models
{
    public class EntityType
    {
            public int EntityTypeId { get; set; }
            public int EntitiyId { get; set; }
            public string EntityTypeName { get; set; }
            public string Description { get; set; }
     
    public EntityType()
        {
        }

    public EntityType(string EntityTypeName, string Description)
        {
            this.EntityTypeName = EntityTypeName;
            this.Description = Description;
        }

    }

}
