<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Main.Master" AutoEventWireup="true" CodeBehind="Product.aspx.cs" Inherits="AS3_TechSupport.Product" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 220px;
        }
        .auto-style3 {
            width: 262px;
        }
        .auto-style4 {
            width: 220px;
            height: 25px;
        }
        .auto-style6 {
            width: 262px;
            height: 25px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width:100%;">
        <tr>
            <td class="auto-style4">
                <asp:Button ID="btnFirst" runat="server" CssClass="buttonAuto" Text="&lt;&lt;" OnClick="btnFirst_Click" ToolTip="First" />
                <asp:Button ID="btnPrevious" runat="server" CssClass="buttonAuto" Text="&lt;" OnClick="btnPrevious_Click" ToolTip="Previous" />
                <asp:Button ID="btnNext" runat="server" CssClass="buttonAuto" Text="&gt;" OnClick="btnNext_Click" ToolTip="Next" />
                <asp:Button ID="btnLast" runat="server" CssClass="buttonAuto" Text="&gt;&gt;" OnClick="btnLast_Click" ToolTip="Last" />
                <asp:Button ID="btnShowAll" runat="server" CssClass="buttonAuto" OnClick="btnShowAll_Click" Text="Show All" />
            </td>
            <td class="auto-style6" style="text-align: right">
                <asp:Button ID="btnAddProduct" runat="server" CssClass="button" OnClick="btnAddProduct_Click" Text="Add Product" Visible="False" />
            </td>
        </tr>
        <tr>
            <td class="auto-style1">
                <asp:Label ID="lblSearch" runat="server" CssClass="label" Text="Code:"></asp:Label>
                <asp:TextBox ID="txtProductCode" runat="server" CssClass="textbox" Width="112px"></asp:TextBox>
                <asp:Button ID="btnSearch" runat="server" CssClass="buttonAuto" OnClick="btnSearch_Click" Text="Search" />
            </td>
            <td class="auto-style3">&nbsp;</td>
        </tr>
        </table>
    <asp:GridView ID="gvProducts" runat="server" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" CssClass="gridView" ForeColor="Black" GridLines="Vertical">
        <AlternatingRowStyle BackColor="White" />
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
    <asp:SqlDataSource ID="sqlGetProduct" runat="server" ConnectionString="<%$ ConnectionStrings:TechSupportDB %>" DeleteCommand="DELETE FROM [Products] WHERE [ProductCode] = @ProductCode" InsertCommand="INSERT INTO [Products] ([ProductCode], [Name], [Version], [ReleaseDate]) VALUES (@ProductCode, @Name, @Version, @ReleaseDate)" SelectCommand="SELECT * FROM [Products] WHERE ([ProductCode] = @ProductCode)" UpdateCommand="UPDATE [Products] SET [Name] = @Name, [Version] = @Version, [ReleaseDate] = @ReleaseDate WHERE [ProductCode] = @ProductCode">
        <DeleteParameters>
            <asp:Parameter Name="ProductCode" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="ProductCode" Type="String" />
            <asp:Parameter Name="Name" Type="String" />
            <asp:Parameter Name="Version" Type="Decimal" />
            <asp:Parameter Name="ReleaseDate" Type="DateTime" />
        </InsertParameters>
        <SelectParameters>
            <asp:Parameter Name="ProductCode" Type="String" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="Name" Type="String" />
            <asp:Parameter Name="Version" Type="Decimal" />
            <asp:Parameter Name="ReleaseDate" Type="DateTime" />
            <asp:Parameter Name="ProductCode" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="sqlGetAllProducts" runat="server" ConnectionString="<%$ ConnectionStrings:TechSupportDB %>" SelectCommand="SELECT * FROM [Products]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="sqlFirst" runat="server" ConnectionString="<%$ ConnectionStrings:TechSupportDB %>" SelectCommand="SELECT TOP(1) * FROM [Products] ORDER BY [ProductCode]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="sqlLast" runat="server" ConnectionString="<%$ ConnectionStrings:TechSupportDB %>" SelectCommand="SELECT TOP(1) * FROM [Products] ORDER BY [ProductCode] DESC"></asp:SqlDataSource>
    <asp:SqlDataSource ID="sqlPrevious" runat="server" ConnectionString="<%$ ConnectionStrings:TechSupportDB %>" SelectCommand="SELECT TOP (1) ProductCode, Name, Version, ReleaseDate FROM Products WHERE (ProductCode &lt; @ProductCode) ORDER BY ProductCode DESC"></asp:SqlDataSource>
    <asp:SqlDataSource ID="sqlNext" runat="server" ConnectionString="<%$ ConnectionStrings:TechSupportDB %>" SelectCommand="SELECT TOP (1) ProductCode, Name, Version, ReleaseDate FROM Products WHERE (ProductCode &gt; @ProductCode) ORDER BY ProductCode"></asp:SqlDataSource>
    <asp:HiddenField ID="hfProductCode" runat="server" />
    </asp:Content>
