﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Main.Master" AutoEventWireup="true" CodeBehind="Technician.aspx.cs" Inherits="AS3_TechSupport.Technician" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 59px;
        }
        .auto-style2 {
            width: 731px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <table style="width:100%;">
            <tr>
                <td class="auto-style1" style="text-align: right">
                    &nbsp;</td>
                <td class="auto-style2">
                    <asp:Button ID="btnTechFirst" runat="server" CssClass="button" Text="&lt;&lt;" OnClick="btnTechFirst_Click" />
                    <asp:Button ID="btnPrevious" runat="server" CssClass="button" OnClick="btnPrevious_Click" Text="&lt;" />
                    <asp:Button ID="btnNext" runat="server" CssClass="button" Text="&gt;" OnClick="btnNext_Click" />
                    <asp:Button ID="btnTechLast" runat="server" CssClass="button" Text="&gt;&gt;" OnClick="btnTechLast_Click" />
                    <asp:Button ID="btnTechnician" runat="server" CssClass="button" Text="Add Technician" OnClick="btnTechnician_Click" />
                &nbsp;<asp:Label ID="lblTechID" runat="server" CssClass="label" Font-Size="Small" Text="TechID:"></asp:Label>
                &nbsp;<asp:TextBox ID="txtTechID" runat="server" CssClass="textbox" Font-Size="Small"></asp:TextBox>
                &nbsp;<asp:Button ID="btnSearch" runat="server" CssClass="button" OnClick="btnSearch_Click" Text="Search" />
                </td>
            </tr>
            <tr>
                <td class="auto-style1" style="text-align: right">
                    &nbsp;</td>
                <td class="auto-style2">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1" style="text-align: right">
                    <asp:Label ID="lblTechID0" runat="server" CssClass="label" Font-Size="Small" Text="TechID:"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="txtTechID1" runat="server" CssClass="textbox" Font-Size="Small"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style1" style="text-align: right">
        <asp:Label ID="lblName" runat="server" CssClass="label" Font-Size="Small" Text="Name:"></asp:Label>
                </td>
                <td class="auto-style2">
        <asp:TextBox ID="txtName" runat="server" Font-Size="Small" CssClass="textbox"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style1" style="text-align: right">
        <asp:Label ID="lblEmail" runat="server" CssClass="label" Font-Size="Small" Text="Email:"></asp:Label>
                </td>
                <td class="auto-style2">
        <asp:TextBox ID="txtEmail" runat="server" CssClass="textbox" Font-Size="Small"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style1" style="text-align: right">
        <asp:Label ID="lblPhone" runat="server" CssClass="label" Font-Size="Small" Text="Phone:"></asp:Label>
                </td>
                <td class="auto-style2">
        <asp:TextBox ID="txtPhone" runat="server" CssClass="textbox" Font-Size="Small"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style1" style="text-align: right">
                    &nbsp;</td>
                <td class="auto-style2">
                    <asp:SqlDataSource ID="sqlGetTech" runat="server" ConnectionString="<%$ ConnectionStrings:TechSupportDB %>" SelectCommand="SELECT * FROM [Technicians] WHERE ([TechID] = @TechID)">
                        <SelectParameters>
                            <asp:Parameter Name="TechID" Type="Int32" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    <asp:SqlDataSource ID="sqlFirst" runat="server" ConnectionString="<%$ ConnectionStrings:TechSupportDB %>" SelectCommand="SELECT TOP (1) TechID, Name, Email, Phone FROM Technicians ORDER BY TechID"></asp:SqlDataSource>
                    <asp:SqlDataSource ID="sqlLast" runat="server" ConnectionString="<%$ ConnectionStrings:TechSupportDB %>" SelectCommand="SELECT TOP (1) TechID, Name, Email, Phone FROM Technicians ORDER BY TechID DESC"></asp:SqlDataSource>
                    <asp:SqlDataSource ID="sqlPrevious" runat="server"></asp:SqlDataSource>
                    <asp:SqlDataSource ID="sqlNext" runat="server" ConnectionString="<%$ ConnectionStrings:TechSupportDB %>" SelectCommand="SELECT TechID, Name, Email, Phone FROM Technicians WHERE (TechID &gt; @TechID) ORDER BY TechID ASC LIMIT 1">
                        <SelectParameters>
                            <asp:Parameter Name="TechID" Type="Int32" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>
        </table>
    </asp:Content>
