<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin_Login.aspx.cs" Inherits="ShoesWebApp.Admin_Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">

        table{
            align-content:center;
            margin-left:510px;
        }
        .text-style
        {
            border-radius: 20px;
            font-size:medium;
            height: 35px;
                
        }
        .btn-style
        {   
            border-radius: 25px;
            background-color: #4A274F ;
            margin-left:90px;
            width: 75px;
            height: 40px;
            font-size:medium;
            color:white
          
        }
        .btn-style1{
            border-radius: 25px;
            background-color:#4A274F ;
            margin-left:20px;
            width: 75px;
            height: 40px;
            font-size:medium;
            color:white;
        }
        .auto-style1 {
            height: 71px;
        }
    .auto-style2 {
        height: 53px;
    }
    .auto-style3 {
        height: 71px;
        width: 423px;
    }
    .auto-style4 {
        width: 423px;
    }
    .style8
        {
            font-size: 40pt;
            text-align: center;
            color: #FF0066;
        }
    </style> 
</head>
<body style="background-color : aqua">
    <form id="form1" runat="server">
         <p class="style8" align="center">
        <strong>ONLINE</strong><strong class="hedaer"> ONLINE SHOES SHOPPING</strong></p>
        <div>
        </div>
        <table>
            <tr>
                <td>

                </td>
            </tr>
            <tr>
                <td>

                </td>
            </tr>
            <tr>
            <td colspan="2">
                <h2 style="font-family: Baskerville Old Face; font-weight: 500; font-size: xx-large;  color: black; font-weight: bold"> 
                    Admin Login
                </h2>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">
            <div style="font-size: medium; color: black; font-weight: bold">
                Admin ID:
                </div>
            </td>
            <td class="auto-style3">
                <asp:TextBox ID="txtLoginID" class="text-style" runat="server" placeholder="Enter Login ID"
                     ToolTip=" Please Enter Your LoginId" Width="253px" Height="40px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvAdminID" runat="server" ControlToValidate="txtLoginID" ErrorMessage="Enter Admin ID"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
            <div style="font-size: medium; color: black; font-weight: bold">
                Password:
                </div>
            </td>
            <td class="auto-style4">
                <asp:TextBox ID="txtPassword" class="text-style" placeholder="Enter Password" TextMode="Password" runat="server"
                    ToolTip="Please Enter Your Password" Width="253px" Height="40px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvPAssword" runat="server" ControlToValidate="txtPassword" ErrorMessage="Enter Your Password"></asp:RequiredFieldValidator>
            </td>
        </tr>
         <tr>
            <td>
            </td>
        </tr>
        <tr>
            <td colspan="2" class="auto-style2" >
                <asp:Button ID="btnLogin" class="btn-style" runat="server" Text="Login" OnClick="btnLogin_Click" />
             &nbsp;&nbsp;
                    <asp:Label ID="lblmsg" runat="server"></asp:Label>
                    </td>
            </tr>
            <tr>
                <td colspan="2">
                    &nbsp;</td>
            </tr>

        </table>
    </form>
</body>
</html>
