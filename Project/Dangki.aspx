<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Dangki.aspx.cs" Inherits="Dangki" %>

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
    <div>
    <div class="login">
        <img src="Images/anhnenlogin.jpg" style="width:100%;" /></div>
        <div id="header-logo">
            <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/Images/logo.png" style="width:200px; height:50px;" PostBackUrl="~/trangchu.aspx" />
        </div>
        <div class="form-login">
            <h3>Đăng kí</h3><br />
            <br />
            <asp:TextBox ID="txtTenDN" runat="server" Width="416px" Height="27px" placeholder="Tên tài khoản" ControlToValidate="txtTenDN"></asp:TextBox>
            <br />
            <br />
           
            <asp:TextBox ID="txtmatkhau" runat="server" Width="416px" Height="27px" placeholder="Mật khẩu" TextMode="Password"></asp:TextBox>
            <br />
            
            <br />
            
            <asp:TextBox ID="txtten" runat="server" Width="416px" Height="27px" placeholder="Họ và tên"></asp:TextBox>
            <br />
            <br />
            
            <asp:TextBox ID="txtgioitinh" runat="server" Width="416px" Height="27px" placeholder="Giới tính"></asp:TextBox>
            <br />
            <br />
           
            <asp:TextBox ID="txtdienthoai" runat="server" Width="416px" Height="27px" placeholder="Số điện thoại"></asp:TextBox>
            <br />
            <br />
           
            <asp:TextBox ID="txtdiachi" runat="server" Width="416px" Height="27px" placeholder="Địa chỉ"></asp:TextBox>
            <br />
            <br />
            
            <asp:Button ID="btnthemthanhvien" runat="server" Text="Đăng ký" CssClass="auto-style1" Width="100px" OnClick="btnthemthanhvien_Click" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnhuydangky" runat="server" Text="Hủy" CssClass="auto-style1" Width="100px" OnClick="btnhuydangky_Click" PostBackUrl="~/trangchu.aspx"  />
            <br />
            <br />
        <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
            <br />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DoGiaDungConnectionString %>" DeleteCommand="DELETE FROM [Accounts] WHERE [username] = @username" InsertCommand="INSERT INTO [Accounts] ([username], [password], [fullname], [gender], [date_create], [phonenumber], [email], [address], [role]) VALUES (@username, @password, @fullname, @gender, @date_create, @phonenumber, @email, @address, @role)" SelectCommand="SELECT * FROM [Accounts] WHERE ([username] = @username)" UpdateCommand="UPDATE [Accounts] SET [password] = @password, [fullname] = @fullname, [gender] = @gender, [date_create] = @date_create, [phonenumber] = @phonenumber, [email] = @email, [address] = @address, [role] = @role WHERE [username] = @username">
                <DeleteParameters>
                    <asp:Parameter Name="username" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="username" Type="String" />
                    <asp:Parameter Name="password" Type="String" />
                    <asp:Parameter Name="fullname" Type="String" />
                    <asp:Parameter Name="gender" Type="String" />
                    <asp:Parameter Name="date_create" Type="DateTime" />
                    <asp:Parameter Name="phonenumber" Type="Decimal" />
                    <asp:Parameter Name="email" Type="String" />
                    <asp:Parameter Name="address" Type="String" />
                    <asp:Parameter Name="role" Type="String" />
                </InsertParameters>
                <SelectParameters>
                    <asp:ControlParameter ControlID="txtTenDN" Name="username" PropertyName="Text" Type="String" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="password" Type="String" />
                    <asp:Parameter Name="fullname" Type="String" />
                    <asp:Parameter Name="gender" Type="String" />
                    <asp:Parameter Name="date_create" Type="DateTime" />
                    <asp:Parameter Name="phonenumber" Type="Decimal" />
                    <asp:Parameter Name="email" Type="String" />
                    <asp:Parameter Name="address" Type="String" />
                    <asp:Parameter Name="role" Type="String" />
                    <asp:Parameter Name="username" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:DoGiaDungConnectionString %>" DeleteCommand="DELETE FROM [Accounts] WHERE [username] = @username" InsertCommand="INSERT INTO [Accounts] ([username], [password], [fullname], [gender], [date_create], [phonenumber], [email], [address], [role]) VALUES (@username, @password, @fullname, @gender, @date_create, @phonenumber, @email, @address, @role)" SelectCommand="SELECT * FROM [Accounts]" UpdateCommand="UPDATE [Accounts] SET [password] = @password, [fullname] = @fullname, [gender] = @gender, [date_create] = @date_create, [phonenumber] = @phonenumber, [email] = @email, [address] = @address, [role] = @role WHERE [username] = @username">
                <DeleteParameters>
                    <asp:Parameter Name="username" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="username" Type="String" />
                    <asp:Parameter Name="password" Type="String" />
                    <asp:Parameter Name="fullname" Type="String" />
                    <asp:Parameter Name="gender" Type="String" />
                    <asp:Parameter Name="date_create" Type="DateTime" />
                    <asp:Parameter Name="phonenumber" Type="Decimal" />
                    <asp:Parameter Name="email" Type="String" />
                    <asp:Parameter Name="address" Type="String" />
                    <asp:Parameter Name="role" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="password" Type="String" />
                    <asp:Parameter Name="fullname" Type="String" />
                    <asp:Parameter Name="gender" Type="String" />
                    <asp:Parameter Name="date_create" Type="DateTime" />
                    <asp:Parameter Name="phonenumber" Type="Decimal" />
                    <asp:Parameter Name="email" Type="String" />
                    <asp:Parameter Name="address" Type="String" />
                    <asp:Parameter Name="role" Type="String" />
                    <asp:Parameter Name="username" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <br />
            
    </div>
        </div>
    </form>
</body>
</html>
