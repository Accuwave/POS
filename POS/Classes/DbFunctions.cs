using System;
using MySql.Data.MySqlClient;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Data;

namespace POS.Classes
{
    public class DbFunctions
    {
        readonly MySqlConnection connection = new MySqlConnection(@"Server = localhost; Database=magnuswo_darul2;Uid=root;Pwd=root;");
        readonly MySqlDataAdapter mySqlDataAdapter = new MySqlDataAdapter();
        public void InsertUpdateData(string query)
        {
            try
            {
                OpenConnection();
                MySqlCommand cmd = connection.CreateCommand();
                cmd.CommandText = query;
                cmd.ExecuteNonQuery();
                CloseConnection();
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }

        public DataTable GetDataTable(string query)
        {
            OpenConnection();
            MySqlCommand cmd = connection.CreateCommand();
            cmd.CommandText = query;
            DataTable dt = new DataTable();
            mySqlDataAdapter.SelectCommand = cmd;
            mySqlDataAdapter.Fill(dt);            
            CloseConnection();
            return dt;
        }

        public void OpenConnection()
        {
            if (connection.State == System.Data.ConnectionState.Closed)
            {
                connection.Open();
            }
        }

        public void CloseConnection()
        {
            if (connection.State == System.Data.ConnectionState.Open)
            {
                connection.Close();
            }
        }
    }
}