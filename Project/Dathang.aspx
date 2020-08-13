<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Dathang.aspx.cs" Inherits="Dathang" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <style type="text/css">
        .hidden{
            display:none;
           
        }
        .show{
            display:inline-block;
        }
        .top{
            margin-top:10px
        }
        
    </style>
    <div style="padding:30px">
        <div>
        <asp:Label runat="server" ID="title" Font-Bold="True" Font-Size="20px">Kính chào khách hàng mới. Bạn chưa có tài khoản ư. Hãy nhấn nút bên dưới để tạo tài khoản</asp:Label>
        <asp:Label runat="server" ID="Label1" Font-Bold="True" Font-Size="20px">Kính chào khách hàng đến với trang đặt hàng</asp:Label>
        </div>
        <div>
            <asp:LinkButton ID="btnDangKi" runat="server" PostBackUrl="~/Dangki.aspx">Đăng kí</asp:LinkButton>
        </div>
        <div style="margin-top:10px">
           
            
            <asp:Panel ID="Panel1" runat="server" GroupingText="Thông tin người gủi">
                <asp:Table ID="Table1" runat="server">
                <asp:TableRow>
                    <asp:TableCell>
                        Tên người nhận
                    </asp:TableCell>
                    <asp:TableCell>
                        
                        <asp:TextBox ID="TextBox2" runat="server" placeholder="Tên người nhận" OnTextChanged="Text2_changed" ></asp:TextBox><asp:Label runat="server" Text="" id="lbl1"></asp:Label>
                         </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>
                        Số điện thoại
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:TextBox ID="TextBox3" runat="server" placeholder="Số điện thoại"  OnTextChanged="Text3_changed"></asp:TextBox><asp:Label runat="server" Text="" id="lbl2"></asp:Label>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>
                        Địa chỉ
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:TextBox ID="TextBox4" runat="server" placeholder="Địa chỉ" OnTextChanged="Text4_changed"></asp:TextBox><asp:Label runat="server" Text="" id="lbl3"></asp:Label>
                    </asp:TableCell>
                </asp:TableRow>

            </asp:Table>
                
            </asp:Panel>
            <asp:Panel ID="Panel3" runat="server" GroupingText="Thông tin người nhận" CssClass="top">
                <asp:Table ID="Table2" runat="server">
                <asp:TableRow>
                    <asp:TableCell>
                        Tên người nhận
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:TextBox ID="TextBox5" runat="server" placeholder="Tên người nhận" OnTextChanged="Text2_changed"></asp:TextBox><asp:Label runat="server" Text="" id="Label2"></asp:Label>
                         </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>
                        Số điện thoại
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:TextBox ID="TextBox6" runat="server" placeholder="Số điện thoại"  OnTextChanged="Text3_changed"></asp:TextBox><asp:Label runat="server" Text="" id="Label3"></asp:Label>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>
                        Địa chỉ
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:TextBox ID="TextBox7" runat="server" placeholder="Địa chỉ" OnTextChanged="Text4_changed"></asp:TextBox><asp:Label runat="server" Text="" id="Label4"></asp:Label>
                    </asp:TableCell>
                </asp:TableRow>

            </asp:Table>
                
            </asp:Panel>
        </div>
        <div style="margin-top:10px">
            <asp:Panel ID="Panel2" runat="server" GroupingText="Thông tin thanh toán">
                <table class="auto-style">
                    <tr>
                        <td>
                            <asp:CheckBox ID="ck" runat="server" Text="Thanh toán khi nhận hàng" OnCheckedChanged="ck_CheckedChanged" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <h4>Thông tin thẻ thanh toán
                                <table class="auto-style">
                                <tr>
                                    <td style="width:100px">
                                        Ngân hàng:
                                    </td>
                                    <td>
                                        <asp:DropDownList ID="DropDownList1" runat="server" Width="146px">
                                            <asp:ListItem>--Chọn ngân hàng--</asp:ListItem>
                                            <asp:ListItem>VietcomBank</asp:ListItem>
                                            <asp:ListItem>ViettinBank</asp:ListItem>
                                            <asp:ListItem>LienVietBank</asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width:100px; height: 26px;">Mã thẻ:</td>
                                    <td style="height: 26px">
                                        <asp:TextBox ID="TextBox1" runat="server" Width="146px" ></asp:TextBox>
                                    </td>
                                </tr>
                                </table>
                            </h4>

                        </td>
                    </tr>
                </table>
                
            </asp:Panel>
        </div>
        <div>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Width="100%">
            <Columns>
                <asp:BoundField DataField="Product_id" HeaderText="Mã sản phẩm" />
                <asp:TemplateField HeaderText="Tên sản phẩm">
                    <ItemTemplate>
                        <asp:Label ID="lblProductName" runat="server" Text='<%# Eval("Product_name") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="cost" HeaderText="Giá" />
                <asp:BoundField DataField="Qty" HeaderText="Số lượng" />
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
            <asp:Button ID="Button1" runat="server" Text="Đặt hàng" OnClick="Button1_Click" />
            <asp:Label ID="lblThongBao" runat="server" Text=""></asp:Label>
        </div>
        <div>
            <asp:SqlDataSource ID="SqlDsDonHang" runat="server" ConnectionString="<%$ ConnectionStrings:DoGiaDungConnectionString %>" DeleteCommand="DELETE FROM [Orders] WHERE [order_id] = @order_id" InsertCommand="INSERT INTO [Orders] ([order_id], [fullName], [order_create], [phoneNumber], [address], [money_sum]) VALUES (@order_id1, @fullName2, @order_create, @phoneNumber, @address, @money_sum)" SelectCommand="SELECT * FROM [Orders]" UpdateCommand="UPDATE [Orders] SET [fullName] = @fullName1, [order_create] = @order_create, [phoneNumber] = @phoneNumber, [address] = @address, [money_sum] = @money_sum WHERE [order_id] = @order_id">
                <DeleteParameters>
                    <asp:Parameter Name="order_id" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="order_id1" Type="String" />
                    <asp:Parameter Name="fullName2" Type="String" />
                    <asp:Parameter Name="order_create" Type="DateTime" />
                    <asp:Parameter Name="phoneNumber" Type="String" />
                    <asp:Parameter Name="address" Type="String" />
                    <asp:Parameter Name="money_sum" Type="Decimal" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="fullName1" Type="String" />
                    <asp:Parameter Name="order_create" Type="DateTime" />
                    <asp:Parameter Name="phoneNumber" Type="String" />
                    <asp:Parameter Name="address" Type="String" />
                    <asp:Parameter Name="money_sum" Type="Decimal" />
                    <asp:Parameter Name="order_id" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
    </div>  
</asp:Content>

