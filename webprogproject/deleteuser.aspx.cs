using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;


namespace webprogproject
{
    public partial class deleteuser : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string delete = TextBox1.Text;
            string deletestring = "Delete from [kullanicilar] where kad = '" + delete + "'";
            OleDbConnection user_conn = new OleDbConnection("Provider=Microsoft.Jet.Oledb.4.0;Data Source=" + Server.MapPath("App_Data\\ogrenci.mdb"));
            OleDbCommand deletequery = new OleDbCommand(deletestring);
            deletequery.Connection = user_conn;
            user_conn.Open();
            deletequery.ExecuteNonQuery();
            user_conn.Close();
            if (Session["kad"].ToString() == delete)
            {
                Session["kad"] = "";
            }
            Response.Redirect("Login.aspx");
        }
    }
}