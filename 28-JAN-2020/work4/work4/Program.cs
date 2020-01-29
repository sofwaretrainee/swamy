using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace work4
{
    public enum Days:byte
    {
        Monday=1, Tuesday=2, Wednesday=3, Thursday=4, Friday=5
     }

    class Program
    {
        //public static  Days MeetingDays{get;set;} = Days.Monday;//
        Days a = Days.Monday;
        static void Main(string[] args)
        {
           
            var b = (Days)5;
            Console.WriteLine(b);
            Console.ReadLine();
        }
    }
}
