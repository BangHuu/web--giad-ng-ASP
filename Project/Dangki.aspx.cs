using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Dangki : System.Web.UI.Page
{
    string strCon = @"Data Source=DESKTOP-5GRSC45\SQLEXPRESS;Initial Catalog=DoGiaDung;Integrated Security=True";
    SqlConnection coon = null;
    SqlDataAdapter da = null;
    DataTable dt = null;
    SqlCommand cmd = null;


    protected void Page_Load(object sender, EventArgs e)
    {
        coon = new SqlConnection(strCon);
        coon.Open();

    }

    protected void btnthemthanhvien_Click(object sender, EventArgs e)
    {
        DataView dv = (DataView)SqlDataSource1.Select(DataSourceSelectArguments.Empty);
        int num = dv.Count;
        if (num > 0)
        {
            Label1.Text = "Tên đăng nhập đã có người sử dụng";

        }
        else
        {
            /*
            string susername = txtTenDN.Text;
            string spassword = txtmatkhau.Text;
            string sfullname = txtten.Text;
            string sgender = txtgioitinh.Text;
            string sdate_create = DateTime.Now.ToShortDateString();
            //  Convert.ToDateTime(txtngaysinh.Text);
            string sphonenumber = Convert.ToString(txtdienthoai.Text);
            string sdiachi = txtdiachi.Text;

            // string strCmd = "INSERT INTO ACCOUNT(username,password,fullname,gender,date_create,phonenumber,email,address,role)
            string strCmd = "insert into Accounts values('" + susername + "','" + spassword + "',N'" + sfullname + "',N'" + sgender + "','" + sdate_create + "','" + sphonenumber + "','',N'" + sdiachi + "',N'+0+')";

            User u = new User();
            u.username = txtTenDN.Text;
            u.password = txtmatkhau.Text;
            u.fuullname = txtten.Text;
            cmd = new SqlCommand(strCmd, coon);
            cmd.ExecuteNonQuery();
            Session.Add("User", u);

            Response.Redirect("Dangnhap.aspx");
            */
            SqlDataSource1.InsertParameters["username"].DefaultValue = txtTenDN.Text;
            SqlDataSource1.InsertParameters["password"].DefaultValue = txtmatkhau.Text;
            SqlDataSource1.InsertParameters["date_create"].DefaultValue = DateTime.Now.ToShortDateString();
            SqlDataSource1.InsertParameters["fullname"].DefaultValue = txtten.Text;
            SqlDataSource1.InsertParameters["gender"].DefaultValue = txtgioitinh.Text;
            SqlDataSource1.InsertParameters["phonenumber"].DefaultValue = txtdienthoai.Text;
            SqlDataSource1.InsertParameters["address"].DefaultValue = txtdiachi.Text;
            SqlDataSource1.InsertParameters["role"].DefaultValue = "0";

            try
            {
                User u = new User();
                u.UserName = txtTenDN.Text;
                u.Password = txtmatkhau.Text;
                u.FullName = txtten.Text;
                SqlDataSource1.Insert();

                SqlDataSource1.InsertCommand = "INSERT INTO TaiKhoan ([user],[password],[fullname],[gender],[phonenumber],[address],[role]) VALUES('" + txtTenDN.Text + "', '" + txtmatkhau.Text + "','" + txtten.Text + "', '" + txtgioitinh.Text + "','" + txtdienthoai.Text + "','" + txtdiachi.Text + "','0'); ";
                SqlDataSource1.Update();

                Session.Add("User", u);
                Session.Add("UserName", txtTenDN.Text);
                Session.Add("Login", "1");
                Response.Redirect("Trangchu.aspx");
            }
            catch (Exception ex)
            {
                Label1.Text = "Đăng ký thất bại : " + ex.Message;
            }
        }
    }
    protected void btnhuydangky_Click(object sender, EventArgs e)
    {
        Response.Redirect("trangchu.aspx");
    }
}