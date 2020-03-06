using BusinessLayer;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using Model;

namespace MyWebApiMVC.Controllers
{
    
    public class HelloController : ApiController
    {

        [HttpGet]
        public List<Model.Student> GetStudentDetails()
        {
            StudentFactory s = new StudentFactory();
            List<Model.Student> list = new List<Model.Student>();
            list = s.GetInfo();
            return list;
        }

        [HttpGet]
        public Student GetStudentById(int id)
        {
            Student s1;
            StudentFactory s = new StudentFactory();
            s1 = s.GetStudentById(id);
            return s1;
        }

        [HttpPut]
        public void UpdateStudent(Student student)
        {
            StudentFactory s = new StudentFactory();

            s.UpdateStudent(student);
        }

        [HttpDelete]
        public bool DeleteStudent(int id)
        {
            StudentFactory s = new StudentFactory();
            s.DeleteStudent(id);
            return true;

        }

        [HttpPost]
        
        public bool InsertStudent(Student student)
       {
            StudentFactory s = new StudentFactory();
            s.InsertStudent(student);
            return true;
        }
        
    }
}
