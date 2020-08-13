<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPageBackEnd.master" AutoEventWireup="true" CodeFile="SanPham.aspx.cs" Inherits="Admin_SanPham" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:SqlDataSource ID="sqlSanPham" runat="server" ConnectionString="<%$ ConnectionStrings:DoGiaDungConnectionString %>" DeleteCommand="DELETE FROM [products] WHERE [product_id] = @product_id" InsertCommand="INSERT INTO [products] ([product_id], [category_id], [product_image], [product_name], [producer_name], [description], [cost], [state]) VALUES (@product_id, @category_id, @product_image, @product_name, @producer_name, @description, @cost, @state)" SelectCommand="SELECT * FROM [products]" UpdateCommand="UPDATE [products] SET [category_id] = @category_id, [product_image] = @product_image, [product_name] = @product_name, [producer_name] = @producer_name, [description] = @description, [cost] = @cost, [state] = @state WHERE [product_id] = @product_id">
        <DeleteParameters>
            <asp:Parameter Name="product_id" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="product_id" Type="String" />
            <asp:Parameter Name="category_id" Type="Int32" />
            <asp:Parameter Name="product_image" Type="String" />
            <asp:Parameter Name="product_name" Type="String" />
            <asp:Parameter Name="producer_name" Type="String" />
            <asp:Parameter Name="description" Type="String" />
            <asp:Parameter Name="cost" Type="Decimal" />
            <asp:Parameter Name="state" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="category_id" Type="Int32" />
            <asp:Parameter Name="product_image" Type="String" />
            <asp:Parameter Name="product_name" Type="String" />
            <asp:Parameter Name="producer_name" Type="String" />
            <asp:Parameter Name="description" Type="String" />
            <asp:Parameter Name="cost" Type="Decimal" />
            <asp:Parameter Name="state" Type="String" />
            <asp:Parameter Name="product_id" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="product_id" DataSourceID="sqlSanPham" PageSize="5" OnRowDeleted="GridView1_RowDeleted" OnRowUpdated="GridView1_RowUpdated">
        <Columns>
            <asp:CommandField CancelText="Hủy" DeleteText="Xóa" EditText="Sửa" ShowDeleteButton="True" ShowEditButton="True" UpdateText="Cập nhập" />
            <asp:BoundField DataField="product_id" HeaderText="Mã sản phẩm" ReadOnly="True" SortExpression="product_id" />
            <asp:BoundField DataField="category_id" HeaderText="Mã danh mục" SortExpression="category_id" />
            <asp:ImageField DataImageUrlField="product_image" DataImageUrlFormatString="~/images/{0}" HeaderText="Ảnh">
                <ControlStyle Height="80px" Width="80px" />
            </asp:ImageField>
            <asp:BoundField DataField="product_name" HeaderText="Tên sản phẩm" SortExpression="product_name" />
            <asp:BoundField DataField="producer_name" HeaderText="Hãng sản xuất" SortExpression="producer_name" />
            <asp:BoundField DataField="description" HeaderText="Mô tả" SortExpression="description" />
            <asp:BoundField DataField="cost" HeaderText="Gía" SortExpression="cost" />
            <asp:BoundField DataField="state" HeaderText="Tình trạng" SortExpression="state" />
        </Columns>
    </asp:GridView>
    <h1>Thêm mới 1 sản phẩm</h1>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DoGiaDungConnectionString %>" SelectCommand="SELECT * FROM [categories]"></asp:SqlDataSource>
    <table>
        <tr>
            <td>
                Mã sản phẩm
            </td>
            <td>
                <asp:TextBox ID="txtMa" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtMa" ErrorMessage="Cần nhập" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                Mã danh mục
            </td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="category_name" DataValueField="category_id"></asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td style="height: 24px">
                Hình ảnh
            </td>
            <td style="height: 24px">
                <asp:FileUpload ID="FileUploadAnh" runat="server" />
            </td>
        </tr>
        <tr>
            <td>
                Tên sản phẩm
            </td>
            <td>
                <asp:TextBox ID="txtTenSP" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtTenSP" ErrorMessage="Cần nhập" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                Hãng sản xuất
            </td>
            <td>
                <asp:TextBox ID="txtHang" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtHang" ErrorMessage="Cần nhập" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                Mô tả
            </td>
            <td>
                <asp:TextBox ID="txtMoTa" runat="server" Height="100px" TextMode="MultiLine" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                Giá
            </td>
            <td>
                <asp:TextBox ID="txtGia" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                Tình trạng
            </td>
            <td>
                <asp:TextBox ID="txtTinhTrang" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td >
                <asp:Button  ID="btnThem" runat="server" Text="Thêm mới" OnClick="btnThem_Click" />
            </td>
            <td >
                <asp:Button ID="btnNhapLai" runat="server" Text="NhapLai" OnClick="btnNhapLai_Click"  />
            </td>
        </tr>
    </table>
    <asp:Label ID="lblTT" runat="server" ForeColor="Red"></asp:Label><asp:Label ID="lblError" runat="server" ForeColor="Red"></asp:Label>

</asp:Content>

