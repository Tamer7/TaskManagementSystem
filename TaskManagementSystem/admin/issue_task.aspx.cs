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
    public partial class issue_task : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\Programming\TaskManagementSystem\TaskManagementSystem\App_Data\tms.mdf;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {
			if (con.State == ConnectionState.Open)
			{
				con.Close();
			}
			con.Open();

			if (Session["admin"] == null)
			{
				Response.Redirect("login.aspx");
			}


			if (IsPostBack) return;

			user.Items.Clear();
			SqlCommand cmd = con.CreateCommand();
			cmd.CommandType = CommandType.Text;
			cmd.CommandText = "select username from user_registration";
			cmd.ExecuteNonQuery();
			DataTable dt = new DataTable();
			SqlDataAdapter da = new SqlDataAdapter(cmd);
			da.Fill(dt);
			foreach (DataRow dr in dt.Rows)
			{
				user.Items.Add(dr["username"].ToString());
			}


		}

        protected void b1_Click(object sender, EventArgs e)
        {





			if (user.SelectedItem.ToString() == "Select")
			{
				Response.Write("<script>alert('Please Select a User to Assign A Task To!'); window.location.href=window.location.href;</script>");
			}


			else
			{
				string task_issue_date = DateTime.Now.ToString("dd/MM/yyyy");
				string task_due_date = calender.SelectedDate.ToShortDateString();
				string username = "";


				SqlCommand cmd2 = con.CreateCommand();
				cmd2.CommandType = CommandType.Text;
				cmd2.CommandText = "select * from user_registration where username='" + user.SelectedItem.ToString() + "'";
				cmd2.ExecuteNonQuery();
				DataTable dt2 = new DataTable();
				SqlDataAdapter da2 = new SqlDataAdapter(cmd2);
				da2.Fill(dt2);
				foreach (DataRow dr2 in dt2.Rows)
				{
					username = dr2["username"].ToString();
				}

				//calender.SelectedDate.ToShortDateString();

				SqlCommand cmd3 = con.CreateCommand();
				cmd3.CommandType = CommandType.Text;
				cmd3.CommandText = "insert into issue_task values('" + user.SelectedItem.ToString() + "','" + taskname.Text + "', '" + taskdescription.Text + "','" + task_issue_date.ToString() + "','" + task_due_date.ToString() + "','no')";
				cmd3.ExecuteNonQuery();



				Response.Write("<script>alert('Task Issued Successfully!'); window.location.href=window.location.href;</script>");
			}
			






				

				}
			}

		

	
}