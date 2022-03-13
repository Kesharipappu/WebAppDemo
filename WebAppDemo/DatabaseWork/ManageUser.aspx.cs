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
    public partial class ManageUser : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("server = LAPTOP - 1OJVG9F2;database = pgdacsepdb; uid = sa; pwd = 123");
        DataSet ds;
        SqlCommand cmd;
        SqlDataAdapter adapter;
        SqlDataReader dtr;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSearch_click(object sender, EventArgs e)
        {
            //working with parameterized queries
            string searchQry = "select username,fullname,mobile from user_master where user_id=@uid";
            cmd=new SqlCommand(searchQry,con);
            //binding prameter values
            cmd.Parameters.AddWithValue("@id",txtUserId.Text);

            con.Open();
            //fetching data using DataReader
           dtr=cmd.ExecuteReader();

            //dtr.HasRows
            if (dtr.Read())
            {
                txtUserName.Text = dtr[0].ToString();
                txtFullName.Text = dtr[1].ToString(); 
                txtNum.Text = dtr[2].ToString();


            }
            else
            {
                Label1.Text = "No Record Found";
                Label1.ForeColor = System.Drawing.Color.Red;
            }
        }
    }
}