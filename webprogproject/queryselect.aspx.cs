using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;


namespace webprogproject
{
    public partial class queryselect : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if(DropDownList1.SelectedItem.Text == "Username")
            {
                string kad = TextBox1.Text;
                OleDbConnection user_conn = new OleDbConnection("Provider=Microsoft.Jet.Oledb.4.0;Data Source=" + Server.MapPath("App_Data\\ogrenci.mdb"));
                string str = "SELECT kad,ad,soyad,bolumu,dogumtarihi,sehir FROM kullanicilar WHERE kad ='" + kad + "'";
                SqlDataSource1.SelectCommand = str;
                SqlDataSource1.DataBind();
                GridView1.DataSource = SqlDataSource1;
                GridView1.DataBind();
            }
            else if(DropDownList1.SelectedItem.Text == "Name")
            {
                string ad = TextBox1.Text;
                OleDbConnection user_conn = new OleDbConnection("Provider=Microsoft.Jet.Oledb.4.0;Data Source=" + Server.MapPath("App_Data\\ogrenci.mdb"));
                string str = "SELECT kad,ad,soyad,bolumu,dogumtarihi,sehir FROM kullanicilar WHERE ad like '" + ad + "'";
                SqlDataSource1.SelectCommand = str;
                SqlDataSource1.DataBind();
                GridView1.DataSource = SqlDataSource1;
                GridView1.DataBind();
            }
            else if (DropDownList1.SelectedItem.Text == "Surname")
            {
                string soyad = TextBox1.Text;
                OleDbConnection user_conn = new OleDbConnection("Provider=Microsoft.Jet.Oledb.4.0;Data Source=" + Server.MapPath("App_Data\\ogrenci.mdb"));
                string str = "SELECT kad,ad,soyad,bolumu,dogumtarihi,sehir FROM kullanicilar WHERE soyad like '" + soyad + "'";
                SqlDataSource1.SelectCommand = str;
                SqlDataSource1.DataBind();
                GridView1.DataSource = SqlDataSource1;
                GridView1.DataBind();
            }
            else if (DropDownList1.SelectedItem.Text == "Major")
            {
                string bolumu = TextBox1.Text;
                OleDbConnection user_conn = new OleDbConnection("Provider=Microsoft.Jet.Oledb.4.0;Data Source=" + Server.MapPath("App_Data\\ogrenci.mdb"));
                string str = "SELECT kad,ad,soyad,bolumu,dogumtarihi,sehir FROM kullanicilar WHERE bolumu like '" + bolumu + "'";
                SqlDataSource1.SelectCommand = str;
                SqlDataSource1.DataBind();
                GridView1.DataSource = SqlDataSource1;
                GridView1.DataBind();
            }
            else if (DropDownList1.SelectedItem.Text == "Birth Date")
            {
                string dogumtarihi = TextBox1.Text;
                OleDbConnection user_conn = new OleDbConnection("Provider=Microsoft.Jet.Oledb.4.0;Data Source=" + Server.MapPath("App_Data\\ogrenci.mdb"));
                string str = "SELECT kad,ad,soyad,bolumu,dogumtarihi,sehir FROM kullanicilar WHERE dogumtarihi like '" + dogumtarihi + "'";
                SqlDataSource1.SelectCommand = str;
                SqlDataSource1.DataBind();
                GridView1.DataSource = SqlDataSource1;
                GridView1.DataBind();
            }
            else if (DropDownList1.SelectedItem.Text == "City")
            {
                string sehir = TextBox1.Text;
                OleDbConnection user_conn = new OleDbConnection("Provider=Microsoft.Jet.Oledb.4.0;Data Source=" + Server.MapPath("App_Data\\ogrenci.mdb"));
                string str = "SELECT kad,ad,soyad,bolumu,dogumtarihi,sehir FROM kullanicilar WHERE sehir like '" + sehir + "'";
                SqlDataSource1.SelectCommand = str;
                SqlDataSource1.DataBind();
                GridView1.DataSource = SqlDataSource1;
                GridView1.DataBind();
            }
        }
    }
}