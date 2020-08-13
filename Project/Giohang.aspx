<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Giohang.aspx.cs" Inherits="Giohang" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <style>
        .css{
            text-align:center
        }
    </style>
    <div>
        <h2>Giỏ hàng</h2>
    </div>
    <div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Width="100%" CssClass="css">
            <Columns>
                <asp:BoundField DataField="Product_id" HeaderText="Mã sản phẩm" />
                <asp:ImageField DataAlternateTextField="Product_image" DataAlternateTextFormatString="~/Images/{0}" DataImageUrlField="Product_image" DataImageUrlFormatString="~/Images/{0}" HeaderText="Ảnh" >
                    <ControlStyle Height="100px" Width="130px" />
                </asp:ImageField>
                <asp:TemplateField HeaderText="Tên sản phẩm">
                    <ItemTemplate>
                        <asp:Label ID="lblProductName" runat="server" Text='<%# Eval("Product_name") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="cost" HeaderText="Giá" />
                <asp:TemplateField HeaderText="Số lượng">
                    <ItemTemplate>
                        <asp:TextBox ID="txtQty" runat="server" Text='<%# Eval("Qty") %>' Width="100%" OnTextChanged="textChanged"></asp:TextBox>
                    </ItemTemplate>
                    <ControlStyle Width="98%" />
                </asp:TemplateField>
                <asp:BoundField DataField="SumMoney" HeaderText="Thành tiền" />
            </Columns>
            <EmptyDataTemplate>
                Không có hàng trong giỏ
            </EmptyDataTemplate>
        </asp:GridView>
    </div>
    <div>

        <table class="auto-style">
            <tr>
                <td style="width:100px">Tổng tiến:</td>
                <td>
                    <asp:Label ID="lblTongTien" runat="server" Text=""></asp:Label></td>
            </tr>
        </table>

    </div>
    <div>
        <asp:Button ID="btnTiepTuc" runat="server" Text="Tiếp tục mua hàng" OnClick="btnTiepTuc_Click" />
        <asp:Button ID="btnXoaGioHang" runat="server" Text="Xóa giỏ hàng" OnClick="btnXoaGioHang_Click" />
        <asp:Button ID="btnDatHang" runat="server" Text="Đặt hàng" PostBackUrl="~/Dathang.aspx"  />
    </div>
</asp:Content>

