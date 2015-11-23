<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Main.Master" AutoEventWireup="true" CodeBehind="AddRegistration.aspx.cs" Inherits="AS3_TechSupport.AddRegistration" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            width: 251px;
        }
        .auto-style3 {
            width: 141px;
        }
        .auto-style4 {
            width: 65px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width:100%;">
        <tr>
            <td class="auto-style4" style="text-align: right">
                <asp:Label ID="lblCustomer" runat="server" CssClass="label" Font-Size="Small" Text="Customer:"></asp:Label>
            </td>
            <td class="auto-style2">
                <asp:DropDownList ID="ddlCustomer" runat="server" DataSourceID="AddRegistrationCustomer" DataTextField="Name" DataValueField="Name" CssClass="dropdown">
                </asp:DropDownList>
            </td>
            <td class="auto-style3">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4" style="text-align: right">
                <asp:Label ID="lblProduct" runat="server" CssClass="label" Font-Size="Small" Text="Product:"></asp:Label>
            </td>
            <td class="auto-style2">
                <asp:DropDownList ID="ddlProduct" runat="server" DataSourceID="AddRegistrationProduct" DataTextField="Name" DataValueField="Name" CssClass="dropdown">
                </asp:DropDownList>
            </td>
            <td class="auto-style3">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4" style="text-align: right">
                <asp:Label ID="lblRegDate" runat="server" CssClass="label" Font-Size="Small" Text="Reg Date:"></asp:Label>
            </td>
            <td class="auto-style2">
                <asp:TextBox ID="txtRegDate" runat="server" CssClass="textbox" Font-Size="Small" ReadOnly="True"></asp:TextBox>
            </td>
            <td class="auto-style3">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4">
                &nbsp;</td>
            <td class="auto-style2">
                <asp:Button ID="btnRegisterProduct" runat="server" CssClass="buttonAuto" Font-Size="Small" Text="Register Product" OnClick="btnRegisterProduct_Click" Width="228px" />
            </td>
            <td class="auto-style3">
                &nbsp;</td>
        </tr>
    </table>
    <asp:SqlDataSource ID="sqlAddRegistration" runat="server" ConnectionString="<%$ ConnectionStrings:TechSupportDB %>" InsertCommand="INSERT INTO Registrations(CustomerID, ProductCode, RegistrationDate) VALUES (@CustomerID, @ProductCode, @RegDate)" SelectCommand="SELECT * FROM [Registrations]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="sqlGetCustomerID" runat="server" ConnectionString="<%$ ConnectionStrings:TechSupportDB %>" SelectCommand="SELECT CustomerID FROM Customers WHERE (Name = @CustomerName)"></asp:SqlDataSource>
    <asp:SqlDataSource ID="sqlGetProductCode" runat="server" ConnectionString="<%$ ConnectionStrings:TechSupportDB %>" SelectCommand="SELECT ProductCode FROM Products WHERE (Name = @ProductName)"></asp:SqlDataSource>
                <asp:SqlDataSource ID="AddRegistrationCustomer" runat="server" ConnectionString="<%$ ConnectionStrings:TechSupportDB %>" SelectCommand="SELECT [Name] FROM [Customers]"></asp:SqlDataSource>
                <asp:SqlDataSource ID="AddRegistrationProduct" runat="server" ConnectionString="<%$ ConnectionStrings:TechSupportDB %>" SelectCommand="SELECT [Name] FROM [Products]"></asp:SqlDataSource>
            </asp:Content>
