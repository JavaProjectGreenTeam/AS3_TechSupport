<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Main.Master" AutoEventWireup="true" CodeBehind="AddTechnician.aspx.cs" Inherits="AS3_TechSupport.AddTechnicianaspx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 55px;
        }
        .auto-style2 {
            width: 260px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width: 100%;">
        <tr>
            <td class="auto-style1" style="text-align: right">
                <asp:Label ID="lblTechID" runat="server" CssClass="label" Text="TechID:"></asp:Label>
            </td>
            <td class="auto-style2">
                <asp:TextBox ID="txtTechID" runat="server" CssClass="textbox"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td aria-disabled="False" class="auto-style1" style="text-align: right">
                <asp:Label ID="lblTechName" runat="server" CssClass="label" Text="Name:"></asp:Label>
            </td>
            <td class="auto-style2">
                <asp:TextBox ID="txtTechName" runat="server" CssClass="textbox"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1" style="text-align: right">
                <asp:Label ID="lblTechEmail" runat="server" CssClass="label" Text="Email:"></asp:Label>
            </td>
            <td class="auto-style2">
                <asp:TextBox ID="txtTechEmail" runat="server" CssClass="textbox"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1" style="text-align: right">
                <asp:Label ID="lblTechPhone" runat="server" CssClass="label" Text="Phone:"></asp:Label>
            </td>
            <td class="auto-style2">
                <asp:TextBox ID="txtTechPhone" runat="server" CssClass="textbox"></asp:TextBox>
            </td>
            <td style="text-align: right">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">
                <asp:Button ID="btnAddTechnician" runat="server" CssClass="button" Text="Add" OnClick="btnAddTechnician_Click" />
            </td>
            <td class="auto-style2">
                <asp:Button ID="btnCancel" runat="server" CssClass="button" Text="Cancel" OnClick="btnCancel_Click" />
            </td>
            <td>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TechSupportDB %>" InsertCommand="INSERT INTO Technicians(Name, Email, Phone) VALUES (@name, @email, @phone)" SelectCommand="SELECT * FROM [Technicians]"></asp:SqlDataSource>
            </td>
        </tr>
    </table>
</asp:Content>
