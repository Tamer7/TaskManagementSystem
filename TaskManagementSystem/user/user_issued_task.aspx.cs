using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace TaskManagementSystem.user
{
    public partial class user_issued_task : System.Web.UI.Page
    {
		SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\Programming\TaskManagementSystem\TaskManagementSystem\App_Data\tms.mdf;Integrated Security=True");
			
		protected void Page_Load(object sender, EventArgs e)
        {
			if (con.State == ConnectionState.Open)
			{
				con.Close();
			}
			con.Open();

			if (Session["user"] == null)
			{
				Response.Redirect("user_login.aspx");
			}

			SqlCommand cmd = con.CreateCommand();
			cmd.CommandType = CommandType.Text;
			cmd.CommandText = "select * from issue_task where user_username='" + Session["user"].ToString() + "'";
			cmd.ExecuteNonQuery();
			DataTable dt = new DataTable();
			SqlDataAdapter da = new SqlDataAdapter(cmd);
			da.Fill(dt);
			r1.DataSource = dt;
			r1.DataBind();

		}
    }
}