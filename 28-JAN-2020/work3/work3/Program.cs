using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace work3
{
    public delegate void AddNumbers(int a, int b);
    public delegate string HelloWorld(string name);




    class Program
    {
      public void Add(int a, int b)
        {
            Console.WriteLine(a + b);
        }

        public static string Hello(string name)
      {
          return "hello" +name;
      }

       static void Main(string[] args)
        {
            Program p = new Program();
            AddNumbers ad = new AddNumbers(p.Add);
            ad(16, 16);

            HelloWorld h = new HelloWorld(Program.Hello);
            h("swamy");
            Console.ReadLine();

         }
    }
}
