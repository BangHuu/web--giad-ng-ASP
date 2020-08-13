<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPageBackEnd.master" AutoEventWireup="true" CodeFile="DonHang.aspx.cs" Inherits="Admin_DonHang" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="order_id" DataSourceID="sqlDonHang" PageSize="5">
        <Columns>
            <asp:BoundField DataField="order_id" HeaderText="Mã đơn" ReadOnly="True" SortExpression="order_id" />
            <asp:BoundField DataField="fullName" HeaderText="Tên khách hàng" SortExpression="fullName" />
            <asp:BoundField DataField="order_create" HeaderText="Ngày đặt" SortExpression="order_create" />
            <asp:BoundField DataField="phoneNumber" HeaderText="Số điện thoại" SortExpression="phoneNumber" />
            <asp:BoundField DataField="address" HeaderText="Địa chỉ nhận" SortExpression="address" />
            <asp:BoundField DataField="money_sum" HeaderText="Tổng tiền" SortExpression="money_sum" />
            <asp:CommandField CancelText="Hủy" DeleteText="Xóa" EditText="Sửa" ShowDeleteButton="True" ShowEditButton="True" UpdateText="Cập nhập" />
            <asp:HyperLinkField DataNavigateUrlFields="order_id" DataNavigateUrlFormatString="Chitietdonhang.aspx?order_id={0}" HeaderText="Chi tiết" NavigateUrl="~/ChiTietDonHang.aspx" Text="Chi tiết" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="sqlDonHang" runat="server" ConnectionString="<%$ ConnectionStrings:DoGiaDungConnectionString %>" DeleteCommand="DELETE FROM [Orders] WHERE [order_id] = @order_id" InsertCommand="INSERT INTO [Orders] ([order_id], [fullName], [order_create], [phoneNumber], [address], [money_sum]) VALUES (@order_id, @fullName, @order_create, @phoneNumber, @address, @money_sum)" SelectCommand="SELECT * FROM [Orders]" UpdateCommand="UPDATE [Orders] SET [fullName] = @fullName, [order_create] = @order_create, [phoneNumber] = @phoneNumber, [address] = @address, [money_sum] = @money_sum WHERE [order_id] = @order_id">
        <DeleteParameters>
            <asp:Parameter Name="order_id" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="order_id" Type="String" />
            <asp:Parameter Name="fullName" Type="String" />
            <asp:Parameter Name="order_create" Type="DateTime" />
            <asp:Parameter Name="phoneNumber" Type="String" />
            <asp:Parameter Name="address" Type="String" />
            <asp:Parameter Name="money_sum" Type="Decimal" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="fullName" Type="String" />
            <asp:Parameter Name="order_create" Type="DateTime" />
            <asp:Parameter Name="phoneNumber" Type="String" />
            <asp:Parameter Name="address" Type="String" />
            <asp:Parameter Name="money_sum" Type="Decimal" />
            <asp:Parameter Name="order_id" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>

