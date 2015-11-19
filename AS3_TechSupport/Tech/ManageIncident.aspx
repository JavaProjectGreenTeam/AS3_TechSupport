<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Main.Master" AutoEventWireup="true" CodeBehind="ManageIncident.aspx.cs" Inherits="AS3_TechSupport.Tech.ManageIncident" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            height: 23px;
        }
        .auto-style2 {
            height: 23px;
            width: 114px;
        }
        .auto-style3 {
            width: 114px;
        }
        .auto-style4 {
            height: 23px;
            width: 233px;
        }
        .auto-style5 {
            width: 233px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width:100%;">
        <tr>
            <td class="auto-style2" style="text-align: right">
                <asp:Label ID="lblCustomerName" runat="server" Text="Customer Name:" CssClass="label"></asp:Label>
            </td>
            <td class="auto-style4">
                <asp:TextBox ID="txtCustomerName" runat="server" CssClass="textbox" ReadOnly="True"></asp:TextBox>
            </td>
            <td class="auto-style1">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3" style="text-align: right">
                <asp:Label ID="lblCustomerID" runat="server" Text="Customer ID:" CssClass="label"></asp:Label>
            </td>
            <td class="auto-style5">
                <asp:TextBox ID="txtCustomerID" runat="server" CssClass="textbox" ReadOnly="True"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3" style="text-align: right">
                <asp:Label ID="lblIncidentID" runat="server" Text="Incident ID:" CssClass="label"></asp:Label>
            </td>
            <td class="auto-style5">
                <asp:TextBox ID="txtIncidentID" runat="server" CssClass="textbox" ReadOnly="True"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3" style="text-align: right">
                <asp:Label ID="lblTechName" runat="server" Text="Tech Name:" CssClass="label"></asp:Label>
            </td>
            <td class="auto-style5">
                <asp:DropDownList ID="ddlTechName" runat="server" CssClass="dropdown" DataSourceID="sqlTechName" DataTextField="Name" DataValueField="Name">
                </asp:DropDownList>
                <asp:TextBox ID="txtTechName" runat="server" CssClass="textbox" ReadOnly="True" Visible="False"></asp:TextBox>
            </td>
            <td>
                <asp:Button ID="btnGetTechID" runat="server" CssClass="buttonNav" OnClick="btnGetTechID_Click" Text="Get ID" />
            </td>
        </tr>
        <tr>
            <td class="auto-style3" style="text-align: right">
                <asp:Label ID="lblTechID" runat="server" Text="Tech ID:" CssClass="label"></asp:Label>
            </td>
            <td class="auto-style5">
                <asp:TextBox ID="txtTechID" runat="server" CssClass="textbox"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3" style="text-align: right">
                <asp:Label ID="lblDateOpened" runat="server" Text="Date Opened" CssClass="label"></asp:Label>
            </td>
            <td class="auto-style5">
                <asp:TextBox ID="txtDateOpened" runat="server" CssClass="textbox" ReadOnly="True"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3" style="text-align: right; vertical-align: top;">
                <asp:Label ID="lblDateClosed" runat="server" Text="Date Closed:" CssClass="label"></asp:Label>
            </td>
            <td class="auto-style5">
                <asp:Calendar ID="calDateClosed" runat="server" BackColor="White" BorderColor="Black" BorderStyle="Solid" CellSpacing="1" CssClass="calendar" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" NextPrevFormat="ShortMonth">
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
            <td class="auto-style2" style="text-align: right">
                <asp:Label ID="lblProductName" runat="server" Text="Product Name:" CssClass="label"></asp:Label>
            </td>
            <td class="auto-style4">
                <asp:TextBox ID="txtProductName" runat="server" CssClass="textbox" ReadOnly="True"></asp:TextBox>
            </td>
            <td class="auto-style1">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3" style="text-align: right">
                <asp:Label ID="lblProductCode" runat="server" Text="Product Code:" CssClass="label"></asp:Label>
            </td>
            <td class="auto-style5">
                <asp:TextBox ID="txtProductCode" runat="server" CssClass="textbox" ReadOnly="True"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3" style="text-align: right">
                <asp:Label ID="lblTitle" runat="server" Text="Title:" CssClass="label"></asp:Label>
            </td>
            <td class="auto-style5">
                <asp:TextBox ID="txtTitle" runat="server" CssClass="textbox" ReadOnly="True"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3" style="text-align: right">
                <asp:Label ID="lblDescription" runat="server" Text="Description:" CssClass="label"></asp:Label>
            </td>
            <td class="auto-style5">
                <asp:TextBox ID="txtDescription" runat="server" CssClass="multilineTextbox" ReadOnly="True" Rows="4" TextMode="MultiLine"></asp:TextBox>
            </td>
            <td>
                <asp:SqlDataSource ID="sqlUpdateIncident" runat="server" ConnectionString="<%$ ConnectionStrings:TechSupportDB %>" UpdateCommand="UPDATE Incidents SET TechID = @TechID WHERE (IncidentID = @IncidentID)"></asp:SqlDataSource>
                <asp:SqlDataSource ID="sqlCloseIncident" runat="server" ConnectionString="<%$ ConnectionStrings:TechSupportDB %>" UpdateCommand="UPDATE Incidents SET DateClosed = @DateClosed, TechID = @TechID WHERE (IncidentID = @IncidentID)"></asp:SqlDataSource>
                <asp:SqlDataSource ID="sqlGetIncident" runat="server" ConnectionString="<%$ ConnectionStrings:TechSupportDB %>" SelectCommand="SELECT * FROM [Incidents] WHERE ([IncidentID] = @IncidentID)">
                    <SelectParameters>
                        <asp:Parameter Name="IncidentID" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <asp:SqlDataSource ID="sqlCustomerName" runat="server" ConnectionString="<%$ ConnectionStrings:TechSupportDB %>" SelectCommand="SELECT [Name] FROM [Customers] WHERE ([CustomerID] = @CustomerID)">
                    <SelectParameters>
                        <asp:Parameter Name="CustomerID" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <asp:SqlDataSource ID="sqlTechName" runat="server" ConnectionString="<%$ ConnectionStrings:TechSupportDB %>" SelectCommand="SELECT [Name] FROM [Technicians]"></asp:SqlDataSource>
                <asp:SqlDataSource ID="sqlTechID" runat="server" ConnectionString="<%$ ConnectionStrings:TechSupportDB %>" SelectCommand="SELECT [TechID] FROM [Technicians] WHERE ([Name] = @Name)">
                    <SelectParameters>
                        <asp:Parameter Name="Name" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <asp:SqlDataSource ID="sqlGetTechName" runat="server" ConnectionString="<%$ ConnectionStrings:TechSupportDB %>" SelectCommand="SELECT [Name] FROM [Technicians] WHERE ([TechID] = @TechID)">
                    <SelectParameters>
                        <asp:Parameter Name="TechID" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <asp:SqlDataSource ID="sqlProductName" runat="server" ConnectionString="<%$ ConnectionStrings:TechSupportDB %>" SelectCommand="SELECT [Name] FROM [Products] WHERE ([ProductCode] = @ProductCode)">
                    <SelectParameters>
                        <asp:Parameter Name="ProductCode" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td class="auto-style3" style="text-align: right">
                &nbsp;</td>
            <td class="auto-style5" style="text-align: center">
                <asp:Button ID="btnUpdate" runat="server" OnClick="btnUpdate_Click" Text="Update Incident" Width="48%" />
                <asp:Button ID="btnClose" runat="server" OnClick="btnClose_Click" Text="Close Incident" Width="48%" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        </table>
</asp:Content>
