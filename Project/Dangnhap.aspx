<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Dangnhap.aspx.cs" Inherits="Dangnhap" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
       
        .login {
           position:relative;
           opacity:0.6;
           

        }
        #header-logo{
            position:absolute;
            top:50px;
            margin-left:550px;
            }
        .form-login{width:450px;
                    background-color:white;
                    top:150px;
                    margin-left:450px;
                    position:absolute;
                    text-align:center;
                    height:500px;
        }
        .auto-style1 {
            margin-left: 0px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="login">
        <img src="Images/anhnenlogin.jpg" style="width:100%;" /></div>
        <div id="header-logo">
            <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/Images/logo.png" style="width:200px; height:50px;" PostBackUrl="~/trangchu.aspx" />
        </div>
        <div class="form-login">
            <h3>Đăng nhập</h3>
            <asp:SqlDataSource ID="sqldangnhap" runat="server" ConnectionString="<%$ ConnectionStrings:DoGiaDungConnectionString %>" SelectCommand="SELECT * FROM [Accounts] WHERE (([username] = @username) AND ([password] = @password) AND ([role] = @role))">
                <SelectParameters>
                    <asp:ControlParameter ControlID="txtTenDN" Name="username" PropertyName="Text" Type="String" />
                    <asp:ControlParameter ControlID="txtMatKhau" Name="password" PropertyName="Text" Type="String" />
                    <asp:Parameter DefaultValue="0" Name="role" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
            <br />
            <br />
            <asp:TextBox ID="txtTenDN" runat="server" Width="416px" Height="27px" placeholder="Tài khoản" ></asp:TextBox>
                <br />
            <br />
            <br />
            <asp:TextBox ID="txtMatKhau" runat="server" Width="416px" Height="27px" placeholder="Mật khẩu" TextMode="Password"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="txterror" runat="server"></asp:Label>
            <br />
            <asp:Button ID="btnDangNhap" runat="server" Text="Đăng nhập" CssClass="auto-style1" Width="100px" OnClick="btnDangNhap_Click" />
            <br />
            <br />
            <asp:LinkButton ID="LinkButton2" runat="server" PostBackUrl="~/QuenMatKhau.aspx">Quên mật khẩu</asp:LinkButton>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/Dangki.aspx" >Đăng kí</asp:LinkButton>
            <br />
            <br />
        </div>
        
    
    </form>
</body>
</html>
