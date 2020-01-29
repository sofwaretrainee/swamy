using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Indexers
{
    class TestEmployee
    {
        static void Main(string[] args)
        {
            Employee emp = new Employee(1001, "swamy", "Engineer",22500,"Trainee Software Engineer","Banglore");

            Console.WriteLine("Eno:" +emp[0]);
            Console.WriteLine("Ename:" +emp[1]);
            Console.WriteLine("job:" + emp[2]);
            Console.WriteLine("Salary:" + emp[3]);
            Console.WriteLine("Dname:" + emp[4]);
            Console.WriteLine("Location:" + emp[5]);
            Console.ReadLine();

            emp[0] = 1002;
            emp[1] = "Rajshekar";

            Console.WriteLine("Eno:" + emp[0]);
            Console.WriteLine("Ename:" + emp[1]);
            Console.WriteLine("job:" + emp[2]);
            Console.WriteLine("Salary:" + emp[3]);
            Console.WriteLine("Dname:" + emp[4]);
            Console.WriteLine("Location:" + emp[5]);
            Console.ReadLine();

            
        }
    }
}
