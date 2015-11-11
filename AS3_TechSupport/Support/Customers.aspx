<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Main.Master" AutoEventWireup="true" CodeBehind="Customers.aspx.cs" Inherits="AS3_TechSupport.Support.Customers" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            height: 31px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width:100%;">
        <tr>
            <td style="text-align: right">
                <asp:Label ID="lblCustomerID1" runat="server" CssClass="label" Text="Customer ID:" Font-Size="Small"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtSearch" runat="server" CssClass="textbox"></asp:TextBox>
                <asp:Button ID="btnSearch" runat="server" CssClass="button" Text="Search" OnClick="btnSearch_Click" />
            </td>
            <td>
                <asp:Button ID="btnAddCustomer" runat="server" CssClass="button" Text="Add Customer" OnClick="btnAddCustomer_Click" />
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="text-align: right">
                <asp:Label ID="lblCustomerID2" runat="server" CssClass="label" Text="Customer ID:" Font-Size="Small"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtCustomerID" runat="server" CssClass="textbox"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1" style="text-align: right">
                <asp:Label ID="lblName" runat="server" CssClass="label" Text="Name:" Font-Size="Small"></asp:Label>
            </td>
            <td class="auto-style1">
                <asp:TextBox ID="txtName" runat="server" CssClass="textbox"></asp:TextBox>
            </td>
            <td class="auto-style1"></td>
        </tr>
        <tr>
            <td style="text-align: right">
                <asp:Label ID="lblAddress" runat="server" CssClass="label" Text="Address:" Font-Size="Small"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtAddress" runat="server" CssClass="textbox"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="text-align: right">
                <asp:Label ID="lblCityStateZip" runat="server" CssClass="label" Text="City, State, Zip:" Font-Size="Small"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtCity" runat="server" CssClass="textbox"></asp:TextBox>
                <asp:TextBox ID="txtState" runat="server" CssClass="textbox" Width="40px"></asp:TextBox>
                <asp:TextBox ID="txtZip" runat="server" CssClass="textbox" Width="140px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1" style="text-align: right">
                <asp:Label ID="lblPhone" runat="server" CssClass="label" Text="Phone:" Font-Size="Small"></asp:Label>
            </td>
            <td class="auto-style1">
                <asp:TextBox ID="txtPhone" runat="server" CssClass="textbox"></asp:TextBox>
            </td>
            <td class="auto-style1"></td>
        </tr>
        <tr>
            <td style="text-align: right">
                <asp:Label ID="lblEmail" runat="server" CssClass="label" Text="Email:" Font-Size="Small"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtEmail" runat="server" CssClass="textbox"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
    <asp:GridView ID="tblCustomers" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="CustomerID" DataSourceID="sqlTable" ForeColor="Black" GridLines="Vertical" Width="780px" OnSelectedIndexChanged="tblCustomers_SelectedIndexChanged" AllowPaging="True" PageSize="20">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:CommandField ShowSelectButton="True" />
            <asp:BoundField DataField="CustomerID" HeaderText="CustomerID" InsertVisible="False" ReadOnly="True" SortExpression="CustomerID" />
            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
            <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
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
    <asp:SqlDataSource ID="sqlTable" runat="server" ConnectionString="<%$ ConnectionStrings:TechSupportDB %>" SelectCommand="SELECT [CustomerID], [Name], [City], [Email] FROM [Customers]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="sqlSearchQuery" runat="server" ConnectionString="<%$ ConnectionStrings:TechSupportDB %>" SelectCommand="SELECT * FROM [Customers] WHERE ([CustomerID] = @CustomerID)">
        <SelectParameters>
            <asp:Parameter Name="CustomerID" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="sqlDelete" runat="server" ConnectionString="<%$ ConnectionStrings:TechSupportDB %>" DeleteCommand="DELETE FROM Customers WHERE (CustomerID = @customerID)" SelectCommand="SELECT * FROM [Customers]"></asp:SqlDataSource>
</asp:Content>
