<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Main.Master" AutoEventWireup="true" CodeBehind="AddRegistration.aspx.cs" Inherits="AS3_TechSupport.AddRegistration" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 85px;
        }
        .auto-style2 {
            width: 251px;
        }
        .auto-style3 {
            width: 141px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width:100%;">
        <tr>
            <td class="auto-style1">
                <asp:Label ID="lblCustomer" runat="server" CssClass="Login" Font-Size="Small" Text="Customer:"></asp:Label>
            </td>
            <td class="auto-style2">
                <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="AddRegistrationCustomer" DataTextField="Name" DataValueField="Name">
                </asp:DropDownList>
                <asp:SqlDataSource ID="AddRegistrationCustomer" runat="server" ConnectionString="<%$ ConnectionStrings:TechSupportConnectionString %>" SelectCommand="SELECT [Name] FROM [Customers]"></asp:SqlDataSource>
            </td>
            <td class="auto-style3">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">
                <asp:Label ID="lblProduct" runat="server" CssClass="Login" Font-Size="Small" Text="Product:"></asp:Label>
            </td>
            <td class="auto-style2">
                <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="AddRegistrationProduct" DataTextField="Name" DataValueField="Name">
                </asp:DropDownList>
                <asp:SqlDataSource ID="AddRegistrationProduct" runat="server" ConnectionString="<%$ ConnectionStrings:TechSupportConnectionString %>" SelectCommand="SELECT [Name] FROM [Products]"></asp:SqlDataSource>
            </td>
            <td class="auto-style3">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">
                <asp:Label ID="lblRegDate" runat="server" CssClass="Login" Font-Size="Small" Text="Reg Date:"></asp:Label>
            </td>
            <td class="auto-style2">
                <asp:TextBox ID="txtRegDate" runat="server" CssClass="Login" Font-Size="Small"></asp:TextBox>
            </td>
            <td class="auto-style3">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">
                <asp:Button ID="btnRegisterProduct" runat="server" CssClass="Login" Font-Size="Small" Text="Register Product" />
            </td>
            <td class="auto-style2">
                <asp:Button ID="btnCancel" runat="server" CssClass="Login" Font-Size="Small" Text="Cancel" />
            </td>
            <td class="auto-style3">
                <asp:Button ID="btnExit" runat="server" CssClass="Login" Font-Size="Small" Text="Exit" Width="94px" />
            </td>
        </tr>
    </table>
</asp:Content>
