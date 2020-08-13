using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class DoiMK : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        TextBox1.Text = Session.Contents["UserName"].ToString();
        TextBox1.Enabled = false;
    }

    protected void Button1_Click(object sender, EventArgs e)
    {

        if (TextBox2.Text != TextBox3.Text)
        {
            Label1.Text = "Mật khẩu chưa khớp";
        }
        else
        {
            // SqlDataSource1.InsertParameters["TenTK"].DefaultValue = TextBox1.Text;
            //  SqlDataSource1.InsertParameters["Password"].DefaultValue = TextBox2.Text;


            try
            {
                SqlDataSource1.UpdateCommand = "UPDATE Accounts SET [password]= '" + TextBox2.Text + "' WHERE [username]= '" + TextBox1.Text + "';";
                SqlDataSource1.Update();

                Response.Redirect("thongtincanhan.aspx");
            }
            catch (Exception ex)
            {
                Label1.Text = "Thất bại : " + ex.Message;
            }
        }
    }
}