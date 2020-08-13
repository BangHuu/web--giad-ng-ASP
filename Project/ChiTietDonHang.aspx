<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ChiTietDonHang.aspx.cs" Inherits="ChiTietDonHang" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>
        <h2>Thông tin chi tiết đơn hàng</h2>
        <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="323px" AutoGenerateRows="False" DataKeyNames="order_id" DataSourceID="SqlDataSource1">
            <Fields>
                <asp:BoundField DataField="order_id" HeaderText="Mã đơn hàng" ReadOnly="True" SortExpression="order_id" />
                <asp:BoundField DataField="fullName" HeaderText="Họ và tên người nhận" SortExpression="fullName" />
                <asp:BoundField DataField="order_create" HeaderText="Ngày đặt hàng" SortExpression="order_create" />
                <asp:BoundField DataField="phoneNumber" HeaderText="Số điện thoại" SortExpression="phoneNumber" />
                <asp:BoundField DataField="address" HeaderText="Địa chỉ" SortExpression="address" />
                <asp:BoundField DataField="money_sum" HeaderText="Tổng tiền" SortExpression="money_sum" />
            </Fields>
        </asp:DetailsView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DoGiaDungConnectionString %>" SelectCommand="SELECT * FROM [Orders] WHERE ([order_id] = @order_id)">
            <SelectParameters>
                <asp:QueryStringParameter Name="order_id" QueryStringField="order_id" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:DoGiaDungConnectionString %>" SelectCommand="SELECT * FROM [Order_details] WHERE ([order_id] = @order_id)">
            <SelectParameters>
                <asp:QueryStringParameter Name="order_id" QueryStringField="order_id" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <h4>Các mặt hàng đặt</h4>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2">
            <Columns>
                <asp:BoundField DataField="order_id" HeaderText="Mã đơn hàng" SortExpression="order_id" />
                <asp:BoundField DataField="product_id" HeaderText="Mã sản phẩm" SortExpression="product_id" />
                <asp:BoundField DataField="quantity" HeaderText="Số lượng" SortExpression="quantity" />
                <asp:BoundField DataField="cost" HeaderText="Giá" SortExpression="cost" />
            </Columns>
        </asp:GridView>
    </div>
    <div style="margin-top:20px">
        <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/danhmucsp.aspx">Tiếp tục mua hàng</asp:LinkButton>
    </div>
</asp:Content>

