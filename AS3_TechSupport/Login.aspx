<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Main.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="AS3_TechSupport.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:Login ID="Login1" runat="server" CssClass="Login">
        <LoginButtonStyle BackColor="White" CssClass="LoginButton" />
</asp:Login>

</asp:Content>
