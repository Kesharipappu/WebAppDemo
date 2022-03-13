using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace WebAppDemo.DatabaseWork
{
    public partial class AddUser : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("server = LAPTOP - 1OJVG9F2;database = pgdacsepdb; uid = sa; pwd = 123");
            String insertQry = "insert into user_master values('"+txtUserName.Text+"','"+txtPassword.Text+"','"+txtMobile.Text+")";
            SqlCommand cmd = new SqlCommand(insertQry, con);
            con.Open();
            int res=cmd.ExecuteNonQuery();
            if (res > 0)
            {
                Response.Write("User Details saved successfully");
            }
            con.Close();

        }
    }
}