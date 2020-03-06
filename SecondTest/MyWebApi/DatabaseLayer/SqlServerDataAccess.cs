﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

namespace DatabaseLayer
{
    public class SqlServerDataAccess : IDatabaseHandler
    {
         private string ConnectionString { get; set; }

       public SqlServerDataAccess(string connectionString)
       {
           ConnectionString = connectionString;
       }

       public IDbConnection CreateConnection()
       {
           return new SqlConnection(ConnectionString);
       }
       public void CloseConnection(IDbConnection connection)
       {
           var con = (SqlConnection)connection;
           con.Close();
           con.Dispose();
       }
       public IDataAdapter CreateAdapter(IDbCommand command)
       {
           return new SqlDataAdapter((SqlCommand)command);
       }
       public IDbCommand CreateCommand(string commandText, CommandType commandType, IDbConnection connection)
       {
           return new SqlCommand
           {
               CommandText = commandText,
               Connection = (SqlConnection)connection,
               CommandType = commandType,
             

           };

       }
       public IDbDataParameter CreateParameter(IDbCommand command)
       {
           SqlCommand Sqlcommand = (SqlCommand)command;
           return Sqlcommand.CreateParameter();
       }
   }
}