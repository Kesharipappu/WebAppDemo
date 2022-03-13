<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ManageUser.aspx.cs" Inherits="WebAppDemo.DatabaseWork.ManageUser" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <table style="width: 70%; margin: auto; border-color: #003300; background-color: #FF6699">
            <tr>
                <td colspan="3"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; Manage User:</strong></td>
            </tr>
            <tr>
                <td colspan="3">
                    <asp:Label ID="Label1" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td><strong>User Id</strong></td>
                <td colspan="2"><strong>
                    <asp:TextBox ID="txtUserId" runat="server"></asp:TextBox>
                    <asp:Button ID="btnSearch" runat="server" Text="Find User" />
                    </strong></td>
            </tr>
            <tr>
                <td><strong>User Name</strong></td>
                <td style="width: 197px" colspan="2">
                    <asp:TextBox ID="txtUserName" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td><strong>Password</strong></td>
                <td style="width: 197px" colspan="2">
                    <asp:TextBox ID="txtPwd" runat="server" TextMode="Password"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td><strong>Full Name</strong></td>
                <td style="width: 197px" colspan="2">
                    <asp:TextBox ID="txtFullName" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td><strong>Mobile</strong></td>
                <td style="width: 197px" colspan="2">
                    <asp:TextBox ID="txtNum" runat="server" TextMode="Number"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="height: 26px">
                    <asp:Button ID="btnUpdate" runat="server" Text="Update User" OnClick="txtBtn_Click" />
                </td>
                <td style="width: 197px; height: 26px; margin-left: 80px;">
                    <asp:Button ID="btnDelete" runat="server" Text="Delete User" />
                </td>
                <td style="width: 197px; height: 26px; margin-left: 80px;">
                    <asp:Button ID="btnViewAll" runat="server" Text="View All User" />
                </td>
            </tr>
            <tr>
                <td colspan="3">
                    <asp:GridView ID="GridView1" runat="server" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2">
                        <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                        <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                        <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                        <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#FFF1D4" />
                        <SortedAscendingHeaderStyle BackColor="#B95C30" />
                        <SortedDescendingCellStyle BackColor="#F1E5CE" />
                        <SortedDescendingHeaderStyle BackColor="#93451F" />
                    </asp:GridView>
                </td>
            </tr>
            <tr>
                <td colspan="3">&nbsp;</td>
            </tr>
        </table>
</asp:Content>
