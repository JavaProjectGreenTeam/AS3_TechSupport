<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Main.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="AS3_TechSupport.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        Welcome to our place holder text site of placeholderness
    </p>
<p>
        <asp:Login ID="Login1" runat="server" CssClass="login">
            <LoginButtonStyle CssClass="loginButton" />
        </asp:Login>
    </p>
</asp:Content>
