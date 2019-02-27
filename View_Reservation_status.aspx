<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="View_Reservation_status.aspx.cs" Inherits="transaction" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        .head{
            margin-top:150px;
        }
        p{
            text-align:center;
            font-size:22px;

        }
        .Searchbtn{
           
            background:orangered;
            border-radius:15px;
            height:30px;
            width:120px;
        
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="head">
    <p>Booking ID <asp:TextBox ID="txtbookingid" runat="server" style="border:2px solid white; border-radius:15px; width:180px; height:25px;"></asp:TextBox>
        <asp:Button ID="Searchbtn" class="Searchbtn" runat="server"  Text="Search" OnClick="Searchbtn_Click" />
       
    </p>
        </div>
    <p>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="bookingid" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="bookingid" HeaderText="bookingid" ReadOnly="True" SortExpression="bookingid" />
                <asp:BoundField DataField="custid" HeaderText="custid" SortExpression="custid" />
                <asp:BoundField DataField="flightid" HeaderText="flightid" SortExpression="flightid" />
                <asp:BoundField DataField="dateofjourney" HeaderText="dateofjourney" SortExpression="dateofjourney" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [booking] WHERE ([bookingid] = @bookingid)" DeleteCommand="DELETE FROM [booking] WHERE [bookingid] = @bookingid" InsertCommand="INSERT INTO [booking] ([bookingid], [custid], [flightid], [dateofjourney]) VALUES (@bookingid, @custid, @flightid, @dateofjourney)" UpdateCommand="UPDATE [booking] SET [custid] = @custid, [flightid] = @flightid, [dateofjourney] = @dateofjourney WHERE [bookingid] = @bookingid">
            <DeleteParameters>
                <asp:Parameter Name="bookingid" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="bookingid" Type="String" />
                <asp:Parameter Name="custid" Type="String" />
                <asp:Parameter Name="flightid" Type="String" />
                <asp:Parameter DbType="Date" Name="dateofjourney" />
            </InsertParameters>
            <SelectParameters>
                <asp:ControlParameter ControlID="txtbookingid" Name="bookingid" PropertyName="Text" Type="String" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="custid" Type="String" />
                <asp:Parameter Name="flightid" Type="String" />
                <asp:Parameter DbType="Date" Name="dateofjourney" />
                <asp:Parameter Name="bookingid" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </p>
</asp:Content>

