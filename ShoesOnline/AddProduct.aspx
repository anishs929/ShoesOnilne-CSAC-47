﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageweb.Master" AutoEventWireup="true" CodeBehind="AddProduct.aspx.cs" Inherits="masterpage1.AddProduct"  %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlacebody" runat="server">
    <style type="text/css">

        table{
            align-content:center;
            margin-left:240px;
        }
        </style>
        <table>
            <tr>
                <td>
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" AutoGenerateDeleteButton="True" AutoGenerateEditButton="True" DataKeyNames="product_id" DataSourceID="SqlDataSource1">
                        <Columns>
                            <asp:BoundField DataField="product_id" HeaderText="product_id" ReadOnly="True" SortExpression="product_id" />
                            <asp:BoundField DataField="product_name" HeaderText="product_name" SortExpression="product_name" />
                            <asp:BoundField DataField="sales_price" HeaderText="sales_price" SortExpression="sales_price" />
                            <asp:BoundField DataField="available_quantity" HeaderText="available_quantity" SortExpression="available_quantity" />
                            <asp:BoundField DataField="category_id" HeaderText="category_id" SortExpression="category_id" />
                        </Columns>
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [product_details]"></asp:SqlDataSource>
                </td>
            </tr>
        </table>
    
</asp:Content>
