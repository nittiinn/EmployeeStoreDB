 using System;
using System.Data.SqlClient;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;

public partial class index : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
          //fillGrid();
          if (!IsPostBack)
        {
            GridView1.Visible = false;
        } 
        else
        {
            GridView1.Visible=true;
        }
        
    }

    protected void fillGrid()
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["connection"].ConnectionString);
        conn.Open();
        SqlCommand cmd = new SqlCommand("usp_UserData", conn);
        cmd.CommandType = CommandType.StoredProcedure;
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataSet dt = new DataSet();
        da.Fill(dt);
        GridView1.DataSource = dt;
        GridView1.DataBind();
        conn.Close();
    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["connection"].ConnectionString);
        conn.Open();
        SqlCommand cmd  = new SqlCommand("usp_InsertDb", conn);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@FirstName", txtFirstName.Text.Trim());
        cmd.Parameters.AddWithValue("@LastName", txtLastName.Text.Trim());
        cmd.Parameters.AddWithValue("@Email", txtEmail.Text.Trim());
        cmd.Parameters.AddWithValue("@Password", txtPassword.Text.Trim());
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        da.Fill(ds);
        conn.Close();


        GridView1.Visible = true;                                               
   
        fillGrid();



        //string connectionString = ConfigurationManager.ConnectionStrings["Connection"].ConnectionString;

        //using(SqlConnection conn = new SqlConnection(connectionString))
        //{
        //    using(SqlCommand cmd = new SqlCommand("StoreUserDb", conn))
        //    {
        //        DataSet ds = new DataSet();
        //        cmd.CommandType = System.Data.CommandType.StoredProcedure;
        //         cmd.Parameters.AddWithValue("@FirstName", txtName.Text.Trim());
        //         cmd.Parameters.AddWithValue("@LastName", TextBox4.Text.Trim());
        //         cmd.Parameters.AddWithValue("@Email", TextBox1.Text.Trim());
        //         cmd.Parameters.AddWithValue("@Addhar", TextBox5.Text.Trim());
        //         cmd.Parameters.AddWithValue("@Address", TextBox2.Text.Trim());
        //         cmd.Parameters.AddWithValue("@PAN", TextBox13.Text.Trim());
        //         cmd.Parameters.AddWithValue("@Phone", TextBox3.Text.Trim());
        //         cmd.Parameters.AddWithValue("@Category", ddl1.Text.Trim());
        //         cmd.Parameters.AddWithValue("@Password", TextBox19.Text.Trim());

        //        SqlDataAdapter da = new SqlDataAdapter(cmd);
        //        da.Fill(ds);

        //    }
        //}
    }
}