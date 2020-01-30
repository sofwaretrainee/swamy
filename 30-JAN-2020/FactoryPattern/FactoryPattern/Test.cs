using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace FactoryPattern
{
    class Test
    {
        static void Main()
        {
            Console.WriteLine("enter the First number");
            string input = Console.ReadLine();
            double num1, num2;
            bool result = Double.TryParse(input, out num1);

            if(!result)
            {
                Console.WriteLine("please enter the number");
                return;
            }

            Console.WriteLine("enter second number");
            result = Double.TryParse(Console.ReadLine(), out num2);

            if(!result)
            {
                Console.WriteLine("please enter a number");
                return;
            }

            Console.WriteLine("enter Add, Subtract, Divide");
            CalucalateFactory factory = new CalucalateFactory();
            Icalucalate obj = factory.GetCalucalation(Console.ReadLine());
            obj.calucalate(num1, num2);
             Console.ReadLine();






        }
    }
}
