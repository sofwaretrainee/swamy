using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Configuration;
using DatabaseLayer;


namespace DatabaseLayer
{
    
         class DatabaseHandlerFactory
        {
            private ConnectionStringSettings connectionStringSettings;

            public DatabaseHandlerFactory(string connectionStringName)
            {
                connectionStringSettings = ConfigurationManager.ConnectionStrings[connectionStringName];
            }

            public IDatabaseHandler CreateDatabase()
            {
                IDatabaseHandler database = null;

                switch (connectionStringSettings.ProviderName.ToLower())
                {
                    case "system.data.sqlclient":
                        database = new SqlServerDataAccess(connectionStringSettings.ConnectionString);
                        break;
                    case "system.data.mysqlclient":
                        database = new MySqlDataAccess(connectionStringSettings.ConnectionString);
                        break;

                }

                return database;
            }

            public string GetProviderName()
            {
                return connectionStringSettings.ProviderName;
            }
        }
    }


