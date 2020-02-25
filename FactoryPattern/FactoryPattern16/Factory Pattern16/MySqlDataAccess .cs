using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using MySql.Data.MySqlClient;

using System.Data;


namespace Factory_Pattern16
{
    public class MySqlDataAccess  : IDatabaseHandler
    {


        private string ConnectionString { get; set; }

        public MySqlDataAccess(string connectionString)
        {
            ConnectionString = connectionString;
        }
        public IDbConnection CreateConnection()
        {
            return new MySqlConnection(ConnectionString);

        }
        public void CloseConnection(IDbConnection connection)
        {
            var con = (MySqlConnection)connection;
            con.Close();
            con.Dispose();
        }
        public IDataAdapter CreateAdapter(IDbCommand command)
        {
            return new MySqlDataAdapter((MySqlCommand)command);
        }
        public IDbCommand CreateCommand(string commandText, CommandType commandType, IDbConnection connection)
        {
            return new MySqlCommand
            {
                CommandText = commandText,
                Connection = (MySqlConnection)connection,
                CommandType = commandType

            };
        }
        public IDbDataParameter CreateParameter(IDbCommand command)
        {
            MySqlCommand Sqlcommand = (MySqlCommand)command;
            return Sqlcommand.CreateParameter();
        }
    }
}