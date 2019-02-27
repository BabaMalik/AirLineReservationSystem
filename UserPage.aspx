<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="UserPage.aspx.cs" Inherits="UserPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        .gv{
            text-align:center;
        }
        .syf{
            margin-top:100px;
            text-align:center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="syf">    <h1>Serch Your Flights </h1>
        <p>&nbsp;</p>
        <p style="text-align:center;">
            <asp:DropDownList ID="DropDownList1" runat="server"  style="border-radius:10px; width:120px; height:30px;" DataSourceID="SqlDataSource1" DataTextField="source" DataValueField="source">
            </asp:DropDownList>
            <asp:DropDownList ID="DropDownList2" runat="server"  style="border-radius:10px; width:120px;  height:30px;" DataSourceID="SqlDataSource2" DataTextField="destination" DataValueField="destination">
            </asp:DropDownList>
            <asp:Button ID="Button1" runat="server" style="border-radius:10px; width:100px; background:red; height:50px;" OnClick="Button1_Click" Text="Search" />
        </p>
            <asp:GridView ID="GridView1" class="gv" runat="server" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataKeyNames="flightid" DataSourceID="SqlDataSource3">
                <Columns>
                    <asp:BoundField DataField="flightid" HeaderText="flightid" ReadOnly="True" SortExpression="flightid" />
                    <asp:BoundField DataField="flightname" HeaderText="flightname" SortExpression="flightname" />
                    <asp:BoundField DataField="source" HeaderText="source" SortExpression="source" />
                    <asp:BoundField DataField="destination" HeaderText="destination" SortExpression="destination" />
                    <asp:BoundField DataField="arivaltime" HeaderText="arivaltime" SortExpression="arivaltime" />
                    <asp:BoundField DataField="departuretime" HeaderText="departuretime" SortExpression="departuretime" />
                    <asp:HyperLinkField HeaderText="Book Flights" NavigateUrl="~/Passenger.aspx" Text="Select Flight" />
                </Columns>
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
        <p>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [flightid], [flightname], [source], [destination], [arivaltime], [departuretime] FROM [flight] WHERE (([source] = @source) AND ([destination] = @destination))">
                <SelectParameters>
                    <asp:ControlParameter ControlID="DropDownList1" Name="source" PropertyName="SelectedValue" Type="String" />
                    <asp:ControlParameter ControlID="DropDownList2" Name="destination" PropertyName="SelectedValue" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
        </p>
        <p>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT DISTINCT [source] FROM [flight]"></asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT DISTINCT [destination] FROM [flight]"></asp:SqlDataSource>
        </p>





        </div>

</asp:Content>

