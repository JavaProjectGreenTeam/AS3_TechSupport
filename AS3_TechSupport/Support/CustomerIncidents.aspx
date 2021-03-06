﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Main.Master" AutoEventWireup="true" CodeBehind="CustomerIncidents.aspx.cs" Inherits="AS3_TechSupport.CustomerIncidents" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            height: 23px;
            width: 270px;
        }
        .auto-style3 {
            width: 522px;
        }
        .auto-style4 {
            width: 270px;
            height: 31px;
        }
        .auto-style5 {
            width: 522px;
            height: 31px;
        }
        .auto-style6 {
            width: 270px;
        }
        .auto-style7 {
            width: 1356px;
        }
        .auto-style8 {
            width: 1356px;
            height: 31px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <table style="margin-right: auto; margin-left: auto;">
            <tr>
                <td class="auto-style4" style="text-align: right">
        <asp:Label ID="lblCustomerID1" runat="server" CssClass="label" Text="Customer ID:" Font-Size="Small"></asp:Label>
                </td>
                <td class="auto-style8"><asp:TextBox ID="txtCustomerID1" runat="server" Font-Size="Small" CssClass="textbox"></asp:TextBox>
        <asp:Button ID="btnGetCustomer" runat="server" CssClass="button" Font-Size="Small" Text="Get Customer" OnClick="btnGetCustomer_Click" />
                </td>
                <td class="auto-style5" style="text-align: right">
                    <asp:Button ID="btnAddIncident" runat="server" CssClass="button" Text="Add Incident" OnClick="btnAddIncident_Click" />
                </td>
            </tr>
            <tr>
                <td class="auto-style6" style="text-align: right">&nbsp;</td>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style3" style="text-align: right">
                    <asp:Button ID="btnIncidentsList" runat="server" CssClass="button" OnClick="btnManageIncidents_Click" Text="All Incidents" Visible="False" />
                </td>
            </tr>
            <tr>
                <td class="auto-style6" style="text-align: right">
        <asp:Label ID="CustomerID2" runat="server" CssClass="label" Text="Customer ID:" Font-Size="Small"></asp:Label>
                </td>
                <td class="auto-style7">
        <asp:TextBox ID="txtCustomerID2" runat="server" Font-Size="Small" ReadOnly="True" CssClass="textbox"></asp:TextBox>
                </td>
                <td class="auto-style3">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6" style="text-align: right">
        <asp:Label ID="lblName" runat="server" CssClass="label" Text="Name:" Font-Size="Small"></asp:Label>
                </td>
                <td class="auto-style7">
        <asp:TextBox ID="txtName" runat="server" CssClass="textbox" Font-Size="Small" ReadOnly="True"></asp:TextBox>
                </td>
                <td class="auto-style3">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6" style="text-align: right">
        <asp:Label ID="lblAddress" runat="server" CssClass="label" Text="Address:" Font-Size="Small"></asp:Label>
                </td>
                <td class="auto-style7">
        <asp:TextBox ID="txtAddress" runat="server" CssClass="textbox" Font-Size="Small" ReadOnly="True"></asp:TextBox>
                </td>
                <td class="auto-style3">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4" style="text-align: right">
        <asp:Label ID="lblCityStateZip" runat="server" CssClass="label" Text="City, State, Zip:" Font-Size="Small"></asp:Label>
                </td>
                <td class="auto-style8">
        <asp:TextBox ID="txtCity" runat="server" CssClass="textbox" Font-Size="Small" ReadOnly="True"></asp:TextBox>
        <asp:TextBox ID="txtState" runat="server" CssClass="textbox" Font-Size="Small" ReadOnly="True" Width="40px"></asp:TextBox>
        <asp:TextBox ID="txtZip" runat="server" CssClass="textbox" Font-Size="Small" ReadOnly="True" Width="140px"></asp:TextBox>
                </td>
                <td class="auto-style5">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1" style="text-align: right">
        <asp:Label ID="lblPhone" runat="server" CssClass="label" Text="Phone:" Font-Size="Small"></asp:Label>
                </td>
                <td class="auto-style7">
        <asp:TextBox ID="txtPhone" runat="server" CssClass="textbox" Font-Size="Small" ReadOnly="True"></asp:TextBox>
                </td>
                <td class="auto-style3">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6" style="text-align: right">
        <asp:Label ID="lblEmail" runat="server" CssClass="label" Text="Email:" Font-Size="Small"></asp:Label>
                </td>
                <td class="auto-style7">
        <asp:TextBox ID="txtEmail" runat="server" CssClass="textbox" Font-Size="Small" ReadOnly="True"></asp:TextBox>
                </td>
                <td class="auto-style3">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6" style="text-align: right">
                    &nbsp;</td>
                <td class="auto-style7">
                    &nbsp;</td>
                <td class="auto-style3">
                    &nbsp;</td>
            </tr>
        </table>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="sqlIncidents" ForeColor="Black" GridLines="Vertical" Width="780px">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="ProductCode" HeaderText="ProductCode" SortExpression="ProductCode" />
                <asp:BoundField DataField="DateOpened" HeaderText="DateOpened" SortExpression="DateOpened" />
                <asp:BoundField DataField="DateClosed" HeaderText="DateClosed" SortExpression="DateClosed" />
                <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
            </Columns>
            <FooterStyle BackColor="#CCCC99" />
            <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
            <RowStyle BackColor="#F7F7DE" />
            <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#FBFBF2" />
            <SortedAscendingHeaderStyle BackColor="#848384" />
            <SortedDescendingCellStyle BackColor="#EAEAD3" />
            <SortedDescendingHeaderStyle BackColor="#575357" />
        </asp:GridView>
        <br />
        <asp:SqlDataSource ID="sqlIncidents" runat="server" ConnectionString="<%$ ConnectionStrings:TechSupportDB %>" SelectCommand="SELECT [ProductCode], [DateOpened], [DateClosed], [Title] FROM [Incidents] WHERE ([CustomerID] = @CustomerID)">
            <SelectParameters>
                <asp:Parameter Name="CustomerID" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="sqlCustomerInfo" runat="server" ConnectionString="<%$ ConnectionStrings:TechSupportDB %>" OnSelected="sqlCustomerInfo_Selected" SelectCommand="SELECT * FROM [Customers] WHERE ([CustomerID] = @CustomerID)">
            <SelectParameters>
                <asp:Parameter Name="CustomerID" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
</asp:Content>
