<%@ Page Language="VB" %>

<!DOCTYPE html>

<script runat="server">

    Protected Sub GridView1_RowCommand(sender As Object, e As GridViewCommandEventArgs)
    End Sub

    Protected Sub GridView1_SelectedIndexChanged(sender As Object, e As EventArgs)
    End Sub

    Protected Sub GridView1_RowUpdating(sender As Object, e As GridViewUpdateEventArgs)
    End Sub

    Protected Sub GridView1_RowUpdated(sender As Object, e As GridViewUpdatedEventArgs)
        GridView1.DataBind()
    End Sub
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h1>Interview Test</h1>
    </div>
    <asp:Panel ID="pnlSelectEntry" runat="server">
        <asp:GridView 
                ID="GridView1" 
                runat="server" 
                AllowPaging="True" 
                AllowSorting="True" 
                AutoGenerateColumns="False" 
                CellPadding="4" 
                DataSourceID="sdsTest" ForeColor="#333333" GridLines="None" OnRowCommand="GridView1_RowCommand" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" OnRowUpdating="GridView1_RowUpdating" OnRowUpdated="GridView1_RowUpdated">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
                <asp:BoundField DataField="Forename" HeaderText="Forename" SortExpression="Forename" />
                <asp:BoundField DataField="Surname" HeaderText="Surname" SortExpression="Surname" />
                <asp:BoundField DataField="PO_Box" HeaderText="PO_Box" SortExpression="PO_Box" />
                <asp:BoundField DataField="Address_1" HeaderText="Address_1" SortExpression="Address_1" />
                <asp:BoundField DataField="Address_2" HeaderText="Address_2" SortExpression="Address_2" />
                <asp:BoundField DataField="Address_3" HeaderText="Address_3" SortExpression="Address_3" />
                <asp:BoundField DataField="Address_4" HeaderText="Address_4" SortExpression="Address_4" />
                <asp:BoundField DataField="Address_5" HeaderText="Address_5" SortExpression="Address_5" />
                <asp:BoundField DataField="Postcode" HeaderText="Postcode" SortExpression="Postcode" />
                <asp:BoundField DataField="Telephone" HeaderText="Telephone" SortExpression="Telephone" />
                <asp:BoundField DataField="Mobile" HeaderText="Mobile" SortExpression="Mobile" />
                <asp:BoundField DataField="Extension" HeaderText="Extension" SortExpression="Extension" />
                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                <asp:CommandField ShowEditButton="True" />
            </Columns>
            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" />
            <SortedDescendingHeaderStyle BackColor="#4870BE" />
        </asp:GridView>
        <asp:SqlDataSource 
                ID="sdsTest" 
                runat="server" 
                ConnectionString="<%$ ConnectionStrings:SMC_TestConnectionString %>" 
                UpdateCommand="dbo.Customer_Details_Insert"
                UpdateCommandType="StoredProcedure"
                SelectCommand="SELECT [Title], [Forename], [Surname], [Postcode], [PO_Box], [Address_1], [Address_2], [Address_5], [Telephone], [Mobile], [Extension], [Email], [Address_4], [Address_3] FROM [Customer_Details]">
            <UpdateParameters>
                <asp:Parameter Name="Title" DbType="String" Direction="Input" />
                <asp:Parameter Name="Forename" DbType="String" Direction="Input" />
                <asp:Parameter Name="Surname" DbType="String" Direction="Input" />
                <asp:Parameter Name="PO_Box" DbType="String" Direction="Input" />
                <asp:Parameter Name="Address_1" DbType="String" Direction="Input" />
                <asp:Parameter Name="Address_2" DbType="String" Direction="Input" />
                <asp:Parameter Name="Address_3" DbType="String" Direction="Input" />
                <asp:Parameter Name="Address_4" DbType="String" Direction="Input" />
                <asp:Parameter Name="Address_5" DbType="String" Direction="Input" />
                <asp:Parameter Name="Postcode" DbType="String" Direction="Input" />
                <asp:Parameter Name="Telephone" DbType="String" Direction="Input" />
                <asp:Parameter Name="Extension" DbType="String" Direction="Input" />
                <asp:Parameter Name="Mobile" DbType="String" Direction="Input" />
                <asp:Parameter Name="Email" DbType="String" Direction="Input" />
            </UpdateParameters>
                
        </asp:SqlDataSource>
    </asp:Panel>
    </form>
</body>
</html>
