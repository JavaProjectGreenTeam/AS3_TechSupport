<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Main.Master" AutoEventWireup="true" CodeBehind="AddProduct.aspx.cs" Inherits="AS3_TechSupport.AddProduct" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 116px;
        }
        .auto-style2 {
            width: 155px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width:100%;">
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">
                <asp:Label ID="lblProductName" runat="server" CssClass="label" Text="Name:"></asp:Label>
            </td>
            <td class="auto-style2">
                <asp:TextBox ID="txtProductName" runat="server" CssClass="textbox"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">
                <asp:Label ID="lblProductVersion" runat="server" CssClass="label" Text="Version:"></asp:Label>
            </td>
            <td class="auto-style2">
                <asp:TextBox ID="txtProductVersion" runat="server" CssClass="textbox"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">
                <asp:Label ID="lblProductRelease" runat="server" CssClass="label" Text="Release Date:"></asp:Label>
            </td>
            <td class="auto-style2">
                <asp:TextBox ID="txtProductRelease" runat="server" CssClass="textbox"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">
                <asp:Button ID="btnProductAccept" runat="server" CssClass="button" OnClick="btnProductAccept_Click" Text="Add" />
            </td>
            <td class="auto-style2">
                <asp:Button ID="btnProductCancel" runat="server" CssClass="button" Text="Cancel" />
                <asp:SqlDataSource ID="sqlAddProduct" runat="server" ConnectionString="<%$ ConnectionStrings:TechSupportDB %>" InsertCommand="INSERT INTO Products(Name, Version, ReleaseDate) VALUES (@Name, @Version, @ReleaseDate)" SelectCommand="SELECT * FROM [Products]"></asp:SqlDataSource>
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
