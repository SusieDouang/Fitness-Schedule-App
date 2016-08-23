using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using VelocityCoders.FitnessSchedule.Models;

namespace VelocityCoders.FitnessSchedule.Models
{
    public class Entity
    {
       public int EntityId { get; set; }
       public string EntityName { get; set; }
       public string Description { get; set; }
    
    public Entity()
        {

        }

    public Entity(string EntityName, string Description)
        {
            this.EntityName = EntityName;
            this.Description = Description;
        }
   




    }
}
