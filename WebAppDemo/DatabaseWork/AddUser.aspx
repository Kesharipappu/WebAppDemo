<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AddUser.aspx.cs" Inherits="WebAppDemo.DatabaseWork.AddUser" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <table style="width: 100%; border: 1px solid #D9534F; background-color: #AFD9EE">
        <tr>
            <td colspan="2">
                <br />
                <strong>Add New User Page:</strong></td>
        </tr>
        <tr>
            <td style="width: 211px"><strong>User Name</strong></td>
            <td style="width: 759px">
                <asp:TextBox ID="txtUserName" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 211px; height: 23px;"><strong>Password</strong></td>
            <td style="height: 23px; width: 759px;">
                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 211px; height: 23px"><strong>Full Name</strong></td>
            <td style="height: 23px; width: 759px;">
                <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 211px"><strong>Mobile</strong></td>
            <td style="width: 759px">
                <asp:TextBox ID="txtMobile" runat="server"></asp:TextBox>
                <br />
            </td>
        </tr>
        <tr>
            <td style="width: 211px">&nbsp;</td>
            <td style="width: 759px">
                <asp:Button ID="btnSave" runat="server" Text="Add user" OnClick="btnSave_Click" />
            </td>
        </tr>
        <tr>
            <td style="width: 211px">&nbsp;</td>
            <td style="width: 759px">&nbsp;</td>
             <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
