<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.Master" AutoEventWireup="true" CodeBehind="Product.aspx.cs" Inherits="ShoesWebApp.Product" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlacebody" runat="server">
    <center>
        <table>
            <tr>
                <td>
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" DataKeyNames="Product_ID" DataSourceID="SqlDataSource1" ForeColor="Black" ShowFooter="True" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating" OnRowDeleting="GridView1_RowDeleting">
                        <Columns>
                            <asp:TemplateField HeaderText="Product_ID">
                                <EditItemTemplate>
                                    <asp:Label ID="Label6" runat="server" Text='<%# Bind("Product_ID") %>'></asp:Label>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    
                                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("Product_ID") %>'></asp:Label>
                                    
                                </ItemTemplate>
                                <ItemStyle HorizontalAlign="Center" />
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Product Name">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Product_Name") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <FooterTemplate>
                                    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                                </FooterTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label2" runat="server" Text='<%# Eval("Product_Name") %>'></asp:Label>
                                </ItemTemplate>
                                <ItemStyle HorizontalAlign="Center" />
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Sales Price">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Sales_Price") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <FooterTemplate>
                                    <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                                </FooterTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label3" runat="server" Text='<%# Eval("Sales_Price") %>'></asp:Label>
                                </ItemTemplate>
                                <ItemStyle HorizontalAlign="Center" />
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Available Quantity">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("Available_Quantity") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <FooterTemplate>
                                    <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                                </FooterTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label4" runat="server" Text='<%# Eval("Available_Quantity") %>'></asp:Label>
                                </ItemTemplate>
                                <ItemStyle HorizontalAlign="Center" />
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Category Name">
                                <EditItemTemplate>
                                    <asp:DropDownList ID="DropDownList4" runat="server" DataSourceID="SqlDataSource5" DataTextField="Category_Name" DataValueField="Category_Name" SelectedValue='<%# Bind("Category_Name") %>'>
                                    </asp:DropDownList>
                                    <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:OnlineShopConnectionString %>" SelectCommand="SELECT DISTINCT [Category_Name] FROM [Product]"></asp:SqlDataSource>
                                </EditItemTemplate>
                                <FooterTemplate>
                                    <asp:DropDownList ID="DropDownList3" runat="server" DataSourceID="SqlDataSource4" DataTextField="Category_Name" DataValueField="Category_Name">
                                    </asp:DropDownList>
                                    <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:OnlineShopConnectionString %>" SelectCommand="SELECT DISTINCT [Category_Name] FROM [Product]"></asp:SqlDataSource>
                                </FooterTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label5" runat="server" Text='<%# Eval("Category_Name") %>'></asp:Label>
                                </ItemTemplate>
                                <ItemStyle HorizontalAlign="Center" />
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Operation">
                                <EditItemTemplate>
                                    <asp:LinkButton ID="LinkButton3" runat="server" OnClientClick="return confirm('are you sure ?');" CommandName="Update">Update</asp:LinkButton>
                                    <asp:LinkButton ID="LinkButton4" runat="server" CommandName="Cancel">Cancel</asp:LinkButton>
                                </EditItemTemplate>
                                <FooterTemplate>
                                    <asp:LinkButton ID="LinkButton5" runat="server" CommandName="Insert">Insert</asp:LinkButton>
                                </FooterTemplate>
                                <ItemTemplate>
                                    <asp:LinkButton ID="LinkButton1" runat="server" CommandName="Edit">Edit</asp:LinkButton>
                                    <asp:LinkButton ID="LinkButton2" runat="server" OnClientClick="return confirm('are you sure ?');" CommandName="Delete">Delete</asp:LinkButton>
                                </ItemTemplate>
                                <ItemStyle HorizontalAlign="Center" />
                            </asp:TemplateField>
                        </Columns>
                        <FooterStyle BackColor="#CCCCCC" />
                        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                        <RowStyle BackColor="White" />
                        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#F1F1F1" />
                        <SortedAscendingHeaderStyle BackColor="#808080" />
                        <SortedDescendingCellStyle BackColor="#CAC9C9" />
                        <SortedDescendingHeaderStyle BackColor="#383838" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:OnlineShopConnectionString %>" SelectCommand="SELECT * FROM [Product]" 
                        UpdateCommand ="update Product set Product_Name=@Product_Name,Sales_Price=@Sales_Price,Available_Quantity=@Available_Quantity,Category_Name=@Category_Name where Product_ID=@Product_ID"
                        InsertCommand ="INSERT INTO [Product] ([Product_Name],[Sales_Price],[Available_Quntity],[Category_Name]) VALUES (@Product_Name, @Sales_Price, @Available_Quantity, @Category_Name)"
                        DeleteCommand ="delete from Product where Product_ID=@Product_ID">

                       
                        
                        <UpdateParameters>
                                <asp:Parameter Name="Product_Name" Type="String" />
                                <asp:Parameter Name="Sales_Price" Type="Int32"/>
                                <asp:Parameter Name="Available_Quantity" Type="Int32" />
                                <asp:Parameter Name="Category_Name" Type="String" />
                                <asp:Parameter Name="Product_ID" Type="Int32" />
        
                        </UpdateParameters> 
                        <InsertParameters>
                        <asp:Parameter Name="Product_Name" Type="String" />
                                <asp:Parameter Name="Sales_Price" Type="Int32"/>
                                <asp:Parameter Name="Available_Quantity" Type="Int32" />
                                <asp:Parameter Name="Category_Name" Type="String" />
                    </InsertParameters>
                        <DeleteParameters>
                            <asp:Parameter Name="Product_ID" Type="Int32" />
                        </DeleteParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td>
                        <asp:Label ID="Label7" ForeColor="White" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
        </table>
    </center>
</asp:Content>
