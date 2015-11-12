<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Main.Master" AutoEventWireup="true" CodeBehind="AddIncident.aspx.cs" Inherits="AS3_TechSupport.AddIncident" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 96px;
        }
        .auto-style2 {
            width: 230px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width:100%;">
        <tr>
            <td class="auto-style1" style="text-align: right">
                &nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1" style="text-align: right">
                &nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1" style="text-align: right">
    <asp:Label ID="lblCustomerID2" runat="server" CssClass="label" Font-Size="Small" Text="CustomerID:"></asp:Label>
            </td>
            <td class="auto-style2">
    <asp:TextBox ID="txtCustomerID2" runat="server" CssClass="textbox" Font-Size="Small" ReadOnly="True"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1" style="text-align: right">
    <asp:Label ID="lblName" runat="server" CssClass="label" Font-Size="Small" Text="Name:"></asp:Label>
            </td>
            <td class="auto-style2">
    <asp:TextBox ID="txtName" runat="server" CssClass="textbox" Font-Size="Small" ReadOnly="True"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1" style="text-align: right">
    <asp:Label ID="lblDateOpened" runat="server" CssClass="label" Font-Size="Small" Text="Date Opened:"></asp:Label>
            </td>
            <td class="auto-style2">
    <asp:TextBox ID="txtDateOpened" runat="server" CssClass="textbox" Font-Size="Small" ReadOnly="True"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1" style="text-align: right">
    <asp:Label ID="lblProduct" runat="server" CssClass="label" Font-Size="Small" Text="Product:"></asp:Label>
            </td>
            <td class="auto-style2">
    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataTextField="Name" DataValueField="Name" CssClass="dropdown">
    </asp:DropDownList>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1" style="text-align: right">
    <asp:Label ID="lblTitle" runat="server" CssClass="label" Font-Size="Small" Text="Title:"></asp:Label>
            </td>
            <td class="auto-style2">
    <asp:TextBox ID="txtTitle" runat="server" CssClass="textbox" Font-Size="Small" ReadOnly="True"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1" style="text-align: right; vertical-align: top;">
    <asp:Label ID="lblDescription" runat="server" CssClass="label" Font-Size="Small" Text="Description:"></asp:Label>
            </td>
            <td class="auto-style2">
    <asp:TextBox ID="txtDescription" runat="server" CssClass="multilineTextbox textbox" Font-Size="Small" Rows="4" TextMode="MultiLine"></asp:TextBox>
            </td>
            <td>
                <asp:Button ID="btnAddIncident" runat="server" CssClass="button" OnClick="btnAddIncident_Click" Text="Add Incident" />
                <asp:SqlDataSource ID="sqlAddIncident" runat="server" ConnectionString="<%$ ConnectionStrings:TechSupportDB %>" InsertCommand="INSERT INTO Incidents(CustomerID, ProductCode, DateOpened, DateClosed, Title, Description) VALUES (@CustomerID, @ProductCode, @DateOpened, @DateClosed, @Title, @Description)" SelectCommand="SELECT * FROM [Incidents]"></asp:SqlDataSource>
            </td>
        </tr>
    </table>
    <br />
</asp:Content>
