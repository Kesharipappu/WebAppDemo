using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data; //For ConnectionState Enum
using System.Data.SqlClient;

namespace WebAppDemo.DatabaseWork
{
    public partial class DbConnection : System.Web.UI.Page
    {
       static SqlConnection con;
        String connectionString = "server=LAPTOP-1OJVG9F2;database=pgdacsepdb;uid=sa;pwd=123";
        // String connectionString = "server=LAPTOP-1OJVG9F2;database=pgdacsepd;integrated security=true";
        //ASP.Net page Life Cycle
        /*
        (i)   Page_PreInit 
        (ii)  Page_Init
        (iii) Page_Load
        (iv)  Page_Render
        (v)   Page_Unload ->For memory clean up

         */

        protected void Page_Init(object sender, EventArgs e)
        {
            Response.Write("Init called<br/>");

        }
        protected void Page_Load(object sender, EventArgs e)
        {

            Response.Write("Load called<br/>");
            if (!Page.IsPostBack)
            {
                Response.Write("inside if load called<br>");
                con = new SqlConnection(connectionString);
            }
           

        }
        protected void Page_PreInit(object sender, EventArgs e)
        {
            Response.Write("PreInit called<br/>");
        }
        //Conect With Database
        protected void Button1_Click(object sender, EventArgs e)
        {
            //con = new SqlConnection(connectionString);

            if (con.State==ConnectionState.Closed)
            {
                con.Open();
                Response.Write("<b>Connected With Database Server Successfully !!!</b>");
            }
            else
            {
                Response.Write("<b>Already Connected With Database !!!</b> ");
            }
            


        }
        //Disconnect from Database
        protected void Button2_Click(object sender, EventArgs e)
        {
            if (con.State == ConnectionState.Open)
            {
                con.Close();
                Response.Write("<b>DisConnected From Database Server Successfully !!!</b>");
            }
            else
            {
                Response.Write("<b>Already DisConnected From Database !!!</b> ");
            }

        }
        //check connection state
        protected void Button3_Click(object sender, EventArgs e)
        {
            if (con.State == ConnectionState.Open)
            {
               
                Response.Write("<b>Connection is Open !!!</b>");
            }
            else
            {
                Response.Write("<b>Connecction is Closed !!!</b>");
            }

        }
    }
}