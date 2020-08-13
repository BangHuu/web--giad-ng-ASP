using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Dangnhap : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnDangNhap_Click(object sender, EventArgs e)
    {
        if (txtMatKhau.Text == "" || txtTenDN.Text == "")
        {
            txterror.Text = "Yêu cầu điền đầy đủ thông tin";
        }
        else
        {
            DataView dv = (DataView)sqldangnhap.Select(DataSourceSelectArguments.Empty);
            int num = dv.Count;
            if (num > 0)
            {
                User objUser = new User();
                objUser.UserName = txtTenDN.Text;
                objUser.Password = txtMatKhau.Text;
                objUser.FullName = dv[0]["fullname"].ToString();
                objUser.NumberPhone= dv[0]["phonenumber"].ToString();
                objUser.Address = dv[0]["address"].ToString();
                Session.Add("User", objUser);
                Session.Add("UserName", txtTenDN.Text);
                Response.Redirect("trangchu.aspx");

            }
            else
            {
                txterror.Text = "Thông tin tài khoản hoặc mật khẩu không đúng";
            }
        }
    }
}
