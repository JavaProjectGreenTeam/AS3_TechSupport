<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Main.Master" AutoEventWireup="true" CodeBehind="AddIncident.aspx.cs" Inherits="AS3_TechSupport.AddIncident" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 96px;
        }
        .auto-style2 {
            width: 267px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:SqlDataSource ID="TechSupportAddIncident" runat="server" ConnectionString="<%$ ConnectionStrings:TechSupportDB %>" SelectCommand="SELECT [Name] FROM [Products]"></asp:SqlDataSource>
    <table style="width:100%;">
        <tr>
            <td class="auto-style1" style="text-align: right">
    <asp:Label ID="lblCustomerID" runat="server" CssClass="label" Font-Size="Small" Text="CustomerID:"></asp:Label>
            </td>
            <td class="auto-style2"><asp:TextBox ID="txtCustomerID" runat="server" CssClass="textbox" Font-Size="Small"></asp:TextBox>
            </td>
            <td>
    <asp:Button ID="btnCustomerID" runat="server" CssClass="button" Font-Size="Small" Text="Get Customer" />
            </td>
        </tr>
        <tr>
            <td class="auto-style1" style="text-align: right">
                &nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1" style="text-align: right">
    <asp:Label ID="lblCustomerID2" runat="server" CssClass="label" Font-Size="Small" Text="CustomerID:"></asp:Label>
            </td>
            <td class="auto-style2">
    <asp:TextBox ID="txtCustomerID2" runat="server" CssClass="textbox" Font-Size="Small" ReadOnly="True"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1" style="text-align: right">
    <asp:Label ID="lblName" runat="server" CssClass="label" Font-Size="Small" Text="Name:"></asp:Label>
            </td>
            <td class="auto-style2">
    <asp:TextBox ID="txtName" runat="server" CssClass="textbox" Font-Size="Small" ReadOnly="True"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1" style="text-align: right">
    <asp:Label ID="lblDateOpened" runat="server" CssClass="label" Font-Size="Small" Text="Date Opened:"></asp:Label>
            </td>
            <td class="auto-style2">
    <asp:TextBox ID="txtDateOpened" runat="server" CssClass="textbox" Font-Size="Small" ReadOnly="True"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1" style="text-align: right">
    <asp:Label ID="lblProduct" runat="server" CssClass="label" Font-Size="Small" Text="Product:"></asp:Label>
            </td>
            <td class="auto-style2">
    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="TechSupportAddIncident" DataTextField="Name" DataValueField="Name" CssClass="dropdown">
    </asp:DropDownList>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1" style="text-align: right">
    <asp:Label ID="lblTitle" runat="server" CssClass="label" Font-Size="Small" Text="Title:"></asp:Label>
            </td>
            <td class="auto-style2">
    <asp:TextBox ID="txtTitle" runat="server" CssClass="textbox" Font-Size="Small" ReadOnly="True"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1" style="text-align: right; vertical-align: top;">
    <asp:Label ID="lblDescription" runat="server" CssClass="label" Font-Size="Small" Text="Description:"></asp:Label>
            </td>
            <td class="auto-style2">
    <asp:TextBox ID="txtDescription" runat="server" CssClass="textbox" Font-Size="Small" Rows="4" TextMode="MultiLine"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
    <br />
</asp:Content>
