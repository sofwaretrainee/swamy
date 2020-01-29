using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace LamdaExpression
{
    public delegate string Greeting(string name);
    class Program
    {
  static void Main(string[] args)
        {
            Greeting g = (name) =>
             {
                 return "hi" + name + "very Good Morning";
             };
       string str = g.Invoke("swamy");
       Console.WriteLine(str);
       Console.ReadLine();
    }
    }
}

