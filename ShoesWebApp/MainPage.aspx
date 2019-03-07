<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.Master" AutoEventWireup="true" CodeBehind="MainPage.aspx.cs" Inherits="ShoesWebApp.MainPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlacebody" runat="server">
    <style type="text/css">
        .text-style
        {
            width: 150px;
            height: 30px;
            border-radius:4px;
            font-size:medium
        }
        .btn-style
        {
            width: 75px;
            height: 30px;
            font-size:medium;
            color:black
          
        }
    </style>
    <center>
    <table>
        
        <tr>
            <td colspan="2" align="center">
                <h2  style="font-family: Baskerville Old Face; font-weight: 500; font-size: xx-large;
                    color: white; font-weight: bold">
                     Inventory  Details :
                </h2>
            </td>
        </tr>
        <tr>
            <td>
              <asp:Button ID="AddCategory" Text="Add Category" runat="server" Width="190px" class="btn-style" ToolTip="Add Category" OnClick="AddCategory_Click"></asp:Button> 
            </td>
        </tr>
        <tr>
        
            <td>
                   <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" DataSourceID="SqlDataSource1" ForeColor="Black">
                       <Columns>
                           <asp:BoundField DataField="Category_Name" HeaderText="Category_Name" SortExpression="Category_Name" />
                           <asp:BoundField DataField="Product_Name" HeaderText="Product_Name" SortExpression="Product_Name" />
                           <asp:BoundField DataField="Available_Quantity" HeaderText="Available_Quantity" SortExpression="Available_Quantity" />
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
                   <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:OnlineShopConnectionString %>" SelectCommand="select Category.Category_Name,Product.Product_Name,Product.Available_Quantity from Category,Product where Category.Category_Name=Product.Category_Name"></asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td>

            </td>
            
        </tr>
        <tr>
            <td>
                    &nbsp;
            </td>
        </tr>
        <tr>
            <td>
                    &nbsp;
            </td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="AddProduct" runat="server" Text="Add Product" Width="190px" class="btn-style" ToolTip="Add Product" OnClick="AddProduct_Click"></asp:Button>
            </td>
        </tr>
        <tr>
            <td>
                   <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" DataSourceID="SqlDataSource2" ForeColor="Black">
                       <Columns>
                           <asp:BoundField DataField="Category_Name" HeaderText="Category_Name" SortExpression="Category_Name" />
                           <asp:BoundField DataField="Product_Name" HeaderText="Product_Name" SortExpression="Product_Name" />
                           <asp:BoundField DataField="Available_Quantity" HeaderText="Available_Quantity" SortExpression="Available_Quantity" />
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
                   <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:OnlineShopConnectionString %>" SelectCommand="SELECT [Category_Name], [Product_Name], [Available_Quantity] FROM [Product]"></asp:SqlDataSource>
            </td>
        </tr>
    </table>
    </center>

</asp:Content>
