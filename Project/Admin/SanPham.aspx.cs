using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_SanPham : System.Web.UI.Page
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
    private void SaveFileUpload()
    {
        string strFilePath;
        if (FileUploadAnh.FileName != "")
        {
            strFilePath = Server.MapPath("/images/" + FileUploadAnh.FileName);
            FileUploadAnh.PostedFile.SaveAs(strFilePath);
        }
    }

    protected void btnThem_Click(object sender, EventArgs e)
    {
        int sizeLimit = 52428800;

        sqlSanPham.InsertParameters["product_id"].DefaultValue = txtMa.Text;
        sqlSanPham.InsertParameters["category_id"].DefaultValue = DropDownList1.SelectedValue;
        sqlSanPham.InsertParameters["product_image"].DefaultValue = FileUploadAnh.FileName.ToString();
        sqlSanPham.InsertParameters["product_name"].DefaultValue = txtTenSP.Text;
        sqlSanPham.InsertParameters["producer_name"].DefaultValue = txtHang.Text;
        sqlSanPham.InsertParameters["description"].DefaultValue = txtMoTa.Text;
        sqlSanPham.InsertParameters["cost"].DefaultValue = txtGia.Text;
        sqlSanPham.InsertParameters["state"].DefaultValue = txtTinhTrang.Text;

        if (FileUploadAnh.HasFile)
        {
            if (FileUploadAnh.PostedFile.ContentLength <= sizeLimit)
            {
                string str = Server.MapPath("~") + "images\\" + FileUploadAnh.FileName;
                lblTT.Text = str;
                FileUploadAnh.SaveAs(str);
            }
            else
            {
                lblTT.Text = "File upload vượt quá giới hạn";
            }
        }
        try
        {
            sqlSanPham.Insert();
            txtMa.Text = "";
            DropDownList1.SelectedValue = null;
            FileUploadAnh.Dispose();
            txtTenSP.Text = "";
            txtHang.Text = "";
            txtMoTa.Text = "";
            txtGia.Text = "";
            txtTinhTrang.Text = "";

            lblTT.Text = "Thêm thành công";
        }
        catch (Exception ex)
        {
            lblTT.Text = "Một lỗi xảy ra khi chèn thêm dữ liệu. <br/><br/>" +
                "Message: " + ex.Message;
        }
    }

    protected void btnNhapLai_Click(object sender, EventArgs e)
    {
        txtMa.Text = "";
        DropDownList1.SelectedValue = null;
        txtTenSP.Text = "";
        txtHang.Text = "";
        txtMoTa.Text = "";
        txtGia.Text = "";
        txtTinhTrang.Text = "";
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
}
