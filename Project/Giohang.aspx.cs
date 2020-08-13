using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Giohang : System.Web.UI.Page
{

    Cart acart;
    protected void Page_Load(object sender, EventArgs e)
    {

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

    }
    public void BindGrid(Cart aCart)
    {
        GridView1.DataSource = aCart.Items;
        GridView1.DataBind();
        lblTongTien.Text = aCart.TongTien.ToString();
    }


    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        int rowIndex = Convert.ToInt32(e.CommandArgument);
        string product_id = GridView1.Rows[rowIndex].Cells[0].Text;
        TextBox txtqty = (TextBox)GridView1.Rows[rowIndex].FindControl("txtQty");
        int qty = Convert.ToInt32(txtqty.Text);

        Cart aCart;
        if (Session["Cart"] == null)
        {
            aCart = new Cart();
        }
        else
        {
            aCart = (Cart)Session["Cart"];
        }
        int rowId = aCart.getIndex(product_id);
        aCart.updateItem(rowId, qty);
        BindGrid(aCart);
        Session["Cart"] = aCart;
    }


    protected void btnXoaGioHang_Click(object sender, EventArgs e)
    {
        Session.Remove("Cart");
        lblTongTien.Text = "";
        Response.Redirect("Giohang.aspx");
    }

    protected void btnTiepTuc_Click(object sender, EventArgs e)
    {
        Response.Redirect("danhmucsp.aspx");
    }

    protected void textChanged(object sender, EventArgs e)
    {
        lblTongTien.Text = "heeloo";
    }
}