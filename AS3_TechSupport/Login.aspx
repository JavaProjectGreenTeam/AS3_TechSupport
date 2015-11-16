<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Main.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="AS3_TechSupport.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style3 {
            height: 168px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <table style="margin-right: auto; margin-left: auto;">
        <tr>
            <td class="auto-style3">
                <div style="text-align: center">
                    <div style="width: 246.75px; margin-left: auto; margin-right: auto">
                        <asp:Login ID="Login2" runat="server" CssClass="login">
                        </asp:Login>
                    </div>
                </div>
                
            </td>
        </tr>
        </table>
&nbsp;

</asp:Content>
