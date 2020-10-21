using System;
using System.Linq;
using System.Collections.Generic;
using System.Text;
using System.Data;
using System.Data.SqlClient;

namespace RoadFlow.Data.MSSQL
{
    public class Directory: RoadFlow.Data.Interface.IDirectory
    {
        private DBHelper dbHelper = new DBHelper();
        public Directory()
        {
        }
        public int Add(RoadFlow.Data.Model.Directory model)
        {
            string sql = @"INSERT INTO Directory
				(ID,ParentID,Title,Quantity,Unit,ConstructionCost,InstallCost,DeviceCost,OtherCost,Quota,Code,Value,Note,Other,Sort,SNumber) 
				VALUES(@ID,@ParentID,@Title,@Quantiy,@Unit,@ConstructionCost,@InstallCost,@DeviceCost,@OtherCost,@Quota,@Code,@Value,@Note,@Other,@Sort,@SNumber)";
            SqlParameter[] parameters = new SqlParameter[]{
                new SqlParameter("@ID", SqlDbType.UniqueIdentifier, -1){ Value = model.ID },
                new SqlParameter("@ParentID", SqlDbType.UniqueIdentifier, -1){ Value = model.ParentID },
                new SqlParameter("@Title", SqlDbType.NVarChar, -1){ Value = model.Title },
                new SqlParameter("@Quantiy", SqlDbType.Decimal){ Value = model.Quantity },
                model.Unit == null ? new SqlParameter("@Unit", SqlDbType.VarChar, 500) { Value = DBNull.Value } : new SqlParameter("@Unit", SqlDbType.VarChar, 500) { Value = model.Unit },
                new SqlParameter("@ConstructionCost", SqlDbType.Decimal){ Value = model.ConstructionCost },
                new SqlParameter("@InstallCost", SqlDbType.Decimal){ Value = model.InstallCost },
                new SqlParameter("@DeviceCost", SqlDbType.Decimal){ Value = model.DeviceCost },
                new SqlParameter("@OtherCost", SqlDbType.Decimal){ Value = model.OtherCost },
                new SqlParameter("@Quota", SqlDbType.Decimal){ Value = model.Quota },
                new SqlParameter("@SNumber", SqlDbType.NVarChar, -1){ Value = model.SNumber},
                model.Code == null ? new SqlParameter("@Code", SqlDbType.VarChar, 500) { Value = DBNull.Value } : new SqlParameter("@Code", SqlDbType.VarChar, 500) { Value = model.Code },
                model.Value == null ? new SqlParameter("@Value", SqlDbType.VarChar, -1) { Value = DBNull.Value } : new SqlParameter("@Value", SqlDbType.VarChar, -1) { Value = model.Value },
                model.Note == null ? new SqlParameter("@Note", SqlDbType.VarChar, -1) { Value = DBNull.Value } : new SqlParameter("@Note", SqlDbType.VarChar, -1) { Value = model.Note },
                model.Other == null ? new SqlParameter("@Other", SqlDbType.VarChar, -1) { Value = DBNull.Value } : new SqlParameter("@Other", SqlDbType.VarChar, -1) { Value = model.Other },
                new SqlParameter("@Sort", SqlDbType.Int, -1){ Value = model.Sort }
            };
            return dbHelper.Execute(sql, parameters);
        }
        /// <summary>
        /// 更新记录
        /// </summary>
        /// <param name="model">RoadFlow.Data.Model.Directory实体类</param>
        public int Update(RoadFlow.Data.Model.Directory model)
        {
            string sql = @"UPDATE Directory SET 
				ParentID=@ParentID,Title=@Title,Quantity=@Quantiy,Unit=@Unit,ConstructionCost=@ConstructionCost,InstallCost=@InstallCost,DeviceCost=@DeviceCost,OtherCost=@OtherCost,Quota=@Quota,Code=@Code,Value=@Value,Note=@Note,Other=@Other,Sort=@Sort
				WHERE ID=@ID";
            SqlParameter[] parameters = new SqlParameter[]{
                new SqlParameter("@ParentID", SqlDbType.UniqueIdentifier, -1){ Value = model.ParentID },
                new SqlParameter("@Title", SqlDbType.NVarChar, -1){ Value = model.Title },
                new SqlParameter("@Quantiy", SqlDbType.Decimal){ Value = model.Quantity },
                model.Unit == null ? new SqlParameter("@Unit", SqlDbType.VarChar, 500) { Value = DBNull.Value } : new SqlParameter("@Unit", SqlDbType.VarChar, 500) { Value = model.Unit },
                new SqlParameter("@ConstructionCost", SqlDbType.Decimal){ Value = model.ConstructionCost },
                new SqlParameter("@InstallCost", SqlDbType.Decimal){ Value = model.InstallCost },
                new SqlParameter("@DeviceCost", SqlDbType.Decimal){ Value = model.DeviceCost },
                new SqlParameter("@OtherCost", SqlDbType.Decimal){ Value = model.OtherCost },
                new SqlParameter("@Quota", SqlDbType.Decimal){ Value = model.Quota },
                model.Code == null ? new SqlParameter("@Code", SqlDbType.VarChar, 500) { Value = DBNull.Value } : new SqlParameter("@Code", SqlDbType.VarChar, 500) { Value = model.Code },
                model.Value == null ? new SqlParameter("@Value", SqlDbType.VarChar, -1) { Value = DBNull.Value } : new SqlParameter("@Value", SqlDbType.VarChar, -1) { Value = model.Value },
                model.Note == null ? new SqlParameter("@Note", SqlDbType.VarChar, -1) { Value = DBNull.Value } : new SqlParameter("@Note", SqlDbType.VarChar, -1) { Value = model.Note },
                model.Other == null ? new SqlParameter("@Other", SqlDbType.VarChar, -1) { Value = DBNull.Value } : new SqlParameter("@Other", SqlDbType.VarChar, -1) { Value = model.Other },
                new SqlParameter("@Sort", SqlDbType.Int, -1){ Value = model.Sort },
                new SqlParameter("@ID", SqlDbType.UniqueIdentifier, -1){ Value = model.ID }
            };
            return dbHelper.Execute(sql, parameters);
        }
        /// <summary>
        /// 删除记录
        /// </summary>
        public int Delete(Guid id)
        {
            string sql = "DELETE FROM Directory WHERE ID=@ID";
            SqlParameter[] parameters = new SqlParameter[]{
                new SqlParameter("@ID", SqlDbType.UniqueIdentifier){ Value = id }
            };
            return dbHelper.Execute(sql, parameters);
        }
        /// <summary>
        /// 将DataRedar转换为List
        /// </summary>
        private List<RoadFlow.Data.Model.Directory> DataReaderToList(SqlDataReader dataReader)
        {
            List<RoadFlow.Data.Model.Directory> List = new List<RoadFlow.Data.Model.Directory>();
            RoadFlow.Data.Model.Directory model = null;
            while (dataReader.Read())
            {
                model = new RoadFlow.Data.Model.Directory();
                model.ID = dataReader.GetGuid(0);
                model.ParentID = dataReader.GetGuid(1);
                model.Title = dataReader.GetString(2);
                if (!dataReader.IsDBNull(3))
                    model.Code = dataReader.GetString(3);
                if (!dataReader.IsDBNull(4))
                    model.Value = dataReader.GetString(4);
                if (!dataReader.IsDBNull(5))
                    model.Note = dataReader.GetString(5);
                if (!dataReader.IsDBNull(6))
                    model.Other = dataReader.GetString(6);
                model.Sort = dataReader.GetInt32(7);
                if (!dataReader.IsDBNull(8))
                    model.Quantity = dataReader.GetDecimal(8);
                if (!dataReader.IsDBNull(9))
                    model.Unit = dataReader.GetString(9);
                if (!dataReader.IsDBNull(10))
                    model.ConstructionCost = dataReader.GetDecimal(10);
                if (!dataReader.IsDBNull(11))
                    model.InstallCost = dataReader.GetDecimal(11);
                if (!dataReader.IsDBNull(12))
                    model.DeviceCost = dataReader.GetDecimal(12);
                if (!dataReader.IsDBNull(13))
                    model.OtherCost = dataReader.GetDecimal(13);
                if (!dataReader.IsDBNull(14))
                    model.Quota = dataReader.GetDecimal(14);
                if (!dataReader.IsDBNull(15))
                    model.SNumber = dataReader.GetString(15);
                List.Add(model);
            }
            return List;
        }
        /// <summary>
        /// 查询所有记录
        /// </summary>
        public List<RoadFlow.Data.Model.Directory> GetAll()
        {
            string sql = "SELECT * FROM Directory";
            SqlDataReader dataReader = dbHelper.GetDataReader(sql);
            List<RoadFlow.Data.Model.Directory> List = DataReaderToList(dataReader);
            dataReader.Close();
            return List;
        }

