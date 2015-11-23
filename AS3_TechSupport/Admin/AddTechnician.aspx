<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Main.Master" AutoEventWireup="true" CodeBehind="AddTechnician.aspx.cs" Inherits="AS3_TechSupport.AddTechnicianaspx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            width: 234px;
        }
        .auto-style3 {
            width: 51px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width: 100%;">
        <tr>
            <td aria-disabled="False" class="auto-style3" style="text-align: right">
                <asp:Label ID="lblTechName" runat="server" CssClass="label" Text="Name:"></asp:Label>
            </td>
            <td class="auto-style2">
                <asp:TextBox ID="txtTechName" runat="server" CssClass="textbox"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3" style="text-align: right">
                <asp:Label ID="lblTechEmail" runat="server" CssClass="label" Text="Email:"></asp:Label>
            </td>
            <td class="auto-style2">
                <asp:TextBox ID="txtTechEmail" runat="server" CssClass="textbox"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3" style="text-align: right">
                <asp:Label ID="lblTechPhone" runat="server" CssClass="label" Text="Phone:"></asp:Label>
            </td>
            <td class="auto-style2">
                <asp:TextBox ID="txtTechPhone" runat="server" CssClass="textbox"></asp:TextBox>
            </td>
            <td style="text-align: right">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">
                &nbsp;</td>
            <td class="auto-style2">
                <asp:Button ID="btnAddTechnician" runat="server" CssClass="buttonAuto" Text="Add" OnClick="btnAddTechnician_Click" Width="48%" />
                <asp:Button ID="btnCancel" runat="server" CssClass="buttonAuto" Text="Back" OnClick="btnCancel_Click" Width="48%" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
    <asp:SqlDataSource ID="sqlAddTechnician" runat="server" ConnectionString="<%$ ConnectionStrings:TechSupportDB %>" InsertCommand="INSERT INTO Technicians(Name, Email, Phone) VALUES (@Name, @Email, @Phone)" SelectCommand="SELECT * FROM [Technicians]"></asp:SqlDataSource>
</asp:Content>
