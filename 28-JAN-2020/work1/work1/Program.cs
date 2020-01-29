using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace work1
{
    class Program
    {
        public void Add(int a, int b)
        {
            int c = (a + b);
            Console.WriteLine(" The addition of two number is:" + c);
        }

        public static void Display()
        {
            Console.WriteLine("Start Reading C#");
        }

       static void Main(string[] args)
        {
           Program p= new Program();
           p.Add(10,10);
          Program.Display();
          Console.ReadLine();





        }
    }
}
