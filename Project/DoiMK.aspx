<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="DoiMK.aspx.cs" Inherits="DoiMK" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h3>Đổi mật khẩu</h3>
    Tên tài khoản:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    <br />
    Mật khẩu:&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
    <br />
    Nhập lại mật khẩu:&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
    <br />
    <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
<br />
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DoGiaDungConnectionString %>" DeleteCommand="DELETE FROM [Accounts] WHERE [username] = @username" InsertCommand="INSERT INTO [Accounts] ([username], [password], [fullname], [gender], [date_create], [phonenumber], [email], [address], [role]) VALUES (@username, @password, @fullname, @gender, @date_create, @phonenumber, @email, @address, @role)" SelectCommand="SELECT * FROM [Accounts]" UpdateCommand="UPDATE [Accounts] SET [password] = @password, [fullname] = @fullname, [gender] = @gender, [date_create] = @date_create, [phonenumber] = @phonenumber, [email] = @email, [address] = @address, [role] = @role WHERE [username] = @username">
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
<asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Hoàn thành" Width="90px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button2" runat="server" PostBackUrl="~/thongtincanhan.aspx" Text="Hủy" Width="90px" />
<br />
    <br />
    <br />
    <br />
</asp:Content>

