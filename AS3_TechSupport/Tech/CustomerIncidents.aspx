<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Main.Master" AutoEventWireup="true" CodeBehind="CustomerIncidents.aspx.cs" Inherits="AS3_TechSupport.CustomerIncidents" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            height: 23px;
            width: 108px;
        }
        .auto-style2 {
            width: 108px;
        }
        .auto-style3 {
            width: 522px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <table style="width:100%;">
            <tr>
                <td class="auto-style2" style="text-align: right">
        <asp:Label ID="lblCustomerID1" runat="server" CssClass="label" Font-Size="Small" Text="CustomerID:"></asp:Label>
                </td>
                <td class="auto-style3"><asp:TextBox ID="txtCustomerID1" runat="server" Font-Size="Small" CssClass="textbox"></asp:TextBox>
        <asp:Button ID="btnGetCustomer" runat="server" CssClass="button" Font-Size="Small" Text="Get Customer" OnClick="btnGetCustomer_Click" />
                </td>
            </tr>
            <tr>
                <td class="auto-style2" style="text-align: right">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2" style="text-align: right">
        <asp:Label ID="CustomerID2" runat="server" CssClass="label" Font-Size="Small" Text="Customer ID:"></asp:Label>
                </td>
                <td class="auto-style3">
        <asp:TextBox ID="txtCustomerID2" runat="server" Font-Size="Small" ReadOnly="True" CssClass="textbox"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2" style="text-align: right">
        <asp:Label ID="lblName" runat="server" CssClass="label" Font-Size="Small" Text="Name:"></asp:Label>
                </td>
                <td class="auto-style3">
        <asp:TextBox ID="txtName" runat="server" CssClass="textbox" Font-Size="Small" ReadOnly="True"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2" style="text-align: right">
        <asp:Label ID="lblAddress" runat="server" CssClass="label" Font-Size="Small" Text="Address:"></asp:Label>
                </td>
                <td class="auto-style3">
        <asp:TextBox ID="txtAddress" runat="server" CssClass="textbox" Font-Size="Small" ReadOnly="True"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2" style="text-align: right">
        <asp:Label ID="lblCityStateZip" runat="server" CssClass="label" Font-Size="Small" Text="City, State, Zip:"></asp:Label>
                </td>
                <td class="auto-style3">
        <asp:TextBox ID="txtCity" runat="server" CssClass="textbox" Font-Size="Small" ReadOnly="True"></asp:TextBox>
        <asp:TextBox ID="txtState" runat="server" CssClass="textbox" Font-Size="Small" ReadOnly="True" Width="41px"></asp:TextBox>
        <asp:TextBox ID="txtZip" runat="server" CssClass="textbox" Font-Size="Small" ReadOnly="True" Width="139px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style1" style="text-align: right">
        <asp:Label ID="lblPhone" runat="server" CssClass="label" Font-Size="Small" Text="Phone:"></asp:Label>
                </td>
                <td class="auto-style3">
        <asp:TextBox ID="txtPhone" runat="server" CssClass="textbox" Font-Size="Small" ReadOnly="True"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2" style="text-align: right">
        <asp:Label ID="lblEmail" runat="server" CssClass="label" Font-Size="Small" Text="Email:"></asp:Label>
                </td>
                <td class="auto-style3">
        <asp:TextBox ID="txtEmail" runat="server" CssClass="textbox" Font-Size="Small" ReadOnly="True"></asp:TextBox>
                </td>
            </tr>
        </table>
&nbsp;<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="TechSupport" ForeColor="Black" GridLines="Vertical" Width="780px">
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
        <asp:SqlDataSource ID="TechSupport" runat="server" ConnectionString="<%$ ConnectionStrings:TechSupportDB %>"></asp:SqlDataSource>
    </p>
</asp:Content>
