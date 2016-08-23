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
    public class InstructorDAL
    {


        public static InstructorCollection GetCollection()
        {
            InstructorCollection tempList = null;
            using (SqlConnection myConnection = new SqlConnection(AppConfiguration.ConnectionString))
            {
                using (SqlCommand myCommand = new SqlCommand("usp_GetInstructor", myConnection))
                {
                    myCommand.CommandType = CommandType.StoredProcedure;
                    myCommand.Parameters.AddWithValue("@QueryId", SelectTypeEnums.GetCollection);

                    myConnection.Open();
                    using (SqlDataReader myReader = myCommand.ExecuteReader())
                    {
                        if (myReader.HasRows)
                        {
                            tempList = new InstructorCollection();
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

        private static Instructor FillDataRecord(IDataRecord myDataRecord)
        {
            Instructor myObject = new Instructor();

            myObject.InstructorId = myDataRecord.GetInt32(myDataRecord.GetOrdinal("InstructorId"));

            if (!myDataRecord.IsDBNull(myDataRecord.GetOrdinal("HireDate")))
                myObject.HireDate = myDataRecord.GetDateTime(myDataRecord.GetOrdinal("HireDate"));

            if (!myDataRecord.IsDBNull(myDataRecord.GetOrdinal("Description")))
                myObject.Description = myDataRecord.GetString(myDataRecord.GetOrdinal("Description"));

            return myObject;

        }
    }
}
#endregion