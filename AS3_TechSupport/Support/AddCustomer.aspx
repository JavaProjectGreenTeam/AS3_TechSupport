<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Main.Master" AutoEventWireup="true" CodeBehind="AddCustomer.aspx.cs" Inherits="AS3_TechSupport.AddCustomer" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width:100%;">
        <tr>
            <td>
                <asp:Label ID="lblName" runat="server" CssClass="label" Text="Name:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtName" runat="server" CssClass="textbox"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblAddress" runat="server" CssClass="label" Text="Address:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtAddress" runat="server" CssClass="textbox"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblCityStateZip" runat="server" CssClass="label" Text="City, State, Zip:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtCity" runat="server" CssClass="textbox"></asp:TextBox>
                <asp:DropDownList ID="ddlState" runat="server" CssClass="dropdown" DataSourceID="sqlStates" DataTextField="StateCode" DataValueField="StateCode" Width="50px">
                </asp:DropDownList>
                <asp:TextBox ID="txtZip" runat="server" CssClass="textbox" Width="140px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblPhone" runat="server" CssClass="label" Text="Phone:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtPhone" runat="server" CssClass="textbox"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblEmail" runat="server" CssClass="label" Text="Email:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtEmail" runat="server" CssClass="textbox"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:SqlDataSource ID="sqlInsertQuery" runat="server" ConnectionString="<%$ ConnectionStrings:TechSupportDB %>" InsertCommand="INSERT INTO Customers(Name, Address, City, State, ZipCode, Phone, Email) VALUES (@name, @address, @city, @state, @zipcode, @phone, @email)" SelectCommand="SELECT * FROM [Customers]"></asp:SqlDataSource>
            </td>
            <td>
                <asp:Button ID="btnAdd" runat="server" CssClass="button" OnClick="btnAdd_Click" Text="Add" />
                <asp:Button ID="btnCancel" runat="server" CssClass="button" Text="Cancel" OnClick="btnCancel_Click" />
                <asp:SqlDataSource ID="sqlStates" runat="server" ConnectionString="<%$ ConnectionStrings:TechSupportDB %>" SelectCommand="SELECT [StateCode] FROM [States]"></asp:SqlDataSource>
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
