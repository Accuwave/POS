using MySql.Data.MySqlClient;
using System;
using System.Data;
using System.Windows.Forms;

namespace POS
{
    class SqlOp
    {
        #region variables
        readonly string conn = @"Server=localhost;Database=record;Uid=root;Pwd=root;";        
        readonly string cn= @"Data Source=198.24.149.108;Initial Catalog = db_daycartonline; Persist Security Info=True;User ID = user_daycart; Password=Foq11$8r";
        readonly string c = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\userpc\source\repos\POS\POS\NewData.mdf;Integrated Security=True";
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
