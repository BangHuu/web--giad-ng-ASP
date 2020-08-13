<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DangnhapAdmin.aspx.cs" Inherits="Admin_DangnhapAdmin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="margin-top:200px ; border:1px solid blue">
            
            <table align="center" >
                <tr>
                    <td colspan="2"><h1>Đăng nhập hệ thống</h1></td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label1" runat="server" Text="Tên đăng nhập : "></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtTenDN" placerhoder="Tài khoản" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtTenDN" ErrorMessage="Cần nhập" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>

                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label2" runat="server" Text="Mật khẩu"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtMatKhau" placerhoder="Mật khẩu" runat="server" TextMode="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtMatKhau" ErrorMessage="Cần nhập" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>

                </tr>
                <tr>
                    <td><asp:Button ID="btnDangnhap" runat="server" Text="Đăng nhập" OnClick="btnDangnhap_Click" />
                        <asp:SqlDataSource ID="sqlDangNhap" runat="server" ConnectionString="<%$ ConnectionStrings:DoGiaDungConnectionString %>" SelectCommand="SELECT [username], [password] FROM [Accounts] WHERE (([username] = @username) AND ([password] = @password) AND ([role] = @role))">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="txtTenDN" Name="username" PropertyName="Text" Type="String" />
                                <asp:ControlParameter ControlID="txtMatKhau" Name="password" PropertyName="Text" Type="String" />
                                <asp:Parameter DefaultValue="1" Name="role" Type="String" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                        <br />
                        <asp:Label ID="lblError" runat="server" ForeColor="Red" Text="Label"></asp:Label>
                    </td>
                </tr>
            </table>
            </div>
    </form>
</body>
</html>
