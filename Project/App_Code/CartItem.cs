using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for CartItem
/// </summary>
public class CartItem
{
    private string product_id;
    private string product_image;
    private string product_name;
    private decimal cost;
    private int qty;
    private decimal sumMoney;

    public string Product_id
    {
        get
        {
            return product_id;
        }

        set
        {
            product_id = value;
        }
    }

    public string Product_name
    {
        get
        {
            return product_name;
        }

        set
        {
            product_name = value;
        }
    }

    public decimal Cost
    {
        get
        {
            return cost;
        }

        set
        {
            cost = value;
        }
    }

    public int Qty
    {
        get
        {
            return qty;
        }

        set
        {
            qty = value;
        }
    }

    public decimal SumMoney
    {
        get
        {
            return Cost*Qty;
        }
        
    }

    public string Product_image
    {
        get
        {
            return product_image;
        }

        set
        {
            product_image = value;
        }
    }

    public CartItem()
    {
        //
        // TODO: Add constructor logic here
        //
         
    }
    public CartItem(string product_id,string product_image,string product_name,decimal cost,int qty)
    {
        //
        // TODO: Add constructor logic here
        //
        this.product_id = product_id;
        this.product_image = product_image;
        this.product_name = product_name;
        this.cost = cost;
        this.qty = qty;

    }
}