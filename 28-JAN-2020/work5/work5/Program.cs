using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace work5
{
    class Program
    {
        public (int sum, int product) Math(int a, int b)
        {
            int c = a+b;
            int d = a*b;
            return(c,d);
        }

     static void Main(string[] args)
        {
         Program p = new Program();
         var(sum,product) = p.Math(10,10);
         Console.WriteLine("sum:" +sum);
         Console.WriteLine("product:" +product);
         Console.ReadLine();
        }
    }
}
