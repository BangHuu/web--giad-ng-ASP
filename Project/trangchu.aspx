<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="trangchu.aspx.cs" Inherits="trangchu" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <style> 
        
    </style>
    <div class="header-trangchu">
    <asp:ImageButton ID="ImageButton1" runat="server" CssClass="img-trangchu"  ImageUrl="~/Images/logo-trangchu.png"/>
        </div>
    <p>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DoGiaDungConnectionString %>" SelectCommand="SELECT * FROM [products]"></asp:SqlDataSource>
    </p>
    
        
        <asp:DataList ID="DataList1" runat="server" DataKeyField="product_id" DataSourceID="SqlDataSource1" RepeatColumns="4" RepeatDirection="Horizontal" Width="100%">
            <ItemTemplate>
                <table class="auto-stylekk" style="padding-left:50px;">
                    <tr>
                        <td>
                            <asp:Image ID="Image1" runat="server" Height="250px" ImageUrl='<%# Eval("product_image", "~/Images/{0}") %>' Width="230px" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="product_nameLabel" runat="server" Font-Bold="True" Text='<%# Eval("product_name") %>' Width="230px" Font-Size="15px" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="costLabel" runat="server" ForeColor="Red" Text='<%# Eval("cost") %>' Width="230px" Font-Size="15px" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# Eval("product_id", "Chitietsp.aspx?product_id={0}") %>' Width="230px" Font-Size="15px">Xem chi tiết</asp:HyperLink>
                        </td>
                    </tr>
                </table>
                <br />
<br />
            </ItemTemplate>
        </asp:DataList>
           
    

</asp:Content>

