using System;
namespace work2
{


    struct Program2
    {
        int s;
        public void Display()
        {
            Console.WriteLine("The value of s is:" +s);
        }
    

        static void Main(string[] args)
        {
            Program2 p2 = new Program2();
            p2.s=16;
            p2.Display();
            Console.ReadLine();
        }

        
        }
}
    



    


