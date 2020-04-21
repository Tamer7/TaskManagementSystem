using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using Newtonsoft.Json.Linq;
using System.Configuration;
using System.Net;
using System.IO;

namespace TaskManagementSystem.user
{
	public partial class user_register : System.Web.UI.Page
	{
		SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\tms.mdf;Integrated Security=True");

		protected void Page_Load(object sender, EventArgs e)
		{
			if (con.State == ConnectionState.Open)
			{
				con.Close();
			}
			con.Open();
		}

		protected void b1_Click(object sender, EventArgs e)
		{
			int count = 0;
			int count2 = 0;


			//check if fields are empty
			if (firstname.Text == "" || lastname.Text == "" || emailaddress.Text == "" || username.Text == "" || password.Text == "")
			{
				Response.Write("<script>alert('All values with * should be filled! ')</script>");
			}
			else
			{
				//check if username is unique
				SqlCommand cmd2 = con.CreateCommand();
				cmd2.CommandType = CommandType.Text;
				cmd2.CommandText = "select * from user_registration where username='" + username.Text + "'";
				cmd2.ExecuteNonQuery();
				DataTable dt2 = new DataTable();
				SqlDataAdapter da2 = new SqlDataAdapter(cmd2);
				da2.Fill(dt2);
				count2 = Convert.ToInt32(dt2.Rows.Count.ToString());
				if (count2 > 0)
				{
					Response.Write("<script>alert('Username Is Taken! ')</script>");
				}
				else
				{


					SqlCommand cmd = con.CreateCommand();
					cmd.CommandType = CommandType.Text;
					cmd.CommandText = "insert into user_registration values('" + firstname.Text + "','" + lastname.Text + "','" + emailaddress.Text + "','" + username.Text + "','" + password.Text + "','yes')";
					cmd.ExecuteNonQuery();

					Response.Write("<script>alert('Record Saved Successfully, Please Wait For The Admin To Activate Your Account')</script>");
				}
			}
		}
			
}


}

