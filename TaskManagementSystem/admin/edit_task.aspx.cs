using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace TaskManagementSystem.admin
{
    public partial class edit_task : System.Web.UI.Page

    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\Programming\TaskManagementSystem\TaskManagementSystem\App_Data\tms.mdf;Integrated Security=True");
        int id;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (con.State == ConnectionState.Open)
            {
                con.Close();
            }
            con.Open();

			id = Convert.ToInt32(Request.QueryString["id"].ToString());

			if (IsPostBack) return;

			SqlCommand cmd = con.CreateCommand();
			cmd.CommandType = CommandType.Text;
			cmd.CommandText = "select * from issue_task where id =" + id + "";
			cmd.ExecuteNonQuery();
			DataTable dt = new DataTable();
			SqlDataAdapter da = new SqlDataAdapter(cmd);
			da.Fill(dt);
			foreach (DataRow dr in dt.Rows)
			{
				taskname.Text = dr["task_name"].ToString();
				taskdescription.Text = dr["task_description"].ToString();


			}

			user.Items.Clear();
			SqlCommand cmd1 = con.CreateCommand();
			cmd1.CommandType = CommandType.Text;
			cmd1.CommandText = "select username from user_registration";
			cmd1.ExecuteNonQuery();
			DataTable dt1 = new DataTable();
			SqlDataAdapter da1 = new SqlDataAdapter(cmd1);
			da1.Fill(dt1);
			foreach (DataRow dr1 in dt1.Rows)
			{
				user.Items.Add(dr1["username"].ToString());
			}

		}

		protected void b1_Click(object sender, EventArgs e)
		{
			DateTime dateTime = DateTime.Now;
			String Currentdate = dateTime.ToString("dd/MM/yyyy");
			SqlCommand cmd = con.CreateCommand();
			cmd.CommandType = CommandType.Text;
			cmd.CommandText = "update issue_task set user_username='" + user.Text + "',task_name='" + taskname.Text + "',task_description='" + taskdescription.Text + "',task_due_date='" + calender.SelectedDate.ToShortDateString()+ "' where id=" + id + "";
			cmd.ExecuteNonQuery();

			//msg.Style.Add("display", "block");
			Response.Redirect("display_tasks.aspx");
		}
	}
}