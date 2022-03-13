<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AdapterDemo.aspx.cs" Inherits="WebAppDemo.DatabaseWork.AdapterDemo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <p>
    <br />
    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Show All Users" Width="164px" />
</p>
<p>
    <asp:Label ID="Label1" runat="server"></asp:Label>
</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
<p>
    <%--<asp:GridView ID="GridView1" runat="server" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="213px">
    </asp:GridView>--%>
    <asp:GridView ID="GridView3" runat="server" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Horizontal">
        <AlternatingRowStyle BackColor="#F7F7F7" />
        <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
        <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
        <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
        <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
        <SortedAscendingCellStyle BackColor="#F4F4FD" />
        <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
        <SortedDescendingCellStyle BackColor="#D8D8F0" />
        <SortedDescendingHeaderStyle BackColor="#3E3277" />
    </asp:GridView>
</p>
    <p>
        <asp:GridView ID="GridView4" runat="server" AllowPaging="True" AllowSorting="True" DataSourceID="SqlDataSource1" PageSize="3">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
            </Columns>
        </asp:GridView>
</p>
<p>
    &nbsp;</p>
<p>
    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" DataKeyNames="User_id" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="None" AllowPaging="True" AllowSorting="True" PageSize="3" Width="313px">
        <AlternatingRowStyle BackColor="PaleGoldenrod" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
            <asp:BoundField DataField="User_id" HeaderText="User_id" InsertVisible="False" ReadOnly="True" SortExpression="User_id" />
            <asp:BoundField DataField="Mobile" HeaderText="Mobile" SortExpression="Mobile" />
        </Columns>
        <FooterStyle BackColor="Tan" />
        <HeaderStyle BackColor="Tan" Font-Bold="True" />
        <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
        <SortedAscendingCellStyle BackColor="#FAFAE7" />
        <SortedAscendingHeaderStyle BackColor="#DAC09E" />
        <SortedDescendingCellStyle BackColor="#E1DB9C" />
        <SortedDescendingHeaderStyle BackColor="#C2A47B" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:PGDACSepDBConnectionString %>" DeleteCommand="DELETE FROM [User_Master] WHERE [User_id] = @User_id" InsertCommand="INSERT INTO [User_Master] ([UserName], [FullName], [Mobile]) VALUES (@UserName, @FullName, @Mobile)" SelectCommand="SELECT [User_id], [UserName], [FullName], [Mobile] FROM [User_Master]" UpdateCommand="UPDATE [User_Master] SET [UserName] = @UserName, [FullName] = @FullName, [Mobile] = @Mobile WHERE [User_id] = @User_id">
        <DeleteParameters>
            <asp:Parameter Name="User_id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="UserName" Type="Object" />
            <asp:Parameter Name="FullName" Type="Object" />
            <asp:Parameter Name="Mobile" Type="Decimal" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="UserName" Type="Object" />
            <asp:Parameter Name="FullName" Type="Object" />
            <asp:Parameter Name="Mobile" Type="Decimal" />
            <asp:Parameter Name="User_id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</p>
<p>
</p>
<p>
</p>
</asp:Content>
