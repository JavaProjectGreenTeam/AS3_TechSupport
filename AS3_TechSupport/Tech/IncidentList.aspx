<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Main.Master" AutoEventWireup="true" CodeBehind="IncidentList.aspx.cs" Inherits="AS3_TechSupport.Tech.IncidentList" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>Select one of the incidents to manage it or search for a specific Incident ID.</p>
    <asp:Label ID="lblIncidentID" runat="server" CssClass="label" Text="Incident ID:"></asp:Label>
    <asp:TextBox ID="txtSearch" runat="server" CssClass="textbox"></asp:TextBox>
    <asp:Button ID="btnSearch" runat="server" CssClass="buttonNav" OnClick="btnSearch_Click" Text="Search" />
    <asp:GridView ID="gvIncidents" runat="server" AutoGenerateSelectButton="True" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" CssClass="gridView" ForeColor="Black" GridLines="Vertical" OnSelectedIndexChanged="gvIncidents_SelectedIndexChanged" Width="100%">
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
        
    <asp:SqlDataSource ID="sqlAllIncidents" runat="server" ConnectionString="<%$ ConnectionStrings:TechSupportDB %>" SelectCommand="SELECT IncidentID, CustomerID, ProductCode, DateOpened, Title FROM Incidents WHERE (TechID IS NULL) AND (DateClosed IS NULL)"></asp:SqlDataSource>
    <asp:SqlDataSource ID="sqlSearch" runat="server" ConnectionString="<%$ ConnectionStrings:TechSupportDB %>" SelectCommand="SELECT [IncidentID], [CustomerID], [ProductCode], [DateOpened], [Title] FROM [Incidents] WHERE ([IncidentID] = @IncidentID)">
        <SelectParameters>
            <asp:Parameter Name="IncidentID" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>
