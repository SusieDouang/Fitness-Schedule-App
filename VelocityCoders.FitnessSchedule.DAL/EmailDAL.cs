using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;
using VelocityCoders.FitnessSchedule.Models;
using VelocityCoders.FitnessSchedule.Models.Collections;
using VelocityCoders.FitnessSchedule.Models.Enums;


namespace VelocityCoders.FitnessSchedule.DAL
{

    #region SELECT 
    public class EmailDAL
    {
        public static EmailCollection GetCollection()
        {
            EmailCollection tempList = null;
            using (SqlConnection myConnection = new SqlConnection(AppConfiguration.ConnectionString))
            {
                using (SqlCommand myCommand = new SqlCommand("usp_GetEmail", myConnection))
                {
                    myCommand.CommandType = CommandType.StoredProcedure;
                    myCommand.Parameters.AddWithValue("@QueryId", SelectTypeEnums.GetCollection);

                    myConnection.Open();
                    using (SqlDataReader myReader = myCommand.ExecuteReader())
                    {
                        if (myReader.HasRows)
                        {
                            tempList = new EmailCollection();
                            while (myReader.Read())
                            {
                                tempList.Add(FillDataRecord(myReader));
                            }
                            myReader.Close();
                        }
                    }
                }
            }
            return tempList;
        }

        #endregion

        #region     HELPER METHODS

        private static Email FillDataRecord(IDataRecord myDataRecord)
        {
            Email myObject = new Email();

            myObject.EmailId = myDataRecord.GetInt32(myDataRecord.GetOrdinal("EmailId"));

            if (!myDataRecord.IsDBNull(myDataRecord.GetOrdinal("EmailAddress")))
                myObject.EmailAddress = myDataRecord.GetString(myDataRecord.GetOrdinal("EmailAddress"));

            return myObject;

        }
    }
}
#endregion