        /// <summary>
        /// 查询所有顶层节点数据
        /// </summary>
        public List<RoadFlow.Data.Model.Directory> GetBySnumber()
        {
            string sql = "SELECT * FROM Directory WHERE SNumber = '1'";
            SqlDataReader dataReader = dbHelper.GetDataReader(sql);
            List<RoadFlow.Data.Model.Directory> List = DataReaderToList(dataReader);
            dataReader.Close();
            return List;
        }

        /// <summary>
        /// 查询所有顶层节点数据
        /// </summary>
        public List<RoadFlow.Data.Model.Directory> GetByTitle()
        {
            string sql = "SELECT * FROM Directory WHERE Title = '深圳1号线'";
            SqlDataReader dataReader = dbHelper.GetDataReader(sql);
            List<RoadFlow.Data.Model.Directory> List = DataReaderToList(dataReader);
            dataReader.Close();
            return List;
        }



        /// <summary>
        /// 查询记录数
        /// </summary>
        public long GetCount()
        {
            string sql = "SELECT COUNT(*) FROM Directory";
            long count;
            return long.TryParse(dbHelper.GetFieldValue(sql), out count) ? count : 0;
        }
        /// <summary>
        /// 根据主键查询一条记录
        /// </summary>
        public RoadFlow.Data.Model.Directory Get(Guid id)
        {
            string sql = "SELECT * FROM Directory WHERE ID=@ID";
            SqlParameter[] parameters = new SqlParameter[]{
                new SqlParameter("@ID", SqlDbType.UniqueIdentifier){ Value = id }
            };
            SqlDataReader dataReader = dbHelper.GetDataReader(sql, parameters);
            List<RoadFlow.Data.Model.Directory> List = DataReaderToList(dataReader);
            dataReader.Close();
            return List.Count > 0 ? List[0] : null;
        }

