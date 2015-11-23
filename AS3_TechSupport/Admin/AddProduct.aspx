<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Main.Master" AutoEventWireup="true" CodeBehind="AddProduct.aspx.cs" Inherits="AS3_TechSupport.AddProduct" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 116px;
        }
        .auto-style2 {
            width: 236px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width:100%;">
        <tr>
            <td class="auto-style1" style="text-align: right">
                <asp:Label ID="lblProductCode" runat="server" CssClass="label" Text="Product Code: "></asp:Label>
            </td>
            <td class="auto-style2">
                <asp:TextBox ID="txtProductCode" runat="server" CssClass="textbox"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1" style="text-align: right">
                <asp:Label ID="lblProductName" runat="server" CssClass="label" Text="Name:"></asp:Label>
            </td>
            <td class="auto-style2">
                <asp:TextBox ID="txtProductName" runat="server" CssClass="textbox"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1" style="text-align: right">
                <asp:Label ID="lblProductVersion" runat="server" CssClass="label" Text="Version:"></asp:Label>
            </td>
            <td class="auto-style2">
                <asp:TextBox ID="txtProductVersion" runat="server" CssClass="textbox"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1" style="text-align: right; vertical-align: top;">
                <asp:Label ID="lblProductRelease" runat="server" CssClass="label" Text="Release Date:"></asp:Label>
            </td>
            <td class="auto-style2">
                <asp:Calendar ID="calReleaseDate" runat="server" BackColor="White" BorderColor="Black" BorderStyle="Solid" CellSpacing="1" CssClass="calendar" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" NextPrevFormat="ShortMonth">
                    <DayHeaderStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" Height="8pt" />
                    <DayStyle BackColor="#CCCCCC" />
                    <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="White" />
                    <OtherMonthDayStyle ForeColor="#999999" />
                    <SelectedDayStyle BackColor="#333399" ForeColor="White" />
                    <TitleStyle BackColor="#333399" BorderStyle="Solid" Font-Bold="True" Font-Size="12pt" ForeColor="White" Height="12pt" />
                    <TodayDayStyle BackColor="#999999" ForeColor="White" />
                </asp:Calendar>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">
                &nbsp;</td>
            <td class="auto-style2">
                <asp:Button ID="btnProductAccept" runat="server" CssClass="buttonAuto" OnClick="btnProductAccept_Click" Text="Add" Width="48%" />
                <asp:Button ID="btnProductCancel" runat="server" CssClass="buttonAuto" Text="Back" Width="48%" OnClick="btnProductCancel_Click" />
            </td>
            <td>
                <asp:SqlDataSource ID="sqlAddProduct" runat="server" ConnectionString="<%$ ConnectionStrings:TechSupportDB %>" InsertCommand="INSERT INTO Products(Name, Version, ReleaseDate, ProductCode) VALUES (@Name, @Version, @ReleaseDate, @ProductCode)" SelectCommand="SELECT * FROM [Products]"></asp:SqlDataSource>
            </td>
        </tr>
    </table>
</asp:Content>
