<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AdapterDemo1.aspx.cs" Inherits="WebAppDemo.DatabaseWork.AdapterDemo1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <p>
        <br />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Show All Users" />
    </p>
    <p>
        <asp:Label ID="Label1" runat="server"></asp:Label>
    </p>
    <p>
        <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical">
            <AlternatingRowStyle BackColor="#CCCCCC" />
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#808080" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#383838" />
        </asp:GridView>
    </p>
    <p>
        &nbsp;</p>
    <p>
        <asp:GridView ID="GridView2" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" DataKeyNames="User_Id" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Vertical" PageSize="3">
            <AlternatingRowStyle BackColor="#CCCCCC" />
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                <asp:BoundField DataField="User_Id" HeaderText="User_Id" InsertVisible="False" ReadOnly="True" SortExpression="User_Id" />
                <asp:BoundField DataField="Fullname" HeaderText="Fullname" SortExpression="Fullname" />
                <asp:BoundField DataField="Mobile" HeaderText="Mobile" SortExpression="Mobile" />
                <asp:BoundField DataField="Username" HeaderText="Username" SortExpression="Username" />
            </Columns>
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#808080" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#383838" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:PGDACSepDBConnectionString2 %>" DeleteCommand="DELETE FROM [User_Master] WHERE [User_Id] = @User_Id" InsertCommand="INSERT INTO [User_Master] ([Fullname], [Mobile], [Username]) VALUES (@Fullname, @Mobile, @Username)" SelectCommand="SELECT [User_Id], [Fullname], [Mobile], [Username] FROM [User_Master]" UpdateCommand="UPDATE [User_Master] SET [Fullname] = @Fullname, [Mobile] = @Mobile, [Username] = @Username WHERE [User_Id] = @User_Id">
            <DeleteParameters>
                <asp:Parameter Name="User_Id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Fullname" Type="String" />
                <asp:Parameter Name="Mobile" Type="Decimal" />
                <asp:Parameter Name="Username" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Fullname" Type="String" />
                <asp:Parameter Name="Mobile" Type="Decimal" />
                <asp:Parameter Name="Username" Type="String" />
                <asp:Parameter Name="User_Id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </p>
    <p>
        &nbsp;</p>
</asp:Content>
