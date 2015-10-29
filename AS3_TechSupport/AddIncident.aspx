<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Main.Master" AutoEventWireup="true" CodeBehind="AddIncident.aspx.cs" Inherits="AS3_TechSupport.AddIncident" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="lblCustomerID" runat="server" CssClass="Login" Font-Size="Small" Text="CustomerID:"></asp:Label>
&nbsp;<asp:TextBox ID="txtCustomerID" runat="server" CssClass="Login" Font-Size="Small" Width="42px"></asp:TextBox>
&nbsp;&nbsp;
    <asp:Button ID="btnCustomerID" runat="server" CssClass="Login" Font-Size="Small" Text="Get Customer" />
    <br />
    <br />
    <asp:Label ID="lblCustomerID2" runat="server" CssClass="Login" Font-Size="Small" Text="CustomerID:"></asp:Label>
&nbsp;&nbsp;
    <asp:TextBox ID="txtCustomerID2" runat="server" CssClass="Login" Font-Size="Small" ReadOnly="True"></asp:TextBox>
    <br />
    <asp:Label ID="lblName" runat="server" CssClass="Login" Font-Size="Small" Text="Name:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="txtName" runat="server" CssClass="Login" Font-Size="Small" ReadOnly="True"></asp:TextBox>
    <br />
    <br />
    <br />
    <asp:Label ID="lblDateOpened" runat="server" CssClass="Login" Font-Size="Small" Text="Date Opened:"></asp:Label>
&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="txtDateOpened" runat="server" CssClass="Login" Font-Size="Small" ReadOnly="True"></asp:TextBox>
    <br />
    <asp:Label ID="lblProduct" runat="server" CssClass="Login" Font-Size="Small" Text="Product:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="TechSupportAddIncident" DataTextField="Name" DataValueField="Name">
    </asp:DropDownList>
    <asp:SqlDataSource ID="TechSupportAddIncident" runat="server" ConnectionString="<%$ ConnectionStrings:TechSupportConnectionString %>" SelectCommand="SELECT [Name] FROM [Products]"></asp:SqlDataSource>
    <br />
    <asp:Label ID="lblTitle" runat="server" CssClass="Login" Font-Size="Small" Text="Title:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="txtTitle" runat="server" CssClass="Login" Font-Size="Small" ReadOnly="True"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="lblDescription" runat="server" CssClass="Login" Font-Size="Small" Text="Description:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="txtDescription" runat="server" CssClass="Login" Font-Size="Small" Height="16px" Width="163px"></asp:TextBox>
    <br />
    <br />
    <br />
</asp:Content>
