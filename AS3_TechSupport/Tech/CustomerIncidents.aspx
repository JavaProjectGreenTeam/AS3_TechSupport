<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Main.Master" AutoEventWireup="true" CodeBehind="CustomerIncidents.aspx.cs" Inherits="AS3_TechSupport.CustomerIncidents" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        <asp:Label ID="lblCustomerID1" runat="server" CssClass="label" Font-Size="Small" Text="CustomerID:"></asp:Label>
&nbsp;<asp:TextBox ID="txtCustomerID1" runat="server" Font-Size="Small" Width="57px" CssClass="textbox"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnGetCustomer" runat="server" CssClass="button" Font-Size="Small" Text="Get Customer" OnClick="btnGetCustomer_Click" />
    </p>
    <p>
        <asp:Label ID="CustomerID2" runat="server" CssClass="label" Font-Size="Small" Text="Customer ID:"></asp:Label>
&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtCustomerID2" runat="server" Font-Size="Small" ReadOnly="True" Width="63px" CssClass="textbox"></asp:TextBox>
    </p>
    <p>
        <asp:Label ID="lblName" runat="server" CssClass="label" Font-Size="Small" Text="Name:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtName" runat="server" CssClass="textbox" Font-Size="Small" ReadOnly="True" Width="296px"></asp:TextBox>
    </p>
    <p>
        <asp:Label ID="lblAddress" runat="server" CssClass="label" Font-Size="Small" Text="Address:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtAddress" runat="server" CssClass="textbox" Font-Size="Small" ReadOnly="True" Width="294px"></asp:TextBox>
    </p>
    <p>
        <asp:Label ID="lblCityStateZip" runat="server" CssClass="label" Font-Size="Small" Text="City, State, Zip:"></asp:Label>
&nbsp;&nbsp;
        <asp:TextBox ID="txtCity" runat="server" CssClass="textbox" Font-Size="Small" ReadOnly="True" Width="93px"></asp:TextBox>
&nbsp;
        <asp:TextBox ID="txtState" runat="server" CssClass="textbox" Font-Size="Small" ReadOnly="True" Width="87px"></asp:TextBox>
&nbsp;
        <asp:TextBox ID="txtZip" runat="server" CssClass="textbox" Font-Size="Small" ReadOnly="True" Width="82px"></asp:TextBox>
    </p>
    <p>
        <asp:Label ID="lblPhone" runat="server" CssClass="label" Font-Size="Small" Text="Phone:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtPhone" runat="server" CssClass="textbox" Font-Size="Small" ReadOnly="True"></asp:TextBox>
    </p>
    <p>
        <asp:Label ID="lblEmail" runat="server" CssClass="label" Font-Size="Small" Text="Email:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtEmail" runat="server" CssClass="textbox" Font-Size="Small" ReadOnly="True"></asp:TextBox>
    </p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
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
