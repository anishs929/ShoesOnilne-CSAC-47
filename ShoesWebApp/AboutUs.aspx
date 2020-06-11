<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.Master" AutoEventWireup="true" CodeBehind="AboutUs.aspx.cs" Inherits="ShoesWebApp.AboutUs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlacebody" runat="server">
    <div class="vdiv">
        <video autoplay loop>
            <source src="video/Shoes.mp4" type="video/mp4"  >
        </video>
    </div>

     <div style="font-family:Arial">
            <fieldset style="width:350px">
                <legend>Contact us</legend>
                <table>
                    <tr>
                        <td>
                            <b>Name:</b>
                        </td>
                        <td>
                            <asp:TextBox ID="txtName" width=200px runat="server"></asp:TextBox>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                ErrorMessage="Name is Required" ControlToValidate="txtName"
                                Text="*" ForeColor="Red">
                                

                            </asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <b>Email:</b>
                        </td>
                        <td>
                            <asp:TextBox ID="txtEmail" width=200px runat="server"></asp:TextBox>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                ErrorMessage="Email is Requried" ControlToValidate="txtEmail"
                                Display="Dynamic"
                                Text="*" ForeColor="Red">
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server"
                                    ErrorMessage="Please enter a valid Email ID" ControlToValidate="txtEmail"
                                    ForeColor="Red" Display="Dynamic" ValidationExpression="^\w+@[a-zA-Z_]+?\.[a-zA-Z]{2,3}$">*</asp:RegularExpressionValidator>
                                

                            </asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <b>Subject:</b>
                        </td>
                        <td>
                            <asp:TextBox ID="txtSubject" width=200px runat="server"></asp:TextBox>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                ErrorMessage="Subject is Required" ControlToValidate="txtSubject"
                                Text="*" ForeColor="Red">
                                

                            </asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td style="vertical-align:top">
                            <b>Comments:</b>
                        </td>
                        <td style="vertical-align:top">
                            <asp:TextBox ID="txtComments" width=200px runat="server" Rows="5" TextMode="MultiLine"></asp:TextBox>
                        </td>
                        <td style="vertical-align:top">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                                ErrorMessage="Comments are Required" ControlToValidate="txtComments"
                                Text="*" ForeColor="Red">
                                

                            </asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="3">
                            <asp:ValidationSummary HeaderText="Please fix the errors" runat="server" ForeColor="Red" />
                            
                        </td>
                    </tr>
                    <tr>
                        <td colspan="3">
                            <asp:Label ID="Label1" runat="server" Font-Bold="true"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="3">
                            <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />
                        </td>
                    </tr>
                </table>

            </fieldset>
        </div>
</asp:Content>
