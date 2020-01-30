using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace FactoryPattern
{
    public class CalucalateFactory
    {
      public Icalucalate GetCalucalation(string type)
        {
            Icalucalate obj = null;

            if(type.ToLower().Equals("add"))
            {
                obj = new Add();
            }

          else if (type.ToLower().Equals("subtract"))
            {
                obj = new Subtract();
            }

            else if (type.ToLower().Equals("divide"))
            {
                obj = new Divide();
            }
            else
            {
                Console.WriteLine("we donot do that");
            }
            return obj;

        }
    }
}
