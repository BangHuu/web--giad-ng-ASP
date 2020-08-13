using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Chitietsp : System.Web.UI.Page

{
    Label product_id;
    Image product_images;
    Label product_name;
    Label cost;
    decimal cst;
    string s;

    protected void Page_Load(object sender, EventArgs e)
    {
        product_id = (Label)FormView1.FindControl("product_idLabel");
        product_name = (Label)FormView1.FindControl("product_nameLabel");
        cost = (Label)FormView1.FindControl("costLabel");

        //product_images = dv[0]["product_image"].ToString();
        //product_images.ImageUrl= Convert.ToString(DataBinder.Eval(FormView1.DataItem,"product_image"));
        string[] c = cost.Text.Split('.');
        cst = Convert.ToDecimal(c[0]);
    }

    protected void LinkButton5_Click(object sender, EventArgs e)
    {
       // string product_id = Convert.ToString(DataBinder.Eval(FormView1.DataItem, "product_idLabel"));
        //string product_image = Convert.ToString(DataBinder.Eval(FormView1.DataItem, "product_nameLabel"));
        //string product_name = Convert.ToString(DataBinder.Eval(FormView1.DataItem, "product_image"));
       // decimal cost = Convert.ToDecimal(DataBinder.Eval(FormView1.DataItem, "costLabel"));
        //Cart acart;
        //if (Session["Cart"] == null)
        //{
         //   acart = new Cart();
        //}
        //else
        //{
         //   acart = (Cart)Session["Cart"];

        //}
       // acart.InsertItem(product_id, product_image, product_name, cost, 1);
        //Session["Cart"] = acart;
        //Response.Redirect("Giohang.aspx");
    }

    protected void FormView1_ItemCommand(object sender, FormViewCommandEventArgs e)
    {
        //string product_id = Convert.ToString(DataBinder.Eval(FormView1.DataItem, "product_idLabel"));
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        DataView dv = (DataView)SqlDataSource1.Select(DataSourceSelectArguments.Empty);
        s = dv[0]["product_image"].ToString();
        Cart acart;
        if (Session["Cart"] == null)
        {
            acart = new Cart();
        }
        else
        {
            acart = (Cart)Session["Cart"];

        }
        acart.InsertItem(product_id.Text, s, product_name.Text, cst, 1);
        Session["Cart"] = acart;
        Response.Redirect("Giohang.aspx");
    }
}