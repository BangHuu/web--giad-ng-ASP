using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class Dathang : System.Web.UI.Page
{

    string order_id;
    string username = "";
    string phoneNumber = "";
    string address = "";
    User user;
    protected void Page_Load(object sender, EventArgs e)
    {

        if (Session["User"] == null)
        {
            user = new User();
            Label1.CssClass = "hidden";
        }
        else
        {
            user = (User)Session["User"];
            title.CssClass = "hidden";
            btnDangKi.CssClass = "hidden";
            TextBox2.Text = user.FullName;
            TextBox3.Text = user.NumberPhone;
            TextBox4.Text = user.Address;

        }
        Cart acart;
        if (Session["Cart"] == null)
        {
            acart = new Cart();
        }
        else
        {
            acart = (Cart)Session["Cart"];

        }
        if (!IsPostBack)
        {
            BindGrid(acart);
        }

        SqlDataSource sqlOrder = new SqlDataSource();
        sqlOrder.ConnectionString = @"Data Source=DESKTOP-5GRSC45\SQLEXPRESS;Initial Catalog=DoGiaDung;Integrated Security=True";
        sqlOrder.SelectCommand = "SELECT * FROM [Orders] ";

        DataView dv = (DataView)sqlOrder.Select(DataSourceSelectArguments.Empty);
        if (dv.Count == 0)
        {
            order_id = "0";
        }
        else
        {
            order_id = Convert.ToString((int.Parse(dv[dv.Count - 1]["order_id"].ToString()) + 1));
        }
    }

    public void BindGrid(Cart aCart)
    {
        GridView1.DataSource = aCart.Items;
        GridView1.DataBind();
        lblTongTien.Text = aCart.TongTien.ToString();
    }

    protected void ck_CheckedChanged(object sender, EventArgs e)
    {
        if (ck.Checked)
        {
            DropDownList1.Enabled = false;
            TextBox1.Enabled = false;
        }
        else
        {
            DropDownList1.Enabled = true;
            TextBox1.Enabled = true;
        }
    }


    protected void Button1_Click(object sender, EventArgs e)
    {
        user = new User();

        /*
        if (TextBox2.Text == null || TextBox3.Text == null || TextBox4.Text == null)
            {
                lbl2.Text = lbl1.Text = lbl3.Text = "Không được để trống";
        }
        if (TextBox2.Text != null && TextBox3.Text != null && TextBox4.Text != null)
        {
            username = TextBox2.Text;
            phoneNumber = TextBox3.Text;
            address = TextBox4.Text;
        }*/

        Cart acart;
        if (Session["Cart"] != null)
        {
            acart = (Cart)Session["Cart"];
            foreach (var item in acart.Items)
            {

                SqlDsDonHang.InsertParameters["order_id1"].DefaultValue = order_id;
                SqlDsDonHang.InsertParameters["fullName2"].DefaultValue = username;
                SqlDsDonHang.InsertParameters["order_create"].DefaultValue = DateTime.Now.ToShortDateString();
                SqlDsDonHang.InsertParameters["phoneNumber"].DefaultValue = phoneNumber;
                SqlDsDonHang.InsertParameters["address"].DefaultValue = address;
                SqlDsDonHang.InsertParameters["money_sum"].DefaultValue = acart.TongTien.ToString();
                try
                {
                    SqlDsDonHang.Insert();
                    SqlDataSource sqlChiTiestDonHang = new SqlDataSource();
                    sqlChiTiestDonHang.ConnectionString = @"Data Source=DESKTOP-5GRSC45\SQLEXPRESS;Initial Catalog=DoGiaDung;Integrated Security=True";
                    sqlChiTiestDonHang.InsertCommand = "INSERT INTO [Order_details] ([quantity],[order_id],[product_id],[cost]) VALUES (@quantity, @order_id, @product_id, @cost)";

                    sqlChiTiestDonHang.InsertParameters.Add("product_id", item.Product_id);
                    sqlChiTiestDonHang.InsertParameters.Add("quantity", item.Qty.ToString());
                    sqlChiTiestDonHang.InsertParameters.Add("order_id", order_id);
                    sqlChiTiestDonHang.InsertParameters.Add("cost", item.Cost.ToString());
                    sqlChiTiestDonHang.Insert();

                    Session.Remove("Cart");
                    Response.Redirect("ChiTietDonHang.aspx?order_id=" + order_id);
                }
                catch (Exception ex)
                {
                    lblThongBao.Text = "Đặt hàng thất bại. Lỗi: " + ex.Message;
                }
            }
        }
    }

    protected void Text2_changed(object sender, EventArgs e)
    {
        username = TextBox5.Text;
    }
    protected void Text3_changed(object sender, EventArgs e)
    {
        phoneNumber = TextBox6.Text;
    }
    protected void Text4_changed(object sender, EventArgs e)
    {
        address = TextBox7.Text;
    }
}