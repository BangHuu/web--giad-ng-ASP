<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="danhmucsp.aspx.cs" Inherits="danhmucsp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <table class="auto-style" style="margin-left: 26px;">
    <tr>
        <td>

    <asp:DataList ID="DataList1" runat="server" BackColor="#DEBA84" BorderColor="#FF9966" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyField="category_id" DataSourceID="SqlDanhMuc" GridLines="Both" Width="177px" CellSpacing="2" Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False">
        <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
        <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
        <ItemStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
        <ItemTemplate>
            <br />
            <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl='<%# Eval("category_id", "danhsachsp.aspx?category_id={0}") %>' Text='<%# Eval("category_name") %>' Font-Size="15px"></asp:HyperLink>
            <br />
            <br />
        </ItemTemplate>
        <SelectedItemStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDanhMuc" runat="server" ConnectionString="<%$ ConnectionStrings:DoGiaDungConnectionString %>" SelectCommand="SELECT [category_id], [category_name] FROM [categories]"></asp:SqlDataSource>
        </td>
        <td>
            <img alt="" src="Images/danhmuc.PNG" style="width: 1114px; height: 260px" /></td>
    </tr>
</table>
    <br />
    <br />
 
</asp:Content>

