using DatabaseLayer;
using Models;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BusinessLayer
{
    public class StudentFactory
    {
        public List<Models.Student>  GetInfo()
        {
            List<Models.Student> result = new List<Models.Student>();

            var dbManager = new DBManager("connection");
            var parameters = new List<IDbDataParameter>();
            // parameters.Add(dbManager.CreateParameter("@Event", "Select", DbType.String));
            var Info = dbManager.GetDataTable("Select_Student", CommandType.StoredProcedure, parameters.ToArray());


            for (int index = 0; index < Info.Rows.Count; index++)
            {
                Models.Student element = new Models.Student();
                element.Id = Convert.ToInt32(Info.Rows[index]["student_id"].ToString());
                element.Name = Info.Rows[index]["studentFirst_Name"].ToString();
                element.Gender = Info.Rows[index]["student_Gender"].ToString();
                element.PhoneNumber = Convert.ToInt64(Info.Rows[index]["studentMobile_Number"].ToString());
               // element.Marks = Convert.ToInt16(Info.Rows[index]["student_marks"].ToString());
                element.Address = Info.Rows[index]["student_Address"].ToString();
                result.Add(element);
            }

            return result;
        }


        //    if (Info != null)
        //    {
        //        for (int index = 0; index < Info.Tables.Rows.Count; index++)
        //        {
        //            Model.Student element = new Model.Student();
        //            element.Id = Convert.ToInt32(Info.Tables.Rows[0]["student_id"].ToString());
        //            element.Name = Info.Tables[index].Rows[0]["student_name"].ToString();
        //            element.Gender = Info.Tables[index].Rows[0]["student_gender"].ToString();
        //            element.PhoneNumber = Convert.ToInt64(Info.Tables[index].Rows[0]["student_phone"].ToString());
        //            element.Marks = Convert.ToInt16(Info.Tables[index].Rows[0]["student_marks"].ToString());
        //            element.Address = Info.Tables[index].Rows[0]["student_address"].ToString();
        //            result.Add(element);
        //        }
        //    }
        //    return result;
        //}

        public Student GetStudentById(int Id)
        {


            var dbManager = new DBManager("connection");
            var parameters = new List<IDbDataParameter>();

            //  parameters.Add(dbManager.CreateParameter("@Event", "SelectById", DbType.String));
            parameters.Add(dbManager.CreateParameter("@Student_id", Id, DbType.Int32));
            var Info = dbManager.GetDataTable("SelectById", CommandType.StoredProcedure, parameters.ToArray());

            Student element = new Models.Student();

            element.Id = Convert.ToInt32(Info.Rows[0]["student_id"].ToString());
            element.Name = Info.Rows[0]["studentFirst_Name"].ToString();
            element.Gender = Info.Rows[0]["student_Gender"].ToString();
            element.PhoneNumber = Convert.ToInt64(Info.Rows[0]["studentMobile_Number"].ToString());
           // element.Marks = Convert.ToInt16(Info.Rows[0]["student_marks"].ToString());
            element.Address = Info.Rows[0]["student_Address"].ToString();


            return element;
        }

        public void UpdateStudent(Student student)
        {
            var dbmanager = new DBManager("connection");
            var parameters = new List<IDbDataParameter>();

            //parameters.Add(dbmanager.CreateParameter("@Event", "Update", DbType.String));
            parameters.Add(dbmanager.CreateParameter("@Student_id", student.Id, DbType.Int32));
            parameters.Add(dbmanager.CreateParameter("@StudentFirst_Name", 50, student.Name, DbType.String));
            parameters.Add(dbmanager.CreateParameter("@Student_Gender", student.Gender, DbType.String));
            parameters.Add(dbmanager.CreateParameter("@StudentMobile_Number", student.PhoneNumber, DbType.String));
        //    parameters.Add(dbmanager.CreateParameter("@Student_marks", student.Marks, DbType.String));
            parameters.Add(dbmanager.CreateParameter("@Student_Address", student.Address, DbType.String));
            dbmanager.Update("Update_Student", CommandType.StoredProcedure, parameters.ToArray());

        }

        public void DeleteStudent(int id)
        {

            var dbManager = new DBManager("connection");
            var parameters = new List<IDbDataParameter>();
            //  parameters.Add(dbManager.CreateParameter("@Event", "Delete", DbType.String));
            parameters.Add(dbManager.CreateParameter("@Student_id", id, DbType.Int32));
            dbManager.Delete("Delete_Student", CommandType.StoredProcedure, parameters.ToArray());

        }

        public void InsertStudent(Student student)
        {
            var dbManager = new DBManager("connection");
            var parameters = new List<IDbDataParameter>();

            //   parameters.Add(dbManager.CreateParameter("@Event", "Add", DbType.String));
            parameters.Add(dbManager.CreateParameter("@StudentFirst_Name", student.Name, DbType.String));
            parameters.Add(dbManager.CreateParameter("@Student_Gender", student.Gender, DbType.String));
            parameters.Add(dbManager.CreateParameter("@StudentMobile_Number", student.PhoneNumber, DbType.String));
            parameters.Add(dbManager.CreateParameter("@Student_marks", student.Marks, DbType.String));
            parameters.Add(dbManager.CreateParameter("@Student_Address", student.Address, DbType.String));

            dbManager.Insert("Add_Student", CommandType.StoredProcedure, parameters.ToArray());

        }
    }
}
