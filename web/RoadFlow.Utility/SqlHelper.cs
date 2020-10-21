using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace RoadFlow.Utility
{
    public class SqlHelper
    {
        string strCon = "Server=.;Database=RoadFlowWebForm;UID=sa;PWD=Jyxy_334";


        SqlConnection con;
        public void openConnection()
        {
            con = new SqlConnection(strCon);
            con.Open();
        }

        public DataSet getDataSet(string sql, string tableName)
        {
            DataSet ds = new DataSet();
            openConnection();
            SqlDataAdapter sda = new SqlDataAdapter(sql, con);
            sda.Fill(ds, tableName);
            this.closeConnection();
            return ds;
        }
        public DataSet getDataSet1(string sql, SqlParameter[] parameters)
        {
            DataSet ds = new DataSet();
            openConnection();
            SqlDataAdapter sda = new SqlDataAdapter(sql, con);
            if (parameters != null)
            {
                foreach (SqlParameter param in parameters)
                {
                    sda.SelectCommand.Parameters.Add(param);
                }
            }
            sda.Fill(ds);
            this.closeConnection();
            return ds;
        }

        public int sqlDelete(string sql)
        {
            openConnection();
            SqlCommand myCommand = new SqlCommand(sql, con);
            int i = myCommand.ExecuteNonQuery();
            this.closeConnection();
            return i;
        }

        public int sqlUpdate(string sql)
        {
            openConnection();
            SqlCommand myCommand = new SqlCommand(sql, con);
            int i = myCommand.ExecuteNonQuery();
            this.closeConnection();
            return i;
        }
        public int getCount(string sql)
        {
            openConnection();
            SqlCommand myCommand = new SqlCommand(sql, con);
            int i = Convert.ToInt32(myCommand.ExecuteScalar());
            this.closeConnection();
            return i;
        }
        public int executeScalar(string sql)
        {
            openConnection();
            SqlCommand myCommand = new SqlCommand(sql + ";SELECT @@Identity", con);
            int i = Convert.ToInt32(myCommand.ExecuteScalar());
            this.closeConnection();
            return i;
        }

        //返回字符串（邹军华）
        public string executeScalarString(string sql)
        {
            openConnection();
            SqlCommand myCommand = new SqlCommand(sql, con);
            string result = Convert.ToString(myCommand.ExecuteScalar());
            this.closeConnection();
            return result;
        }

        public int executeScalar1(string sql, SqlParameter[] parameters)
        {
            this.openConnection();
            SqlCommand myCommand = new SqlCommand(sql + ";SELECT @@Identity", con);
            if (parameters != null)
            {
                foreach (SqlParameter param in parameters)
                {
                    myCommand.Parameters.Add(param);
                }
            }
            int i = Convert.ToInt32(myCommand.ExecuteScalar());
            this.closeConnection();
            return i;
        }

        public int executeNonQuery(string sql, SqlParameter[] parameters)
        {
            this.openConnection();
            SqlCommand myCommand = new SqlCommand(sql, con);
            if (parameters != null)
            {
                foreach (SqlParameter param in parameters)
                {
                    myCommand.Parameters.Add(param);
                }
            }
            int i = Convert.ToInt32(myCommand.ExecuteNonQuery());
            this.closeConnection();
            return i;
        }

        public int executeNonQuery(string sql)
        {
            this.openConnection();
            SqlCommand myCommand = new SqlCommand(sql, con);
            int i = Convert.ToInt32(myCommand.ExecuteNonQuery());
            this.closeConnection();
            return i;
        }


        public void closeConnection()
        {
            if (con != null)
            {
                con.Close();
            }
        }


    }
}
