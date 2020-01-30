using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SingletonPattern
{
    class TestLogger
    {
        static void Main()
        {
            Console.WriteLine("---SingletonPattern----");
            Logger obj1 = Logger.Instance;
            Logger obj2 = Logger.Instance;
            Console.WriteLine(obj1.GetHashCode());
            Console.WriteLine(obj2.GetHashCode());
            Console.WriteLine(obj1);
            Console.WriteLine(obj2);
            Console.ReadLine();

            Console.WriteLine("---Non SingletonPattern----");
           TestLogger obj3 = new TestLogger();
            TestLogger obj4 = new TestLogger();
            Console.WriteLine(obj3.GetHashCode());
            Console.WriteLine(obj4.GetHashCode());
            Console.ReadLine();





        }
    }
}
