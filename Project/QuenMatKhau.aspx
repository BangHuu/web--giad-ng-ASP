<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="QuenMatKhau.aspx.cs" Inherits="QuenMatKhau" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h2>Mời bạn nhập số điện thoại để gửi mã OTP!</h2>
    <h3>Mời nhập mã xác nhận</h3>
    <div>

        <table class="auto-style">
            <tr>
                <td class="auto-style3" style="width: 85px">
                    <asp:Label ID="Label1" runat="server" Text="Mã OTP:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" Width="279px"></asp:TextBox>
                    <br />
                </td>
            </tr>
        </table>

    </div>
    <div>
        <asp:Button runat="server" Text="Xác nhận"/>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button runat="server" Text="Quay lại" PostBackUrl="~/trangchu.aspx" />
        <br />
    </div>
    
</asp:Content>

