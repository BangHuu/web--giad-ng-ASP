<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Chitietsp.aspx.cs" Inherits="Chitietsp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <style>
        #ContentPlaceHolder1_FormView1{
            margin-left: calc((100% - 1016px)/2);
        }

    </style>
    <h2 style="color: #FF0000; margin-left:171px;">Chi tiết sản phẩm</h2>
    <div class="form-1">
    <p>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DoGiaDungConnectionString %>" SelectCommand="SELECT * FROM [products] WHERE ([product_id] = @product_id)">
            <SelectParameters>
                <asp:QueryStringParameter Name="product_id" QueryStringField="product_id" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    </p>
        <p>
            <asp:FormView ID="FormView1" runat="server" DataKeyNames="product_id" DataSourceID="SqlDataSource1" OnItemCommand="FormView1_ItemCommand">
                <EditItemTemplate>
                    product_id:
                    <asp:Label ID="product_idLabel1" runat="server" Text='<%# Eval("product_id") %>' />
                    <br />
                    category_id:
                    <asp:TextBox ID="category_idTextBox" runat="server" Text='<%# Bind("category_id") %>' />
                    <br />
                    product_image:
                    <asp:TextBox ID="product_imageTextBox" runat="server" Text='<%# Bind("product_image") %>' />
                    <br />
                    product_name:
                    <asp:TextBox ID="product_nameTextBox" runat="server" Text='<%# Bind("product_name") %>' />
                    <br />
                    producer_name:
                    <asp:TextBox ID="producer_nameTextBox" runat="server" Text='<%# Bind("producer_name") %>' />
                    <br />
                    description:
                    <asp:TextBox ID="descriptionTextBox" runat="server" Text='<%# Bind("description") %>' />
                    <br />
                    cost:
                    <asp:TextBox ID="costTextBox" runat="server" Text='<%# Bind("cost") %>' />
                    <br />
                    state:
                    <asp:TextBox ID="stateTextBox" runat="server" Text='<%# Bind("state") %>' />
                    <br />
                    <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                    &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </EditItemTemplate>
                <InsertItemTemplate>
                    product_id:
                    <asp:TextBox ID="product_idTextBox" runat="server" Text='<%# Bind("product_id") %>' />
                    <br />
                    category_id:
                    <asp:TextBox ID="category_idTextBox" runat="server" Text='<%# Bind("category_id") %>' />
                    <br />
                    product_image:
                    <asp:TextBox ID="product_imageTextBox" runat="server" Text='<%# Bind("product_image") %>' />
                    <br />
                    product_name:
                    <asp:TextBox ID="product_nameTextBox" runat="server" Text='<%# Bind("product_name") %>' />
                    <br />
                    producer_name:
                    <asp:TextBox ID="producer_nameTextBox" runat="server" Text='<%# Bind("producer_name") %>' />
                    <br />
                    description:
                    <asp:TextBox ID="descriptionTextBox" runat="server" Text='<%# Bind("description") %>' />
                    <br />
                    cost:
                    <asp:TextBox ID="costTextBox" runat="server" Text='<%# Bind("cost") %>' />
                    <br />
                    state:
                    <asp:TextBox ID="stateTextBox" runat="server" Text='<%# Bind("state") %>' />
                    <br />
                    <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                    &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </InsertItemTemplate>
                <ItemTemplate>
                    <table class="auto-style1">
                        <tr>
                            <td>
                                <asp:Image ID="Image1" CssClass="imagess" runat="server" Height="500px" ImageUrl='<%# Eval("product_image", "~/Images/{0}") %>' Width="500px" />
                            </td>

                            
                            <td><iframe width="500" height="300" src="https://www.youtube.com/embed/mXGEsCFDOwA" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                                <br />
                                <img alt="" src="Images/Chảo%20sâu%20lòng,%20đáy%20từ%20Mega%20Titanium%20(IH)%2028cm.jpg" style="width: 250px; height: 200px" />
                                <img alt="" src="Images/logo-trangchu.png" style="width: 250px; height: 200px" />
                            </td>
                             
                    </tr>
                        <tr>
                            <td>
                                <asp:Label ID="product_nameLabel" runat="server" Font-Bold="True" Text='<%# Bind("product_name") %>' Font-Size="15px" Width="500px" />
                                <br />
                                <asp:Label ID="product_idLabel" runat="server" Font-Bold="True" Font-Size="14px" Text='<%# Bind("product_id") %>' Width="500px" />
                            </td>

                        </tr>
                        <tr>
                            <td style="font-size: 15px">Giá tiền:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Label ID="costLabel" runat="server" ForeColor="Red" Text='<%# Bind("cost") %>' Font-Bold="True" />
                            </td>
                        </tr>
                        <tr>
                            <td style="font-size: 15px">Tình trạng:&nbsp;&nbsp;
                                <asp:Label ID="stateLabel" runat="server" ForeColor="Lime" Text='<%# Bind("state") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td style="height: 21px">
                                <asp:Button ID="Button1" runat="server" BackColor="Red" BorderColor="Red" Font-Bold="True" ForeColor="White" Height="35px" OnClick="Button1_Click" Text="Thêm vào giỏ hàng" Width="200px" />
                            </td>
                        </tr>
                        <tr>
                            <td style="font-size: 15px">Mô tả:</td>
                        </tr>
                        <tr>
                            <td style="font-size: 15px">
                                <iframe</td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="descriptionLabel" runat="server" Font-Size="15px" Text='<%# Bind("description") %>' Width="500px" />
                            </td>
                        </tr>
                    </table>
                    <br />
                    <br />

                </ItemTemplate>
            </asp:FormView>
    </p>
        </div>
    <p>&nbsp;</p>
    <br />
    
</asp:Content>

