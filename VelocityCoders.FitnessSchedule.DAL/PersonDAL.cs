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
using VelocityCoders.FitnessSchedule.DAL;

namespace VelocityCoders.FitnessSchedule.DAL
{
    #region SELECT

    public class PersonDAL
    {
        public static Person GetItem(int personId)
        {
            Person tempItem = null;

            using (SqlConnection myConnection = new SqlConnection(AppConfiguration.ConnectionString))
            {
                using (SqlCommand myCommand = new SqlCommand("usp_GetPerson", myConnection))
                {
                    myCommand.CommandType = CommandType.StoredProcedure;

                    myCommand.Parameters.AddWithValue("@QueryId", SelectTypeEnums.GetItem);
                    myCommand.Parameters.AddWithValue("@PersonId", personId);

                    myConnection.Open();
                    using (SqlDataReader myReader = myCommand.ExecuteReader())
                    {
                        if (myReader.Read())
                        
                            tempItem = FillDataRecord(myReader);
                        
                        myReader.Close();

                        return tempItem;
                    }
                }
            }
        }
        

        public static PersonCollection GetCollection()
        {
            PersonCollection tempList = null;
            using (SqlConnection myConnection = new SqlConnection(AppConfiguration.ConnectionString))
            {
                using (SqlCommand myCommand = new SqlCommand("usp_GetPerson", myConnection))
                {
                    myCommand.CommandType = CommandType.StoredProcedure;
                    myCommand.Parameters.AddWithValue("@QueryId", SelectTypeEnums.GetCollection);

                    myConnection.Open();
                    using (SqlDataReader myReader = myCommand.ExecuteReader())
                    {
                        if (myReader.HasRows)
                        {
                            tempList = new PersonCollection();
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

        private static Person FillDataRecord(IDataRecord myDataRecord)
        {
            Person myObject = new Person();

            myObject.PersonId = myDataRecord.GetInt32(myDataRecord.GetOrdinal("PersonId"));

            if (!myDataRecord.IsDBNull(myDataRecord.GetOrdinal("FirstName")))
                myObject.FirstName = myDataRecord.GetString(myDataRecord.GetOrdinal("FirstName"));
            if (!myDataRecord.IsDBNull(myDataRecord.GetOrdinal("LastName")))
                myObject.LastName = myDataRecord.GetString(myDataRecord.GetOrdinal("LastName"));
            if (!myDataRecord.IsDBNull(myDataRecord.GetOrdinal("DisplayFirstName")))
                myObject.DisplayFirstName = myDataRecord.GetString(myDataRecord.GetOrdinal("DisplayFirstName"));
            if (!myDataRecord.IsDBNull(myDataRecord.GetOrdinal("Gender")))
                myObject.Gender = myDataRecord.GetString(myDataRecord.GetOrdinal("Gender"));
            return myObject;
        }
        #endregion
    }
}


