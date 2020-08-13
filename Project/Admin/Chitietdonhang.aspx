<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPageBackEnd.master" AutoEventWireup="true" CodeFile="Chitietdonhang.aspx.cs" Inherits="Admin_Chitietdonhang" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <table class="nav-justified">
        <tr>
            <td>
                <asp:SqlDataSource ID="sqlDonHang" runat="server" ConnectionString="<%$ ConnectionStrings:DoGiaDungConnectionString %>" SelectCommand="SELECT * FROM [Orders] WHERE ([order_id] = @order_id)">
                    <SelectParameters>
                        <asp:QueryStringParameter Name="order_id" QueryStringField="order_id" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <br />
                <h1>Đơn hàng</h1>
                <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="order_id" DataSourceID="sqlDonHang" Height="50px" Width="325px" CellPadding="4" ForeColor="#333333" GridLines="None">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <CommandRowStyle BackColor="#E2DED6" Font-Bold="True" />
                    <EditRowStyle BackColor="#999999" />
                    <FieldHeaderStyle BackColor="#E9ECF1" Font-Bold="True" />
                    <Fields>
                        <asp:BoundField DataField="order_id" HeaderText="Mã đơn" ReadOnly="True" SortExpression="order_id" />
                        <asp:BoundField DataField="fullName" HeaderText="Tên khách hàng" SortExpression="fullName" />
                        <asp:BoundField DataField="order_create" HeaderText="Ngày đặt" SortExpression="order_create" />
                        <asp:BoundField DataField="phoneNumber" HeaderText="Số điện thoại" SortExpression="phoneNumber" />
                        <asp:BoundField DataField="address" HeaderText="Địa chỉ" SortExpression="address" />
                        <asp:BoundField DataField="money_sum" HeaderText="Tổng tiền" SortExpression="money_sum" />
                    </Fields>
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                </asp:DetailsView>
            </td>
            <td>
                <asp:SqlDataSource ID="sqlChiTiet" runat="server" ConnectionString="<%$ ConnectionStrings:DoGiaDungConnectionString %>" SelectCommand="SELECT * FROM [Order_details] WHERE ([order_id] = @order_id)">
                    <SelectParameters>
                        <asp:QueryStringParameter Name="order_id" QueryStringField="order_id" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <br />
                <h1>Chi tiết</h1>
                <asp:DetailsView ID="DetailsView2" runat="server" AutoGenerateRows="False" DataSourceID="sqlChiTiet" Height="146px" Width="286px" CellPadding="4" ForeColor="#333333" GridLines="None">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <CommandRowStyle BackColor="#E2DED6" Font-Bold="True" />
                    <EditRowStyle BackColor="#999999" />
                    <FieldHeaderStyle BackColor="#E9ECF1" Font-Bold="True" />
                    <Fields>
                        <asp:BoundField DataField="quantity" HeaderText="Số lượng" SortExpression="quantity" />
                        <asp:BoundField DataField="order_id" HeaderText="Mã hàng" SortExpression="order_id" />
                        <asp:BoundField DataField="product_id" HeaderText="Mã sản phẩm" SortExpression="product_id" />
                        <asp:BoundField DataField="cost" HeaderText="Gía" SortExpression="cost" />
                    </Fields>
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                </asp:DetailsView>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

