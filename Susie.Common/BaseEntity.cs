using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Susie.Common
{
    public abstract class BaseEntity<T>
    {
        //notes: concerete property (inherited by the subclass)
        public T Id { get; set; }

        //notes: abstract property
   public abstract string Name { get; set;}

        //notes: abstract method
    public abstract string GetIdName();

    public virtual string GetNameExample()
        {
            return "Name from base class";
        }
        public virtual string GetName()
        {
            return "From Person Class: ";
        }
        public virtual string PolyName()
        {
            return "From Base ";
        }
      
    }
}