        /// <summary>
        /// 根据主键查询一条记录
        /// </summary>
        public RoadFlow.Data.Model.Directory GetParentIDAndTitle(Guid id,string title)
        {
            string sql = "SELECT * FROM Directory WHERE ParentID=@ParentID AND Title=@Title ";
            SqlParameter[] parameters = new SqlParameter[]{
                new SqlParameter("@ParentID", SqlDbType.UniqueIdentifier){ Value = id },
                new SqlParameter("@Title", SqlDbType.VarChar){ Value = title }
            };
            SqlDataReader dataReader = dbHelper.GetDataReader(sql, parameters);
            List<RoadFlow.Data.Model.Directory> List = DataReaderToList(dataReader);
            dataReader.Close();
            return List.Count > 0 ? List[0] : null;
        }

        /// <summary>
        /// 查询根记录
        /// </summary>
        public RoadFlow.Data.Model.Directory GetRoot()
        {
            string sql = "SELECT * FROM Directory WHERE ParentID=@ParentID";
            SqlParameter[] parameters = new SqlParameter[]{
                new SqlParameter("@ParentID", SqlDbType.UniqueIdentifier){ Value = Guid.Empty }
            };
            SqlDataReader dataReader = dbHelper.GetDataReader(sql, parameters);
            List<RoadFlow.Data.Model.Directory> List = DataReaderToList(dataReader);
            dataReader.Close();
            return List.Count > 0 ? List[0] : null;
        }

        /// <summary>
        /// 查询下级记录
        /// </summary>
        public List<RoadFlow.Data.Model.Directory> GetChilds(Guid id)
        {
            string sql = "SELECT * FROM Directory WHERE ParentID=@ParentID ORDER BY SNumber";
            SqlParameter[] parameters = new SqlParameter[]{
                new SqlParameter("@ParentID", SqlDbType.UniqueIdentifier){ Value = id }
            };
            SqlDataReader dataReader = dbHelper.GetDataReader(sql, parameters);
            List<RoadFlow.Data.Model.Directory> List = DataReaderToList(dataReader);
            dataReader.Close();
            return List;
        }

