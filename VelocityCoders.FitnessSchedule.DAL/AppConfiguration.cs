using System.Configuration;

namespace VelocityCoders.FitnessSchedule.DAL
{
    public static class AppConfiguration
    {
        #region PUBLIC PROPERTIES

        public static string ConnectionString
        {
            get
            {
                return ConfigurationManager.ConnectionStrings[ConnectionStringName].ConnectionString;
            }
        }
        public static string ConnectionStringName
        {
            get
            {
                return ConfigurationManager.AppSettings["ConnectionStringName"];
            }
        }

        #endregion
    }
}