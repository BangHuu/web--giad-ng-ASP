using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class SuaThongTin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btlSua_Click(object sender, EventArgs e)
    {
        User u = (User)Session.Contents["User"];
        try
        {
            SqlDataSource1.UpdateCommand = "UPDATE Accounts SET [fullname]= N'" + txthoten.Text + "', [gender]= N'" + txtgioitinh.Text + "', [phonenumber]= '" + txtdienthoai.Text + "', [address]= N'" + txtdiachi.Text + "' WHERE [username]= '" + u.UserName + "';";
            SqlDataSource1.Update();

            Response.Redirect("thongtincanhan.aspx");
        }
        catch (Exception ex)
        {
            Label1.Text = "Thất bại : " + ex.Message;
        }

        //   TextBox4.Text = dr[4].ToString().Trim();
        // TextBox5.Text = dr[5].ToString().Trim();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        User u = (User)Session.Contents["User"];
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["DoGiaDungConnectionString"].ToString());
        con.Open();
        String str = "select * from Accounts WHERE username='" + u.UserName + "'";
        SqlCommand cmd = new SqlCommand(str, con);
        SqlDataReader dr = cmd.ExecuteReader();

        while (dr.Read())
        {

            txthoten.Text = dr[2].ToString().Trim();
            txtgioitinh.Text = dr[3].ToString().Trim();
            txtdienthoai.Text = dr[5].ToString().Trim();
            txtdiachi.Text = dr[7].ToString().Trim();


        }
        con.Close();

    }

    protected void btlHuy_Click(object sender, EventArgs e)
    {
        Response.Redirect("thongtincanhan.aspx");
    }
}