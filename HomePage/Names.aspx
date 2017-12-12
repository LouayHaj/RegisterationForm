<%@ Page Title="" Language="C#" MasterPageFile="~/HomePage.Master" AutoEventWireup="true" CodeBehind="Names.aspx.cs" Inherits="HomePage.Names" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">
		function isDelete()
		{
			return confirm("Do you want to delete this item ?");
		}
	</script>
    <style type="text/css">
        .auto-style11 {
            font-size: large;
            color:white;
        }
        .auto-style12 {
            font-size: large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:NamesConnectionString %>" DeleteCommand="DELETE FROM [Names] WHERE [ID] = @ID" InsertCommand="INSERT INTO [Names] ([ID], [Fname], [Lname], [gender], [ID No], [Contry], [Address], [Phone], [E-Mail], [About You]) VALUES (Luey, Haj, Mail, 9963258966, Syria, Turkey, +9053265222, Luey@me.com, Eng)" ProviderName="<%$ ConnectionStrings:NamesConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [Names]" UpdateCommand="UPDATE [Names] SET [Fname] = ?, [Lname] = ?, [gender] = ?, [ID No] = ?, [Contry] = ?, [Address] = ?, [Phone] = ?, [E-Mail] = ?, [About You] = ? WHERE [ID] = ?">
        <DeleteParameters>
            <asp:Parameter Name="ID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="ID" Type="Int32" />
            <asp:Parameter Name="Fname" Type="String" />
            <asp:Parameter Name="Lname" Type="String" />
            <asp:Parameter Name="gender" Type="String" />
            <asp:Parameter Name="ID_No" Type="String" />
            <asp:Parameter Name="Contry" Type="String" />
            <asp:Parameter Name="Address" Type="String" />
            <asp:Parameter Name="Phone" Type="String" />
            <asp:Parameter Name="column1" Type="String" />
            <asp:Parameter Name="About_You" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Fname" Type="String" />
            <asp:Parameter Name="Lname" Type="String" />
            <asp:Parameter Name="gender" Type="String" />
            <asp:Parameter Name="ID_No" Type="String" />
            <asp:Parameter Name="Contry" Type="String" />
            <asp:Parameter Name="Address" Type="String" />
            <asp:Parameter Name="Phone" Type="String" />
            <asp:Parameter Name="column1" Type="String" />
            <asp:Parameter Name="About_You" Type="String" />
            <asp:Parameter Name="ID" Type="Int32" />
        </UpdateParameters>
</asp:SqlDataSource>
    <br />
    <span class="auto-style11"><strong>&nbsp;ID No:</strong></span>
    <asp:TextBox ID="TextBox1" runat="server" Height="30px" CssClass="auto-style12" Width="147px"></asp:TextBox>
    &nbsp;&nbsp;<asp:Button ID="Button4" runat="server" Font-Size="14pt" Height="34px" Text="Delete" Width="77px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
    <br />
<asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" GridLines="None" Height="132px" Width="464px" AllowSorting="True" AutoGenerateColumns="False" CellSpacing="1" DataKeyNames="ID" DataSourceID="SqlDataSource1" AllowPaging="True"  >
    <Columns>
        <asp:CommandField ShowEditButton="True" />
        <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
        <asp:BoundField DataField="Fname" HeaderText="Fname" SortExpression="Fname" />
        <asp:BoundField DataField="Lname" HeaderText="Lname" SortExpression="Lname" />
        <asp:BoundField DataField="gender" HeaderText="gender" SortExpression="gender" />
        <asp:BoundField DataField="ID No" HeaderText="ID No" SortExpression="ID No" />
        <asp:BoundField DataField="Contry" HeaderText="Contry" SortExpression="Contry" />
        <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
        <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone" />
        <asp:BoundField DataField="E-Mail" HeaderText="E-Mail" SortExpression="E-Mail" />
        <asp:BoundField DataField="About You" HeaderText="About You" SortExpression="About You" />
  
        <asp:TemplateField>
			<ItemTemplate>
				<asp:LinkButton ID="DeleteBtn" runat="server" CommandName="Delete"
				OnClientClick="return isDelete();">Delete
				</asp:LinkButton>
			</ItemTemplate>
		</asp:TemplateField>
        </Columns>
    <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
    <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
    <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
    <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
    <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
    <SortedAscendingCellStyle BackColor="#F1F1F1" />
    <SortedAscendingHeaderStyle BackColor="#594B9C" />
    <SortedDescendingCellStyle BackColor="#CAC9C9" />
    <SortedDescendingHeaderStyle BackColor="#33276A" />
</asp:GridView>
    <br />
    
</asp:Content>
