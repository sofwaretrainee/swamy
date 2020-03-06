using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Collections.Concurrent;
using System.Data;
using DatabaseLayer;
using Models;
using System.Collections.Generic;


namespace BusinessLayer
{
    public class StudentFactory
    {
        public List<Models.Student> GetInfo()
        {
            List<Models.Student> result = new List<Models.Student>();

            var dbManager = new DBManager("connection");
            var parameters = new List<IDbDataParameter>();
            parameters.Add(dbManager.CreateParameter("@Event", "Select", DbType.String));
            var Info = dbManager.GetDataTable("StudentDetails_Proc", CommandType.StoredProcedure, parameters.ToArray());

            Models.Student element;

            if (Info != null)
            {
                for (int index = 0; index < Info.Rows.Count; index++)
                {
                    element = new Models.Student();
                    element.Id = Convert.ToInt32(Info.Rows[index]["student_id"].ToString());
                    element.Name = Info.Rows[index]["student_name"].ToString();
                    element.Gender = Info.Rows[index]["student_gender"].ToString();
                    element.PhoneNumber = Convert.ToInt64(Info.Rows[index]["student_phone"].ToString());
                    element.Marks = Convert.ToInt16(Info.Rows[index]["student_marks"].ToString());
                    element.Address = Info.Rows[index]["student_address"].ToString();
                    result.Add(element);
                }
            }
            return result;
        }

        public Student GetStudentById(int Id)
        {
            Student element = new Student();

            var dbManager = new DBManager("connection");
            var parameters = new List<IDbDataParameter>();
            parameters.Add(dbManager.CreateParameter("@Event", "SelectById", DbType.String));
            parameters.Add(dbManager.CreateParameter("@Student_id", Id, DbType.Int32));
            var Info = dbManager.GetDataTable("StudentDetails_Proc", CommandType.StoredProcedure, parameters.ToArray());

            element = new Models.Student();

            element.Id = Convert.ToInt32(Info.Rows[0]["student_id"].ToString());
            element.Name = Info.Rows[0]["student_name"].ToString();
            element.Gender = Info.Rows[0]["student_gender"].ToString();
            element.PhoneNumber = Convert.ToInt64(Info.Rows[0]["student_phone"].ToString());
            element.Marks = Convert.ToInt16(Info.Rows[0]["student_marks"].ToString());
            element.Address = Info.Rows[0]["student_address"].ToString();


            return element;
        }

        public void UpdateStudent(Student student)
        {
            var dbmanager = new DBManager("connection");
            var parameters = new List<IDbDataParameter>();

            parameters.Add(dbmanager.CreateParameter("@Event", "Update", DbType.String));
            parameters.Add(dbmanager.CreateParameter("@Student_id", student.Id, DbType.Int32));
            parameters.Add(dbmanager.CreateParameter("@Student_name", 50, student.Name, DbType.String));
            parameters.Add(dbmanager.CreateParameter("@Student_gender", student.Gender, DbType.String));
            parameters.Add(dbmanager.CreateParameter("@Student_phone", student.PhoneNumber, DbType.String));
            parameters.Add(dbmanager.CreateParameter("@Student_marks", student.Marks, DbType.String));
            parameters.Add(dbmanager.CreateParameter("@Student_address", student.Address, DbType.String));
            dbmanager.Update("StudentDetails_Proc", CommandType.StoredProcedure, parameters.ToArray());

        }

        public void DeleteStudent(int id)
        {
            Student result = new Student();
            var dbManager = new DBManager("connection");
            var parameters = new List<IDbDataParameter>();
            parameters.Add(dbManager.CreateParameter("@Event", "Delete", DbType.String));
            parameters.Add(dbManager.CreateParameter("@Student_id", id, DbType.Int32));
            dbManager.Delete("StudentDetails_Proc", CommandType.StoredProcedure, parameters.ToArray());

        }

        public void InsertStudent(Student student)
        {
            var dbManager = new DBManager("connection");
            var parameters = new List<IDbDataParameter>();

            parameters.Add(dbManager.CreateParameter("@Event", "Add", DbType.String));
            parameters.Add(dbManager.CreateParameter("@Student_name", student.Name, DbType.String));
            parameters.Add(dbManager.CreateParameter("@Student_gender", student.Gender, DbType.String));
            parameters.Add(dbManager.CreateParameter("@Student_phone", student.PhoneNumber, DbType.String));
            parameters.Add(dbManager.CreateParameter("@Student_marks", student.Marks, DbType.String));
            parameters.Add(dbManager.CreateParameter("@Student_address", student.Address, DbType.String));


            dbManager.Insert("StudentDetails_Proc", CommandType.StoredProcedure, parameters.ToArray());

        }

    }
}
