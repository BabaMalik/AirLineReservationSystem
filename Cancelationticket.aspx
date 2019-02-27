<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="Cancelationticket.aspx.cs" Inherits="Cancelationticket" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        h1{
            padding:80px;
            text-align:center;
        }
       
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <h1>Cancel Your Ticket Using your Passenger Id</h1>
    <div class="cancel">
    <p style="text-align:center;">Enter Your Passenger id &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox style=" width:180px; border-radius:20px;" ID="txtpassid" runat="server">

                   </asp:TextBox>
        <asp:Button ID="btnsearch" style=" width:100px; border-radius:20px; height:25px; background:red;"  runat="server" Text="Search" /></p>

        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" DataKeyNames="passid" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="None" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
            <AlternatingRowStyle BackColor="PaleGoldenrod" />
            <Columns>
                <asp:BoundField DataField="passid" HeaderText="passid" ReadOnly="True" SortExpression="passid" />
                <asp:BoundField DataField="passname" HeaderText="passname" SortExpression="passname" />
                <asp:BoundField DataField="passage" HeaderText="passage" SortExpression="passage" />
                <asp:BoundField DataField="passgender" HeaderText="passgender" SortExpression="passgender" />
                <asp:BoundField DataField="dateofjourney" HeaderText="dateofjourney" SortExpression="dateofjourney" />
                <asp:BoundField DataField="bookedseat" HeaderText="bookedseat" SortExpression="bookedseat" />
                <asp:BoundField DataField="seatcost" HeaderText="seatcost" SortExpression="seatcost" />
                <asp:CommandField CancelImageUrl="~/Cancelled.aspx" DeleteText="Cancel Ticket" ShowDeleteButton="True" />
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [passenger] WHERE [passid] = @original_passid AND [passname] = @original_passname AND [passage] = @original_passage AND [passgender] = @original_passgender AND [dateofjourney] = @original_dateofjourney AND [bookedseat] = @original_bookedseat AND [seatcost] = @original_seatcost" InsertCommand="INSERT INTO [passenger] ([passid], [passname], [passage], [passgender], [dateofjourney], [bookedseat], [seatcost]) VALUES (@passid, @passname, @passage, @passgender, @dateofjourney, @bookedseat, @seatcost)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [passenger] WHERE ([passid] = @passid)" UpdateCommand="UPDATE [passenger] SET [passname] = @passname, [passage] = @passage, [passgender] = @passgender, [dateofjourney] = @dateofjourney, [bookedseat] = @bookedseat, [seatcost] = @seatcost WHERE [passid] = @original_passid AND [passname] = @original_passname AND [passage] = @original_passage AND [passgender] = @original_passgender AND [dateofjourney] = @original_dateofjourney AND [bookedseat] = @original_bookedseat AND [seatcost] = @original_seatcost">
            <DeleteParameters>
                <asp:Parameter Name="original_passid" Type="String" />
                <asp:Parameter Name="original_passname" Type="String" />
                <asp:Parameter Name="original_passage" Type="String" />
                <asp:Parameter Name="original_passgender" Type="String" />
                <asp:Parameter DbType="Date" Name="original_dateofjourney" />
                <asp:Parameter Name="original_bookedseat" Type="String" />
                <asp:Parameter Name="original_seatcost" Type="Decimal" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="passid" Type="String" />
                <asp:Parameter Name="passname" Type="String" />
                <asp:Parameter Name="passage" Type="String" />
                <asp:Parameter Name="passgender" Type="String" />
                <asp:Parameter DbType="Date" Name="dateofjourney" />
                <asp:Parameter Name="bookedseat" Type="String" />
                <asp:Parameter Name="seatcost" Type="Decimal" />
            </InsertParameters>
            <SelectParameters>
                <asp:ControlParameter ControlID="txtpassid" Name="passid" PropertyName="Text" Type="String" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="passname" Type="String" />
                <asp:Parameter Name="passage" Type="String" />
                <asp:Parameter Name="passgender" Type="String" />
                <asp:Parameter DbType="Date" Name="dateofjourney" />
                <asp:Parameter Name="bookedseat" Type="String" />
                <asp:Parameter Name="seatcost" Type="Decimal" />
                <asp:Parameter Name="original_passid" Type="String" />
                <asp:Parameter Name="original_passname" Type="String" />
                <asp:Parameter Name="original_passage" Type="String" />
                <asp:Parameter Name="original_passgender" Type="String" />
                <asp:Parameter DbType="Date" Name="original_dateofjourney" />
                <asp:Parameter Name="original_bookedseat" Type="String" />
                <asp:Parameter Name="original_seatcost" Type="Decimal" />
            </UpdateParameters>
        </asp:SqlDataSource>
        </div>

</asp:Content>

