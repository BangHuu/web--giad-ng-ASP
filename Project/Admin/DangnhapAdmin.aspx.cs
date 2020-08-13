using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_DangnhapAdmin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        lblError.Text = "";
    }
    User user = new User();


    protected void btnDangnhap_Click(object sender, EventArgs e)
    {
        DataView dv = (DataView)sqlDangNhap.Select(DataSourceSelectArguments.Empty);
        if (dv.Count > 0)
        {


            User user = new User();
            user.UserName = dv[0]["userName"].ToString();

            user.Password = dv[0]["password"].ToString();
            Session.Add("User", user);
            Response.Redirect("DanhMuc.aspx");
        }
        else
        {
            lblError.Text = "Tên đăng nhập hoặc mật khẩu sai";
        }
    }
}