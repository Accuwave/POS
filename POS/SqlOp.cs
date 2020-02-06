using MySql.Data.MySqlClient;
using System;
using System.Data;
using System.Windows.Forms;

namespace POS
{
     public class SqlOp
    {
        #region variables
        readonly string conn = @"Server=localhost;Database=record;Uid=root;Pwd=root;";        
        #endregion

        public void InsertData(string[] data)
        {
            try
            {
                MySqlConnection con = new MySqlConnection(conn);
                con.Open();
                MySqlCommand cmd = con.CreateCommand();
                cmd.CommandText = @"INSERT INTO Register (com_id,Email_id,Password) VALUES ('" + data[0] + @"','" + data[1] + @"','" + data[2] + @"')";
                cmd.ExecuteNonQuery();
                con.Close();
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }

        public void CheckUser(string[] user, DataTable dt)
        {
            try
            {
                MySqlConnection con = new MySqlConnection(conn);
                con.Open();
                MySqlCommand cmd = con.CreateCommand();
                cmd.CommandText = @"SELECT * FROM register WHERE Email_Id='" + user[0] + @"' AND PASSWORD='" + user[1] + @"';";
                MySqlDataAdapter da = new MySqlDataAdapter { SelectCommand = cmd };
                da.Fill(dt);
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        } 

        public void ActiveCheck(string [] user, DataTable dt)
        {
            try
            {
                MySqlConnection con = new MySqlConnection(conn);
                con.Open();
                MySqlCommand cmd = con.CreateCommand();
                cmd.CommandText = @"SELECT * FROM register WHERE Email_Id='" + user[1] + @"'";
                MySqlDataAdapter da = new MySqlDataAdapter { SelectCommand = cmd };
                da.Fill(dt);
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }
    }
}
