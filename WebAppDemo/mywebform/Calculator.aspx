<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Calculator.aspx.cs" Inherits="WebAppDemo.mywebform.Calculator" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style6 {
            width: 100%;
            border: 2px solid #00FFFF;
            background-color: #C0C0C0;
        }
        .auto-style7 {
            width: 363px;
        }
    </style>
</head>
<body style="height: 20px">
    <form id="form1" runat="server">
        <table class="auto-style6">
            <tr>
                <td colspan="2"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Working with ASP.NET Web Form @ PAPPU KUMAR KESHARI</strong></td>
            </tr>
            <tr>
                <td class="auto-style7"><strong>First Number</strong></td>
                <td><strong>
                    <asp:TextBox ID="txtNum1" runat="server" Width="189px"></asp:TextBox>
                    </strong></td>
            </tr>
            <tr>
                <td class="auto-style7"><strong>Second Number</strong></td>
                <td>
                    <asp:TextBox ID="txtNum2" runat="server" Width="186px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style7"><strong>Third Number</strong></td>
                <td>
                    <asp:TextBox ID="txtNum3" runat="server" Width="183px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style7"><strong></strong></td>
                <td>
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Add Values" Width="128px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style7">&nbsp;</td>
                <td>
                    <asp:Label ID="Label1" runat="server"></asp:Label>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
