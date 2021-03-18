using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;

namespace webprogproject
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["kad"] = "";
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string kad = TextBox1.Text;
            string sifre = TextBox2.Text;
            OleDbConnection user_conn = new OleDbConnection("Provider=Microsoft.Jet.Oledb.4.0;Data Source=" + Server.MapPath("App_Data\\ogrenci.mdb"));
            string str = "SELECT * FROM kullanicilar WHERE kad ='" + kad + "' and sifre ='" + sifre + "'";
            
            OleDbCommand komut = new OleDbCommand(str, user_conn);
            user_conn.Open();

            OleDbDataReader oku = komut.ExecuteReader();
            if (oku.Read())
            {
                Label1.Visible = false;
                Session["kad"] = oku["kad"].ToString();
                Response.Redirect("Default.aspx");
            }
            else
            {
                Label1.Visible = true;
                Label1.Text = "LOGIN FAILED!";
            }

        }
    }
}