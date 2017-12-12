using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;

namespace HomePage
{
    public partial class Names : System.Web.UI.Page
    {
        public object OlebdConnaction { get; protected set; }

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button4_Click(object sender, EventArgs e)
        {
           
            OleDbConnection conn = new OleDbConnection(cmd);

            if (Conn.State!= ConectionState.open)
                {
                conn.open()
            }
           

        }
    }
}