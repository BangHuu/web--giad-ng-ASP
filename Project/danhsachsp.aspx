<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="danhsachsp.aspx.cs" Inherits="danhsachsp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <style>
        #ContentPlaceHolder1_DataList2{
            margin-left: 49px;
            
        }
    </style>
    <div class="header-trangchu">
    <asp:ImageButton ID="ImageButton1" runat="server" CssClass="img-trangchu"  ImageUrl="~/Images/logo-trangchu.png"/>
        </div>
    <asp:DataList ID="DataList2" runat="server" DataSourceID="SqlDsSanPham" RepeatColumns="4" RepeatDirection="Horizontal" Width="100%">
        <ItemTemplate>
            <table class="auto-style">
                <tr>
                    <td>
                        <asp:Image ID="Image1" runat="server" Height="250px" ImageUrl='<%# Eval("product_image", "~/Images/{0}") %>' Width="230px" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="product_nameLabel" runat="server" Text='<%# Eval("product_name") %>' Width="230px" Font-Bold="True" Font-Size="15px" />
                        
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="costLabel" runat="server" Text='<%# Eval("cost") %>' Font-Size="15px" ForeColor="Red" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl='<%# Eval("product_id", "Chitietsp.aspx?product_id={0}") %>' Font-Size="15px">Xem chi tiết</asp:HyperLink>
                    </td>
                </tr>
            </table>
            <br />
            <br />
            <br />
            &nbsp;<br />
<br />
        </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDsSanPham" runat="server" ConnectionString="<%$ ConnectionStrings:DoGiaDungConnectionString %>" SelectCommand="SELECT * FROM [products] WHERE ([category_id] = @category_id)">
        <SelectParameters>
            <asp:QueryStringParameter Name="category_id" QueryStringField="category_id" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
&nbsp;

</asp:Content>

