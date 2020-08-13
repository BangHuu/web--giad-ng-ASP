<%@ Page Language="C#" AutoEventWireup="true" CodeFile="thongtincanhan.aspx.cs" Inherits="thongtincanhan" %>

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
        .auto-style2 {
            position: relative;
            opacity: 0.6;
            left: 1px;
            top: 0px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <div class="auto-style2">
        <img src="Images/anhnenlogin.jpg" style="width:100%;" /></div>
        <div id="header-logo">
            <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/Images/logo.png" style="width:200px; height:50px;" PostBackUrl="~/trangchu.aspx" />
        </div>
        <div class="form-login">
            <h3>Thông tin cá nhân</h3><br />
            <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="443px" AutoGenerateRows="False" DataSourceID="SqlDataSource1">
                <Fields>
                    <asp:BoundField DataField="fullname" HeaderText="Họ và tên" SortExpression="fullname" />
                    <asp:BoundField DataField="gender" HeaderText="Giới tính" SortExpression="gender" />
                    <asp:BoundField DataField="date_create" HeaderText="Ngày tạo tài khoản" SortExpression="date_create" />
                    <asp:BoundField DataField="phonenumber" HeaderText="Số điện thoại" SortExpression="phonenumber" />
                    <asp:BoundField DataField="address" HeaderText="Địa chỉ" SortExpression="address" />
                </Fields>
            </asp:DetailsView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DoGiaDungConnectionString %>" SelectCommand="SELECT [fullname], [gender], [date_create], [phonenumber], [address] FROM [Accounts] WHERE ([username] = @username)">
                <SelectParameters>
                    <asp:SessionParameter Name="username" SessionField="UserName" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
            <br />
            <br />
            <hr />
            <br />
            <br />
            <asp:Button ID="Button2" runat="server" Text="Cập nhật" PostBackUrl="~/SuaThongTin.aspx" Width="80px" OnClick="Button2_Click" />

           

            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

           

            <asp:Button ID="bltdoimatkhau" runat="server" Text="Đổi mật khẩu" PostBackUrl="~/DoiMK.aspx" Width="100px" />
            
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            
                <asp:Button ID="Button1" runat="server" Text="Thoát" CssClass="auto-style1" Width="100px" PostBackUrl="~/trangchu.aspx" />
           
            <br />
            <br />
           
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
            <br />
        
            
    </div>
    </form>
</body>
</html>
