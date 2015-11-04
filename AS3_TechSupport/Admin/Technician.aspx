<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Main.Master" AutoEventWireup="true" CodeBehind="Technician.aspx.cs" Inherits="AS3_TechSupport.Technician" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 59px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <table style="width:100%;">
            <tr>
                <td class="auto-style1" style="text-align: right">
                    &nbsp;</td>
                <td>
                    <asp:Button ID="btnTechFirst" runat="server" CssClass="button" Text="&lt;&lt;" />
                    <asp:Button ID="btnPrevious" runat="server" CssClass="button" OnClick="btnPrevious_Click" Text="&lt;" />
                    <asp:Button ID="btnNext" runat="server" CssClass="button" Text="&gt;" />
                    <asp:Button ID="btnTechLast" runat="server" CssClass="button" Text="&gt;&gt;" />
                    <asp:Button ID="btnTechnician" runat="server" CssClass="button" Text="Add Technician" />
                </td>
            </tr>
            <tr>
                <td class="auto-style1" style="text-align: right">
        <asp:Label ID="lblTechID" runat="server" CssClass="label" Font-Size="Small" Text="TechID:"></asp:Label>
                </td>
                <td>
        <asp:TextBox ID="txtTechID" runat="server" CssClass="textbox" Font-Size="Small" ReadOnly="True"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style1" style="text-align: right">
        <asp:Label ID="lblName" runat="server" CssClass="label" Font-Size="Small" Text="Name:"></asp:Label>
                </td>
                <td>
        <asp:TextBox ID="txtName" runat="server" Font-Size="Small" CssClass="textbox"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style1" style="text-align: right">
        <asp:Label ID="lblEmail" runat="server" CssClass="label" Font-Size="Small" Text="Email:"></asp:Label>
                </td>
                <td>
        <asp:TextBox ID="txtEmail" runat="server" CssClass="textbox" Font-Size="Small"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style1" style="text-align: right">
        <asp:Label ID="lblPhone" runat="server" CssClass="label" Font-Size="Small" Text="Phone:"></asp:Label>
                </td>
                <td>
        <asp:TextBox ID="txtPhone" runat="server" CssClass="textbox" Font-Size="Small"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style1" style="text-align: right">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    </asp:Content>
