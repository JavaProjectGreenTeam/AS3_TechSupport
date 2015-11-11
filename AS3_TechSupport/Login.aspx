<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Main.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="AS3_TechSupport.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 219px;
        }
        .auto-style2 {
            width: 149px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <table style="width:100%;">
        <tr>
            <td class="auto-style1">
    <asp:Login ID="Login1" runat="server" CssClass="login" OnAuthenticate="Login1_Authenticate" Width="240px">
        <LabelStyle CssClass="loginLabel" />
        <LoginButtonStyle CssClass="loginButton" />
</asp:Login>

            </td>
            <td class="auto-style2">
                <br />
            </td>
            <td>
                <asp:Login ID="Login2" runat="server">
                </asp:Login>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
&nbsp;

</asp:Content>
