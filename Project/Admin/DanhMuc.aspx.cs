using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_DanhMuc : System.Web.UI.Page
{
    string strCon = @"Data Source=DESKTOP-5GRSC45\SQLEXPRESS;Initial Catalog=DoGiaDung;Integrated Security=True";
    SqlConnection conn = null;
    SqlDataAdapter da = null;
    DataTable dt = null;
    SqlCommand cmd = null;
    protected void Page_Load(object sender, EventArgs e)
    {
        conn = new SqlConnection(strCon);
        conn.Open();
        lblTT.Text = "";
    }

    protected void btnThem_Click(object sender, EventArgs e)
    {
        SqlDataSource1.InsertParameters["category_name"].DefaultValue = txtTen.Text;
        try
        {
            SqlDataSource1.Insert();
            txtTen.Text = "";

            lblTT.Text = "Thêm thành công";
        }
        catch (Exception ex)
        {
            lblTT.Text = "Một lỗi xảy ra khi chèn thêm dữ liệu. <br/><br/>" +
                "Message: " + ex.Message;
        }
    }

    protected void GridView1_RowDeleted(object sender, GridViewDeletedEventArgs e)
    {
        if (e.Exception != null)
        {
            lblTT.Text = "Một lỗi đã xảy ra khi xóa <br/>" + "Message: " + e.Exception.Message;
            e.ExceptionHandled = true;
        }
        else if (e.AffectedRows == 0)
        {
            lblTT.Text = "Một người dùng khác có thể đang cập nhật dữ liệu";
        }
    }

    protected void GridView1_RowUpdated(object sender, GridViewUpdatedEventArgs e)
    {
        if (e.Exception != null)
        {
            lblTT.Text = "Một lỗi đã xảy ra khi cập nhập <br/>" + "Message: " + e.Exception.Message;
            e.ExceptionHandled = true;
        }
        else if (e.AffectedRows == 0)
        {
            lblTT.Text = "Một người dùng khác có thể đang cập nhật dữ liệu";
        }
    }
}