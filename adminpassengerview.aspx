<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage3.master" AutoEventWireup="true" CodeFile="adminpassengerview.aspx.cs" Inherits="adminpassengerview" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="custid" DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4">
        <Columns>
            <asp:BoundField DataField="custid" HeaderText="custid" ReadOnly="True" SortExpression="custid" />
            <asp:BoundField DataField="fname" HeaderText="fname" SortExpression="fname" />
            <asp:BoundField DataField="lname" HeaderText="lname" SortExpression="lname" />
            <asp:BoundField DataField="DOB" HeaderText="DOB" SortExpression="DOB" />
            <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
            <asp:BoundField DataField="password" HeaderText="password" SortExpression="password" />
            <asp:BoundField DataField="gender" HeaderText="gender" SortExpression="gender" />
            <asp:BoundField DataField="nationality" HeaderText="nationality" SortExpression="nationality" />
            <asp:BoundField DataField="phno" HeaderText="phno" SortExpression="phno" />
            <asp:BoundField DataField="address" HeaderText="address" SortExpression="address" />
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
        </Columns>
        <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
        <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
        <RowStyle BackColor="White" ForeColor="#330099" />
        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
        <SortedAscendingCellStyle BackColor="#FEFCEB" />
        <SortedAscendingHeaderStyle BackColor="#AF0101" />
        <SortedDescendingCellStyle BackColor="#F6F0C0" />
        <SortedDescendingHeaderStyle BackColor="#7E0000" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [customer]" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [customer] WHERE [custid] = @original_custid AND [fname] = @original_fname AND [lname] = @original_lname AND [DOB] = @original_DOB AND [email] = @original_email AND [password] = @original_password AND [gender] = @original_gender AND [nationality] = @original_nationality AND [phno] = @original_phno AND [address] = @original_address" InsertCommand="INSERT INTO [customer] ([custid], [fname], [lname], [DOB], [email], [password], [gender], [nationality], [phno], [address]) VALUES (@custid, @fname, @lname, @DOB, @email, @password, @gender, @nationality, @phno, @address)" OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE [customer] SET [fname] = @fname, [lname] = @lname, [DOB] = @DOB, [email] = @email, [password] = @password, [gender] = @gender, [nationality] = @nationality, [phno] = @phno, [address] = @address WHERE [custid] = @original_custid AND [fname] = @original_fname AND [lname] = @original_lname AND [DOB] = @original_DOB AND [email] = @original_email AND [password] = @original_password AND [gender] = @original_gender AND [nationality] = @original_nationality AND [phno] = @original_phno AND [address] = @original_address">
        <DeleteParameters>
            <asp:Parameter Name="original_custid" Type="String" />
            <asp:Parameter Name="original_fname" Type="String" />
            <asp:Parameter Name="original_lname" Type="String" />
            <asp:Parameter DbType="Date" Name="original_DOB" />
            <asp:Parameter Name="original_email" Type="String" />
            <asp:Parameter Name="original_password" Type="String" />
            <asp:Parameter Name="original_gender" Type="String" />
            <asp:Parameter Name="original_nationality" Type="String" />
            <asp:Parameter Name="original_phno" Type="String" />
            <asp:Parameter Name="original_address" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="custid" Type="String" />
            <asp:Parameter Name="fname" Type="String" />
            <asp:Parameter Name="lname" Type="String" />
            <asp:Parameter DbType="Date" Name="DOB" />
            <asp:Parameter Name="email" Type="String" />
            <asp:Parameter Name="password" Type="String" />
            <asp:Parameter Name="gender" Type="String" />
            <asp:Parameter Name="nationality" Type="String" />
            <asp:Parameter Name="phno" Type="String" />
            <asp:Parameter Name="address" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="fname" Type="String" />
            <asp:Parameter Name="lname" Type="String" />
            <asp:Parameter DbType="Date" Name="DOB" />
            <asp:Parameter Name="email" Type="String" />
            <asp:Parameter Name="password" Type="String" />
            <asp:Parameter Name="gender" Type="String" />
            <asp:Parameter Name="nationality" Type="String" />
            <asp:Parameter Name="phno" Type="String" />
            <asp:Parameter Name="address" Type="String" />
            <asp:Parameter Name="original_custid" Type="String" />
            <asp:Parameter Name="original_fname" Type="String" />
            <asp:Parameter Name="original_lname" Type="String" />
            <asp:Parameter DbType="Date" Name="original_DOB" />
            <asp:Parameter Name="original_email" Type="String" />
            <asp:Parameter Name="original_password" Type="String" />
            <asp:Parameter Name="original_gender" Type="String" />
            <asp:Parameter Name="original_nationality" Type="String" />
            <asp:Parameter Name="original_phno" Type="String" />
            <asp:Parameter Name="original_address" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>

