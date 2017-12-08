using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Data.SqlClient;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
    }
    
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection("server=.\\SQLEXPRESS;database=mike;Trusted_Connection=True;");
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = con;
        
        cmd.CommandText = "Select * from Injection Where Name like @Name";
        cmd.Parameters.AddWithValue("@name", txtName.Text + "%");
        con.Open();
        cmd.ExecuteNonQuery();
        cmd.Clone();               
        con.Close();

        //'App goes to this page to refresh it - post back.
        Response.Redirect("Default.aspx");
    }

    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {
    }

}