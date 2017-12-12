using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
using System.Data;

namespace HomePage
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ClickO_Click(object sender, EventArgs e)
        {
            OleDbConnection conn = new OleDbConnection();
            conn.ConnectionString = @"Provider=Microsoft.Jet.OLEDB.4.0;" +
            @"Data Source=C:\\Users\\LUAYH\\Desktop\\Registeration\\Names.mdb;Persist Security Info=False";

                try
                {
                    conn.Open();
                    String Fname = TextBox1.Text.ToString();
                    String Lname = TextBox2.Text.ToString();
                    String gender = Text1.Text.ToString();
                    String ID_No = TextBox4.Text.ToString();
                    String Contry = TextBox5.Text.ToString();
                    String Addres = TextBox6.Text.ToString();
                    String phone = TextBox7.Text.ToString();
                    String Email = TextBox8.Text.ToString();
                    String About_You = TextBox9.Text.ToString();
                    String my_querry = "INSERT into Names([Fname], [Lname], [gender], [ID_No], [Contry], [Address], [Phone], [Email], [About_You]) Values(@Fname, @Lname, @gender, @ID_No, @Contry, @Address, @Phone, @Email, @About_You)";
               
                    OleDbCommand cmd = new OleDbCommand(my_querry, conn);
                    cmd.ExecuteNonQuery();
                }
                    catch(Exception ex)
                {
                    conn.Close();
                }       
               
            }
        }
    }
