<%@ Page Title="" Language="C#" MasterPageFile="~/mainmaster.master" AutoEventWireup="true" CodeFile="flight.aspx.cs" Inherits="flight" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        h1{
            color:white;
            margin-top:180px;
            text-align:center;
    }
        p{
            text-align:center;

        }
       .button{
           background-color:orangered;
          
           
           transition: alla 0.25s;
           background:orangered;

       }   
       .button:hover{
           box-shadow:5px 5px 10px #000;
         
           animation:color 3s linear infinite;
       }
       @keyframes color{
           0%{background:yellow}
           40%{background:blue}
           80%{background:red}
           100%{background:orangered}
       }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


    <h1>Search Your Flights Where Would Yoy Like to FLy </h1>
    <br />
    <br />
    <p><asp:DropDownList ID="ddl1" runat="server" style="width:190px; background-color:black; color:white;
            height:30px;
            border-radius:15px;
            border:3px solid white;">
        <asp:ListItem>Dallas</asp:ListItem>
        <asp:ListItem>Florida</asp:ListItem>
        <asp:ListItem>New York</asp:ListItem>
        <asp:ListItem>Chicago</asp:ListItem>
        <asp:ListItem>Loss Angels</asp:ListItem>
    </asp:DropDownList>
        <asp:DropDownList ID="ddl2" runat="server" style="  width:190px; background-color:black; color:white;
            height:30px;
            border-radius:15px;
            border:3px solid white;">
              <asp:ListItem>Loss Angels</asp:ListItem>
              <asp:ListItem>Chicago</asp:ListItem>
              <asp:ListItem>New York</asp:ListItem>
              <asp:ListItem>Florida</asp:ListItem>
              <asp:ListItem>Dallas</asp:ListItem>

        </asp:DropDownList>
        <asp:Button CssClass="button" ID="Searchbtn" runat="server" style=" background-color:orangered; height:40px; border:3px solid white; border-radius:15px;" Text="Search Flights" OnClick="Searchbtn_Click"  />
        </p>
    <br />
    <br />
    <asp:Label runat="server" ID="lbl"></asp:Label>
    <br />
    <br />
    
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="flightid" DataSourceID="SqlDataSource1" Visible="False">
        <Columns>
            <asp:BoundField DataField="flightid" HeaderText="flightid" ReadOnly="True" SortExpression="flightid" />
            <asp:BoundField DataField="flightname" HeaderText="flightname" SortExpression="flightname" />
            <asp:BoundField DataField="source" HeaderText="source" SortExpression="source" />
            <asp:BoundField DataField="destination" HeaderText="destination" SortExpression="destination" />
            <asp:BoundField DataField="arivaltime" HeaderText="arivaltime" SortExpression="arivaltime" />
            <asp:BoundField DataField="departuretime" HeaderText="departuretime" SortExpression="departuretime" />
        </Columns>
    </asp:GridView>
    
    
        
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [flightid], [flightname], [source], [destination], [arivaltime], [departuretime] FROM [flight] WHERE ([source] = @source)">
        <SelectParameters>
            <asp:ControlParameter ControlID="ddl1" Name="source" PropertyName="SelectedValue" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    
    
        
</asp:Content>

