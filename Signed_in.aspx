<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="Signed_in.aspx.cs" Inherits="Signed_in" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        div.h1{
            margin-top:100px;
        }
        p{
            text-align:center;
        }
        .sbutton{
            background:orangered;
            border-radius:15px;
            height:40px;
            width:90px;
        }
        .gv{
            text-align:center;
            margin-left:150px;
        }
    </style>
    
      
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>

       <h1 style="text-align:center; margin-top:100px; margin-left:100px;">Welcome to Airlines</h1>
       <p style="margin-left:100px;">Fly Where you Would Like to fly</p>
       <br />
       <br />
       
       <p>
           <asp:DropDownList ID="ddlsource" runat="server" DataSourceID="SqlDataSource2" DataTextField="destination" DataValueField="destination">
           </asp:DropDownList>
           <asp:DropDownList ID="ddldestination" runat="server" DataSourceID="SqlDataSource2" DataTextField="source" DataValueField="source">
           </asp:DropDownList>
           <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [source], [destination] FROM [flight]"></asp:SqlDataSource>
          
           <asp:Button ID="btnSearch" CssClass="sbutton" runat="server" Text="Search Flights" OnClick="btnSearch_Click" />
           </p>
       <br />
        <asp:Label ID="lbl" runat="server" Text=""></asp:Label>
       <br />
       <br />

        <asp:GridView ID="gvavailflight" runat="server" class="gv" AutoGenerateColumns="False" DataKeyNames="flightid" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="gvavailflight_SelectedIndexChanged">
            <Columns>
                <asp:BoundField DataField="flightid" HeaderText="flightid" ReadOnly="True" SortExpression="flightid" />
                <asp:BoundField DataField="flightname" HeaderText="flightname" SortExpression="flightname" />
                <asp:BoundField DataField="source" HeaderText="source" SortExpression="source" />
                <asp:BoundField DataField="destination" HeaderText="destination" SortExpression="destination" />
                <asp:BoundField DataField="arivaltime" HeaderText="arivaltime" SortExpression="arivaltime" />
                <asp:BoundField DataField="departuretime" HeaderText="departuretime" SortExpression="departuretime" />
                <asp:HyperLinkField NavigateUrl="~/Passenger.aspx" Text="Select Flight" />
            
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [flightid], [flightname], [source], [destination], [arivaltime], [departuretime] FROM [flight] WHERE (([source] = @source) AND ([destination] = @destination))">
            <SelectParameters>
                <asp:ControlParameter ControlID="ddlsource" Name="source" PropertyName="SelectedValue" Type="String" />
                <asp:ControlParameter ControlID="ddldestination" Name="destination" PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    </div>

</asp:Content>

