using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Cart
/// </summary>
public class Cart
{
    public List<CartItem> Items { get; set; }

    public decimal TongTien
    {
        get
        {
            _tongTien = 0;
            if (Items != null)
            {
                foreach(var item in Items)
                {
                    _tongTien += item.SumMoney;
                }
            }
            return _tongTien;
        }
        
    }

    private decimal _tongTien;

    public Cart()
    {
        //
        // TODO: Add constructor logic here
        //
        if (this.Items == null)
        {
            this.Items = new List<CartItem>(); 
        }
    }
    public int getIndex(string product_id)
    {
        int index = 0;
        foreach(var item in this.Items)
        {
            if (item.Product_id.CompareTo(product_id)==0)
            {
                return index;
            }
        }
        return -1;
    }

    public void InsertItem(string product_id,string product_image, string product_name, decimal cost, int qty)
    {
        int index = this.getIndex(product_id);
        if (index == -1)
        {
            CartItem anItem = new CartItem(product_id, product_image,product_name, cost,qty);
            Items.Add(anItem);
        }else
        {
            Items[index].Qty += qty;
        }
    }
    public void DeleteItem(int rowId)
    {
        Items.RemoveAt(rowId);
    }
    public void updateItem(int rowId, int qty)
    {
        if (qty == 0)
        {
            DeleteItem(rowId);
        }else
        {
            CartItem updateItem = new CartItem();
            updateItem.Qty = qty;
        }
    }

}