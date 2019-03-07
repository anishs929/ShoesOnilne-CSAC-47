<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.Master" AutoEventWireup="true" CodeBehind="AddProduct.aspx.cs" Inherits="ShoesWebApp.AddProduct" %>
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
    .auto-style1 {
        height: 44px;
    }
    </style>
<center>
    <table>
        <tr align="center">
            <td colspan="2" align="center">
                <h2  style="font-family: Baskerville Old Face; font-weight: 500; font-size: xx-large;
                    color: white; font-weight: bold">
                    Product
                </h2>
            </td>
        </tr>
        <tr>
            <td>
            <div style="font-size: medium; color: white; font-weight: bold">
                Product Name:
                </div>
            </td>
            <td>
                <asp:TextBox ID="txtProductName" class="text-style" ToolTip="Enter Product Name" placeholder="Product Name" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvProductName" runat="server" ErrorMessage="Enter Product Name" ControlToValidate="txtProductName" ForeColor="White"></asp:RequiredFieldValidator>
               <asp:RegularExpressionValidator ID="revPRoductName" runat="server" ErrorMessage="
                   Only Character" ControlToValidate="txtProductName" ForeColor="White" ValidationExpression="^[A-Z a-z]+$"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td>
            <div style="font-size: medium; color: white; font-weight: bold">
                Sales Price:
                </div>
            </td>
            <td>
                <asp:TextBox ID="txtSalesPrice" class="text-style" placeholder="Sales Price" ToolTip="Enter Sales Price" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvSalesPrice" runat="server" ErrorMessage="Enter Sales Price" ControlToValidate="txtSalesPrice" ForeColor="White"></asp:RequiredFieldValidator>
               <asp:RegularExpressionValidator ID="revSalesPrice" runat="server" ErrorMessage="Only Numbers" ControlToValidate="txtSalesPrice" ForeColor="White" ValidationExpression="^[0-9]{1,10}$"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">
            <div style="font-size: medium; color: white; font-weight: bold">
                Available Quantity:
                </div>
            </td>
            <td class="auto-style1">
                <asp:TextBox ID="txtavaquantity" class="text-style" placeholder="Available Quantity" ToolTip="Enter Available Quantity" runat="server"></asp:TextBox>
               <asp:RequiredFieldValidator ID="rfvavaquantity" runat="server" ErrorMessage="Enter Available Quntity" ControlToValidate="txtavaquantity" ForeColor="White"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="revavaquantity" runat="server" ErrorMessage="Only Numbers" ControlToValidate="txtavaquantity" ForeColor="White" ValidationExpression="^[0-9]{1,10}$"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td>
            <div style="font-size: medium; color: white; font-weight: bold">
                Category Name:
                </div>
            </td>
            <td>
                <asp:DropDownList ID="ddlCategoryName" class="text-style" ToolTip="Select Category Name" runat="server">
                
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="rfvddlCategoryName" runat="server" ErrorMessage="Select Category Name" ControlToValidate="ddlCategoryName" ForeColor="White"></asp:RequiredFieldValidator>
               
            </td>
        </tr>
        
      
        
        <tr>
            <td colspan="2" align="center">
                <asp:Button ID="btnsubmit" class="btn-style" runat="server" Text="Submit" ToolTip="Submit" OnClick="btnsubmit_Click" 
                     />
                <asp:Button ID="btnCancel" class="btn-style" runat="server" Text="Cancel" ToolTip="Cancel" />
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblmessage" runat="server" ForeColor="White"></asp:Label>
            </td>
        </tr>
        
      
    </table>
</center>
</asp:Content>
