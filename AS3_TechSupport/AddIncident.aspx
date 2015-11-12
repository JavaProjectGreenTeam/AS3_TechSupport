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
    <asp:Label ID="lblName" runat="server" CssClass="label" Font-Size="Small" Text="Name:"></asp:Label>
            </td>
            <td class="auto-style2">
                <asp:DropDownList ID="ddlName" runat="server" CssClass="dropdown" DataSourceID="sqlCustomerName" DataTextField="Name" DataValueField="Name" OnSelectedIndexChanged="ddlName_SelectedIndexChanged">
                </asp:DropDownList>
            </td>
            <td>
                <asp:Button ID="btnGetID" runat="server" CssClass="button" OnClick="btnGetID_Click" Text="Get ID" />
            </td>
        </tr>
        <tr>
            <td class="auto-style1" style="text-align: right">
    <asp:Label ID="lblCustomerID2" runat="server" CssClass="label" Font-Size="Small" Text="CustomerID:"></asp:Label>
            </td>
            <td class="auto-style2">
    <asp:TextBox ID="txtCustomerID2" runat="server" CssClass="textbox" Font-Size="Small"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1" style="text-align: right">
                <asp:Label ID="lblIncidentID" runat="server" CssClass="label" Text="Incident ID:"></asp:Label>
            </td>
            <td class="auto-style2">
                <asp:TextBox ID="txtIncidentID" runat="server" CssClass="textbox"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
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
            <td class="auto-style1" style="text-align: right">
    <asp:Label ID="lblDateOpened" runat="server" CssClass="label" Font-Size="Small" Text="Date Opened:"></asp:Label>
            </td>
            <td class="auto-style2">
    <asp:TextBox ID="txtDateOpened" runat="server" CssClass="textbox" Font-Size="Small"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1" style="text-align: right; vertical-align: top;">
                <asp:Label ID="lblDateClosed" runat="server" CssClass="label" Text="Date Closed:"></asp:Label>
            </td>
            <td class="auto-style2">
                <asp:TextBox ID="txtDateClosed" runat="server" CssClass="textbox"></asp:TextBox>
            </td>
            <td>
                <asp:SqlDataSource ID="sqlAddIncident" runat="server" ConnectionString="<%$ ConnectionStrings:TechSupportDB %>" InsertCommand="INSERT INTO Incidents(CustomerID, ProductCode, DateOpened, DateClosed, Title, Description) VALUES (@CustomerID, @ProductCode, @DateOpened, @DateClosed, @Title, @Description)" SelectCommand="SELECT * FROM [Incidents]"></asp:SqlDataSource>
                <asp:SqlDataSource ID="sqlCustomerName" runat="server" ConnectionString="<%$ ConnectionStrings:TechSupportDB %>" SelectCommand="SELECT [Name] FROM [Customers]"></asp:SqlDataSource>
                <asp:SqlDataSource ID="sqlProductCode" runat="server" ConnectionString="<%$ ConnectionStrings:TechSupportDB %>" SelectCommand="SELECT [ProductCode] FROM [Products]"></asp:SqlDataSource>
                <asp:SqlDataSource ID="sqlCustomerID" runat="server" ConnectionString="<%$ ConnectionStrings:TechSupportDB %>" SelectCommand="SELECT [CustomerID] FROM [Customers] WHERE ([Name] = @Name)" InsertCommand="INSERT INTO Customers(CustomerID) VALUES (@CustomerID)">
                    <SelectParameters>
                        <asp:Parameter Name="Name" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td class="auto-style1" style="text-align: right; vertical-align: top;">
    <asp:Label ID="lblProduct" runat="server" CssClass="label" Font-Size="Small" Text="Product:"></asp:Label>
            </td>
            <td class="auto-style2">
    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataTextField="ProductCode" DataValueField="ProductCode" CssClass="dropdown" DataSourceID="sqlProductCode">
    </asp:DropDownList>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1" style="text-align: right; vertical-align: top;">
    <asp:Label ID="lblTitle" runat="server" CssClass="label" Font-Size="Small" Text="Title:"></asp:Label>
            </td>
            <td class="auto-style2">
    <asp:TextBox ID="txtTitle" runat="server" CssClass="textbox" Font-Size="Small"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
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
            </td>
        </tr>
    </table>
    <br />
</asp:Content>
