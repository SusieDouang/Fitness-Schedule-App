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
    public class EntityTypeDAL
    {
        public static EntityTypeCollection GetCollection()
        {
            EntityTypeCollection tempList = null;
            using (SqlConnection myConnection = new SqlConnection(AppConfiguration.ConnectionString))
            {
                using (SqlCommand myCommand = new SqlCommand("usp_GetEntityType", myConnection))
                {
                    myCommand.CommandType = CommandType.StoredProcedure;
                    myCommand.Parameters.AddWithValue("@QueryId", SelectTypeEnums.GetCollection);

                    myConnection.Open();
                    using (SqlDataReader myReader = myCommand.ExecuteReader())
                    {
                        if (myReader.HasRows)
                        {
                            tempList = new EntityTypeCollection();
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

        private static EntityType FillDataRecord(IDataRecord myDataRecord)
        {
            EntityType myObject = new EntityType();

            myObject.EntityTypeId = myDataRecord.GetInt32(myDataRecord.GetOrdinal("EntityTypeId"));

            if (!myDataRecord.IsDBNull(myDataRecord.GetOrdinal("EntityTypeName")))
                myObject.EntityTypeName = myDataRecord.GetString(myDataRecord.GetOrdinal("EntityTypeName"));


            return myObject;

        }
    }
}
#endregion