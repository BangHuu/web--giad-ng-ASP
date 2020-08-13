<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="SuaThongTin.aspx.cs" Inherits="SuaThongTin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
           <h3>Sửa thông tin cá nhân</h3>
           <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="281px" AutoGenerateRows="False" DataSourceID="SqlDataSource1">
               <Fields>
                   <asp:BoundField DataField="fullname" HeaderText="Họ và tên" SortExpression="fullname" />
                   <asp:BoundField DataField="gender" HeaderText="Giới tính" SortExpression="gender" />
                   <asp:BoundField DataField="phonenumber" HeaderText="Số điện thoại" SortExpression="phonenumber" />
                   <asp:BoundField DataField="address" HeaderText="Địa chỉ" SortExpression="address" />
               </Fields>
           </asp:DetailsView>
           <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DoGiaDungConnectionString %>" SelectCommand="SELECT [fullname], [gender], [phonenumber], [address] FROM [Accounts] WHERE ([username] = @username)">
               <SelectParameters>
                   <asp:SessionParameter Name="username" SessionField="UserName" Type="String" />
               </SelectParameters>
</asp:SqlDataSource>
           <br />
           <hr />
           <br />
           <asp:Button ID="Button1" runat="server" Text="cập nhật" OnClick="Button1_Click" />
                
            <br />
            <br />
            <asp:TextBox ID="txthoten" runat="server" Width="416px" Height="27px" placeholder="Giới tính"></asp:TextBox>
                            
            <br />
            <br />
            <asp:TextBox ID="txtgioitinh" runat="server" Width="416px" Height="27px" placeholder="Địa chỉ"></asp:TextBox>
                           
            <br />
            <br />
            <asp:TextBox ID="txtdienthoai" runat="server" Width="416px" Height="27px" placeholder="Số diện thoại"></asp:TextBox>
                            
            <br />
            <br />
            <asp:TextBox ID="txtdiachi" runat="server" Width="416px" Height="27px" placeholder="Email"></asp:TextBox>
                            
            <br />
           <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
           <asp:Button ID="btlSua" runat="server" OnClick="btlSua_Click" Text="Sửa" Width="70px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
           <asp:Button ID="btlHuy" runat="server" OnClick="btlHuy_Click" Text="Hủy" Width="70px" />
                            
            <br />
<asp:Label ID="Label1" runat="server"></asp:Label>
                            
            <br />
            <br />
</asp:Content>

