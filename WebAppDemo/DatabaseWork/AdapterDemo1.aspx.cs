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
    public partial class AdapterDemo1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        //logic to fetch all users and display in gridview
        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("server = LAPTOP - 1OJVG9F2;database = pgdacsepdb; uid = sa; pwd = 123");
            DataSet ds = new DataSet();
            string qry = "select user_id,username,fullname,mobile from user_master";
            
            //initialize adapter with query and connection
            SqlDataAdapter adapter = new SqlDataAdapter(qry,con);
            //call adapter fill() method to get data from database and fill it into dataset
            adapter.Fill(ds);

            Label1.Text = "Total Record found:" + ds.Tables[0].Rows.Count;

           //Response.Write("<br/>Username:"+ds.Tables[0].Rows[0][1]);

            //Binding data with Gridview
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }
    }
}