        /// <summary>
        /// 得到所有直接下级
        /// </summary>
        /// <param name="id"></param>
        /// <param name="fromCache">是否使用缓存</param>
        /// <returns></returns>
        public List<RoadFlow.Data.Model.Directory> GetFirstChilds(Guid id)
        {
            string sql = "SELECT * FROM Directory WHERE ParentID=@ParentID ORDER BY Sort";
            SqlParameter[] parameters = new SqlParameter[]{
                new SqlParameter("@ParentID", SqlDbType.UniqueIdentifier){ Value = id }
            };
            SqlDataReader dataReader = dbHelper.GetDataReader(sql, parameters);
            List<RoadFlow.Data.Model.Directory> List = DataReaderToList(dataReader);
            dataReader.Close();
            return List;
        }

        /// <summary>
        /// 查询下级记录
        /// </summary>
        public List<RoadFlow.Data.Model.Directory> GetChilds(string code)
        {
            string sql = "SELECT * FROM Directory WHERE ParentID=(SELECT ID FROM Directory WHERE Code=@Code) ORDER BY Sort";
            SqlParameter[] parameters = new SqlParameter[]{
                new SqlParameter("@Code", SqlDbType.VarChar){ Value = code }
            };
            SqlDataReader dataReader = dbHelper.GetDataReader(sql, parameters);
            List<RoadFlow.Data.Model.Directory> List = DataReaderToList(dataReader);
            dataReader.Close();
            return List;
        }

        /// <summary>
        /// 查询上级记录
        /// </summary>
        public RoadFlow.Data.Model.Directory GetParent(Guid id)
        {
            string sql = "SELECT * FROM Directory WHERE ID=(SELECT ParentID FROM Directory WHERE ID=@ID)";
            SqlParameter[] parameters = new SqlParameter[]{
                new SqlParameter("@ID", SqlDbType.UniqueIdentifier){ Value = id }
            };
            SqlDataReader dataReader = dbHelper.GetDataReader(sql, parameters);
            List<RoadFlow.Data.Model.Directory> List = DataReaderToList(dataReader);
            dataReader.Close();
            return List.Count > 0 ? List[0] : null;
        }

        /// <summary>
        /// 是否包含下级记录
        /// </summary>
        public bool HasChilds(Guid id)
        {
            string sql = "SELECT ID FROM Directory WHERE ParentID=@ParentID";
            SqlParameter[] parameters = new SqlParameter[]{
                new SqlParameter("@ParentID", SqlDbType.UniqueIdentifier){ Value = id }
            };
            SqlDataReader dataReader = dbHelper.GetDataReader(sql, parameters);
            bool has = dataReader.HasRows;
            dataReader.Close();
            return has;
        }

        /// <summary>
        /// 得到最大排序
        /// </summary>
        public int GetMaxSort(Guid id)
        {
            string sql = "SELECT MAX(Sort)+1 FROM Directory WHERE ParentID=@ParentID";
            SqlParameter[] parameters = new SqlParameter[]{
                new SqlParameter("@ParentID", SqlDbType.UniqueIdentifier){ Value = id }
            };
            string max = dbHelper.GetFieldValue(sql, parameters);
            int max1;
            return max.IsInt(out max1) ? max1 : 1;
        }

        /// <summary>
        /// 更新排序
        /// </summary>
        public int UpdateSort(Guid id, int sort)
        {
            string sql = "UPDATE Directory SET Sort=@Sort WHERE ID=@ID";
            SqlParameter[] parameters = new SqlParameter[]{
                new SqlParameter("@Sort", SqlDbType.Int){ Value = sort },
                new SqlParameter("@ID", SqlDbType.UniqueIdentifier){ Value = id }
            };
            return dbHelper.Execute(sql, parameters);
        }

        /// <summary>
        /// 根据代码查询一条记录
        /// </summary>
        public RoadFlow.Data.Model.Directory GetByCode(string code)
        {
            string sql = "SELECT * FROM Directory WHERE Code=@Code";
            SqlParameter[] parameters = new SqlParameter[]{
                new SqlParameter("@Code", SqlDbType.VarChar){ Value = code }
            };
            SqlDataReader dataReader = dbHelper.GetDataReader(sql, parameters);
            List<RoadFlow.Data.Model.Directory> List = DataReaderToList(dataReader);
            dataReader.Close();
            return List.Count > 0 ? List[0] : null;
        }
    }
}
