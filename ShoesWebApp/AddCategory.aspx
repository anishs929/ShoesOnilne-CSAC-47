<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.Master" AutoEventWireup="true" CodeBehind="AddCategory.aspx.cs" Inherits="ShoesWebApp.AddCategory" %>
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
                     Add Category 
                </h2>
            </td>
        </tr>
       
        <tr>
            <td>
            <div style="font-size: medium; color: white; font-weight: bold">
                Category Name:
                </div>
            </td>
            <td>
                <asp:TextBox ID="txtCategoryname" class="text-style"  Width="200px"  placeholder="Enter Category Name"
                    ToolTip="Enter Category Name" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvCategoryname" runat="server"
                    ControlToValidate="txtCategoryname" ErrorMessage="Enter Category" ForeColor="White"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="revcategoryname" runat="server" ErrorMessage="Only Character" ControlToValidate="txtCategoryname" ForeColor="White" ValidationExpression="^[a-zA-Z]+$"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td colspan="2" align="center">
                <asp:Button ID="btnAdd" class="btn-style" ToolTip="Submit" runat="server" Text="Submit" OnClick="btnAdd_Click"></asp:Button>
                <asp:Button ID="btnCancel" class="btn-style" runat="server" Text="Cancel" ToolTip="Cancel" />
            </td>
        </tr>  
         <tr>
            <td>
                <asp:Label ID="lblMessage" runat="server" ForeColor="White"></asp:Label>
            </td>
        </tr>
               
        
    </table>
    </center>
</asp:Content>
