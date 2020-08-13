<%@ Page Language="C#" AutoEventWireup="true" CodeFile="suathongtincanhan.aspx.cs" Inherits="suathongtincanhan" %>

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
                    height:563px;
        }
        .auto-style1 {
            margin-left: 0px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <div class="login">
        <img src="Images/anhnenlogin.jpg" style="width:100%;" /></div>
        <div id="header-logo">
            <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/Images/logo.png" style="width:200px; height:50px;" PostBackUrl="~/trangchu.aspx" />
        </div>
        <div class="form-login">
            <h3>Sửa thông tin cá nhân</h3><br />
            <br />
            <asp:TextBox ID="txtTenDN" runat="server" Width="416px" Height="27px" placeholder="Họ và tên"></asp:TextBox>
                <br />
            <br />
            <br />
            <asp:TextBox ID="TextBox1" runat="server" Width="416px" Height="27px" placeholder="Giới tính"></asp:TextBox>
                            <br />
            <br />
            <br />
            <asp:TextBox ID="TextBox2" runat="server" Width="416px" Height="27px" placeholder="Địa chỉ"></asp:TextBox>
                            <br />
            <br />
            <br />
            <asp:TextBox ID="TextBox3" runat="server" Width="416px" Height="27px" placeholder="Số diện thoại"></asp:TextBox>
                            <br />
            <br />
            <br />
            <asp:TextBox ID="txtEmail" runat="server" Width="416px" Height="27px" placeholder="Email"></asp:TextBox>
                            <br />
            <br />
            <br />
            <asp:TextBox ID="txtMatKhau" runat="server" Width="416px" Height="27px" placeholder="Mật khẩu"></asp:TextBox>
            <br />
            <br />
            <br />
            <asp:TextBox ID="txtnhap" runat="server" Width="416px" Height="27px" placeholder="Nhập lại mật khẩu"></asp:TextBox>
            <br />
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" Text="Thoát" CssClass="auto-style1" Width="100px" />
            <asp:Button ID="btnDangNhap" runat="server" Text="Lưu" CssClass="auto-style1" Width="100px" />
            <br />
            <br />
            
    </div>
    </form>
</body>
</html>
