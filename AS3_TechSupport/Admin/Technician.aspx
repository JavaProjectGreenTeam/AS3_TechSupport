<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Main.Master" AutoEventWireup="true" CodeBehind="Technician.aspx.cs" Inherits="AS3_TechSupport.Technician" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        <br />
        <asp:Label ID="lblTechID" runat="server" CssClass="label" Font-Size="Small" Text="TechID:"></asp:Label>
&nbsp;
        <asp:TextBox ID="txtTechID" runat="server" CssClass="textbox" Font-Size="Small" ReadOnly="True"></asp:TextBox>
    </p>
    <p>
        <asp:Label ID="lblName" runat="server" CssClass="label" Font-Size="Small" Text="Name:"></asp:Label>
&nbsp;&nbsp;
        <asp:TextBox ID="txtName" runat="server" Font-Size="Small" CssClass="textbox"></asp:TextBox>
    </p>
    <p>
        <asp:Label ID="lblEmail" runat="server" CssClass="label" Font-Size="Small" Text="Email:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtEmail" runat="server" CssClass="textbox" Font-Size="Small"></asp:TextBox>
    </p>
    <p>
        <asp:Label ID="lblPhone" runat="server" CssClass="label" Font-Size="Small" Text="Phone:"></asp:Label>
&nbsp;&nbsp;
        <asp:TextBox ID="txtPhone" runat="server" CssClass="textbox" Font-Size="Small"></asp:TextBox>
    </p>
</asp:Content>
