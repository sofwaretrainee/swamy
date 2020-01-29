using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Delegate
{
    public delegate void AddDelegate(int a, int b);
    public delegate string HelloDelegate(string name);

    class Program
    {
        public void Add(int a, int b)
        {
            Console.WriteLine(a + b);
        }

        public static string Hello(string name)
        {
            return "hi" + name;
        }

        static void Main(string[] args)
        {
            Program p = new Program();
            AddDelegate a = new AddDelegate(p.Add);
            a.Invoke(10, 10);

            HelloDelegate h = new HelloDelegate(Hello);
            string str = h.Invoke("swamy");
            Console.WriteLine(str);
            Console.ReadLine();



        }
    }
}

