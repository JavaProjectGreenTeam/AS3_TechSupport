<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Main.Master" AutoEventWireup="true" CodeBehind="Technician.aspx.cs" Inherits="AS3_TechSupport.Technician" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
        }
        .auto-style2 {
            width: 731px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <table style="width: 100%;">
            <tr>
                <td class="auto-style1">
                    <asp:Button ID="btnTechFirst" runat="server" CssClass="buttonNav" Text="&lt;&lt;" OnClick="btnTechFirst_Click" ToolTip="First" />
                    <asp:Button ID="btnPrevious" runat="server" CssClass="buttonNav" OnClick="btnPrevious_Click" Text="&lt;" ToolTip="Previous" />
                    <asp:Button ID="btnNext" runat="server" CssClass="buttonNav" Text="&gt;" OnClick="btnNext_Click" ToolTip="Next" />
                    <asp:Button ID="btnTechLast" runat="server" CssClass="button, buttonNav" Text="&gt;&gt;" OnClick="btnTechLast_Click" ToolTip="Last" />
                    <asp:Button ID="btnShowAll" runat="server" CssClass="buttonAuto" Text="Show All" OnClick="btnShowAll_Click" />
                </td>
                <td class="auto-style1" style="text-align: right">
                    <asp:Button ID="btnTechnician" runat="server" CssClass="button" Text="Add Technician" OnClick="btnTechnician_Click" Width="130px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style1" style="vertical-align: middle;">
                    <asp:Label ID="lblTechID" runat="server" CssClass="label" Font-Size="Small" Text="TechID:"></asp:Label>
                    <asp:TextBox ID="txtTechID" runat="server" CssClass="textbox" Font-Size="Small" Width="105px"></asp:TextBox>
                    <asp:Button ID="btnSearch" runat="server" CssClass="buttonAuto" OnClick="btnSearch_Click" Text="Search" />
                </td>
                <td class="auto-style1" style="vertical-align: middle;">
                    &nbsp;</td>
            </tr>
            </table>
    
            <asp:GridView ID="gvTechs" runat="server" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical" CssClass="gridView">
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
    
                    <asp:SqlDataSource ID="sqlGetTech" runat="server" ConnectionString="<%$ ConnectionStrings:TechSupportDB %>" SelectCommand="SELECT * FROM [Technicians] WHERE ([TechID] = @TechID)">
                        <SelectParameters>
                            <asp:Parameter Name="TechID" Type="Int32" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    <asp:SqlDataSource ID="sqlAllTechs" runat="server" ConnectionString="<%$ ConnectionStrings:TechSupportDB %>" SelectCommand="SELECT * FROM [Technicians]"></asp:SqlDataSource>
                    <asp:SqlDataSource ID="sqlFirst" runat="server" ConnectionString="<%$ ConnectionStrings:TechSupportDB %>" SelectCommand="SELECT TOP (1) TechID, Name, Email, Phone FROM Technicians ORDER BY TechID"></asp:SqlDataSource>
                    <asp:SqlDataSource ID="sqlLast" runat="server" ConnectionString="<%$ ConnectionStrings:TechSupportDB %>" SelectCommand="SELECT TOP (1) TechID, Name, Email, Phone FROM Technicians ORDER BY TechID DESC"></asp:SqlDataSource>
                    <asp:SqlDataSource ID="sqlPrevious" runat="server" ConnectionString="<%$ ConnectionStrings:TechSupportDB %>" SelectCommand="SELECT TOP(1) TechID, Name, Email, Phone FROM Technicians WHERE (TechID &lt; @TechID) ORDER BY TechID DESC"></asp:SqlDataSource>
                    <asp:SqlDataSource ID="sqlNext" runat="server" ConnectionString="<%$ ConnectionStrings:TechSupportDB %>" SelectCommand="SELECT TOP(1) TechID, Name, Email, Phone FROM Technicians WHERE (TechID &gt; @TechID) ORDER BY TechID ASC">
                        <SelectParameters>
                            <asp:Parameter Name="TechID" Type="Int32" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                <asp:HiddenField ID="hfTechID" runat="server" />
    
            </asp:Content>
