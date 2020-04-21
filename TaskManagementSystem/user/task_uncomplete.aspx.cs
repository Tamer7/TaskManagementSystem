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
    public partial class task_uncomplete : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\tms.mdf;Integrated Security=True");
        int id;
        protected void Page_Load(object sender, EventArgs e)
        {
			if (con.State == ConnectionState.Open)
			{
				con.Close();
			}
			con.Open();


			id = Convert.ToInt32(Request.QueryString["id"].ToString());


			SqlCommand cmd = con.CreateCommand();
			cmd.CommandType = CommandType.Text;
			cmd.CommandText = "update issue_task set is_task_complete='No' where id=" + id + "";
			cmd.ExecuteNonQuery();

			Response.Redirect("user_issued_task.aspx");
		}
    }
}