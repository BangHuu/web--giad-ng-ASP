<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPageBackEnd.master" AutoEventWireup="true" CodeFile="DanhMuc.aspx.cs" Inherits="Admin_DanhMuc" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DoGiaDungConnectionString %>" DeleteCommand="DELETE FROM [categories] WHERE [category_id] = @category_id" InsertCommand="INSERT INTO [categories] ([category_name]) VALUES (@category_name)" SelectCommand="SELECT * FROM [categories]" UpdateCommand="UPDATE [categories] SET [category_name] = @category_name WHERE [category_id] = @category_id">
        <DeleteParameters>
            <asp:Parameter Name="category_id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="category_name" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="category_name" Type="String" />
            <asp:Parameter Name="category_id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="category_id" DataSourceID="SqlDataSource1" PageSize="5" OnRowDeleted="GridView1_RowDeleted" OnRowUpdated="GridView1_RowUpdated">
        <Columns>
            <asp:CommandField CancelText="Hủy" DeleteText="Xóa" EditText="Sửa" ShowDeleteButton="True" ShowEditButton="True" UpdateText="Cập nhập" />
            <asp:BoundField DataField="category_id" HeaderText="Mã danh mục" InsertVisible="False" ReadOnly="True" SortExpression="category_id" />
            <asp:BoundField DataField="category_name" HeaderText="Tên danh mục" SortExpression="category_name" />
        </Columns>
    </asp:GridView>
     <br />
   <h2>Thêm mới danh mục</h2>
    <asp:label runat="server" text="Tên sản phẩm : "></asp:label>
    <asp:textbox runat="server" ID="txtTen"></asp:textbox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtTen" ErrorMessage="Cần nhập" ForeColor="Red"></asp:RequiredFieldValidator>
    <br />
    <asp:button runat="server" text="Thêm mới" ID="btnThem" OnClick="btnThem_Click" /><br />
       <asp:label runat="server" ID="lblTT" ForeColor="Red"></asp:label>

</asp:Content>

