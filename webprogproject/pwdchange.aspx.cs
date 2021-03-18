using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;


namespace webprogproject
{
    public partial class pwdchange : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string tobeupdated = Session["kad"].ToString();
            string pwd = TextBox1.Text;
            string updatestring = "Update [kullanicilar] Set sifre = '" + pwd + "' where kad = '" + tobeupdated + "'";
            if(TextBox1.Text == TextBox2.Text)
            {
                OleDbConnection user_conn = new OleDbConnection("Provider=Microsoft.Jet.Oledb.4.0;Data Source=" + Server.MapPath("App_Data\\ogrenci.mdb"));
                OleDbCommand updateQuery = new OleDbCommand(updatestring);
                updateQuery.Connection = user_conn;
                user_conn.Open();
                updateQuery.ExecuteNonQuery();
                user_conn.Close();
            }
        }
    }
}