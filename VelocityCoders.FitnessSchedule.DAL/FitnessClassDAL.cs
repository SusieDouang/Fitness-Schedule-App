using System;
using System.Data;
using System.Data.SqlClient;
using VelocityCoders.FitnessSchedule.Models.Enums;
using VelocityCoders.FitnessSchedule.Models.Collections;
using VelocityCoders.FitnessSchedule.Models;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace VelocityCoders.FitnessSchedule.DAL
{
    #region SELECT

    public class FitnessClassDAL
    {
        public static FitnessClassCollection GetCollection()
        {
            FitnessClassCollection tempList = null;
            using (SqlConnection myConnection = new SqlConnection(AppConfiguration.ConnectionString))
            {
                using (SqlCommand myCommand = new SqlCommand("usp_GetFitnessClass", myConnection))
                {
                    myCommand.CommandType = CommandType.StoredProcedure;
                    myCommand.Parameters.AddWithValue("@QueryId", SelectTypeEnums.GetCollection);

                    myConnection.Open();
                    using (SqlDataReader myReader = myCommand.ExecuteReader())
                    {
                        if (myReader.HasRows)
                        {
                            tempList = new FitnessClassCollection();
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

        #region HELPER METHODS

        private static FitnessClass FillDataRecord(IDataRecord myDataRecord)
        {
            FitnessClass myObject = new FitnessClass();

            myObject.FitnessClassId = myDataRecord.GetInt32(myDataRecord.GetOrdinal("FitnessClassId"));

            if (!myDataRecord.IsDBNull(myDataRecord.GetOrdinal("FitnessClassName")))
                myObject.FitnessClassName = myDataRecord.GetString(myDataRecord.GetOrdinal("FitnessClassName"));

            return myObject;

        }
    }
}
#endregion
    
