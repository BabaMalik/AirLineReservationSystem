<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage3.master" AutoEventWireup="true" CodeFile="FlightsUpdation.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">



    <style type="text/css">
        *{
            color:white;
        }
        .auto-style1 {
            margin-top: 0px;
        }
        .auto-style2 {
            margin-left: 320px;
            margin-top: 0px;
            border:0px solid black;
        
        }
        div.box{
             background:transparent;
           box-sizing: border-box;
            box-shadow: 0px 15px 20px rgba(0,0,0,1.8);
            border-radius:10px;
            width: 500px;
          margin-left:400px;
          margin-top:100px;
            font-size:18px; 
        }
        .auto-style3 {
            height: 81px;
        }
        .auto-style4 {
            height: 100px;
        }
        .button{
           background-color:orangered;
          
           
           transition: alla 0.25s;
           background:orangered;
           width:90px;
           border-radius:15px;
           height:50px;

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
       .button1{
           background:blue;
            width:90px;
           border-radius:15px;
           height:50px;
       }
    </style>



</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="box">
    
        <table align="center">
            <tr>
                <td colspan="2" align="center"><h2 class="auto-style3">Flight details Updation</h2></td>
            </tr>

            <tr>
                <td>Enter flight ID</td>
                <td>
                    <asp:TextBox ID="txtfId" style="border-radius:15px;" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Enter flight name</td>
                <td>
                    <asp:TextBox ID="txtfName" style="border-radius:15px;" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Enter source</td>
                <td>
                    <asp:TextBox ID="txtfSource" style="border-radius:15px;" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Enter destination</td>
                <td>
                    <asp:TextBox ID="txtfDest" style="border-radius:15px;" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Arrival time</td>
                <td>
                    <asp:TextBox ID="txtArrTime" runat="server" style="border-radius:15px; width:60px;" TextMode="Time"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Departure time</td>
                <td>
                    <asp:TextBox ID="txtDeptTime" style="border-radius:15px; width:60px;" runat="server" TextMode="Time"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Number of Bussiness class Seats</td>
                <td>
                    <asp:TextBox ID="txtbcseats" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Number of Economy class Seats</td>
                <td>
                    <asp:TextBox ID="txtecseats" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Cost of Bussiness Class Seats</td>
                <td>
                    <asp:TextBox ID="txtbcostseats" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>cost of Economy Class Seats</td>
                <td>
                    <asp:TextBox ID="txtcosteseats" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="right" colspan="2" class="auto-style4">
                    <asp:Button CssClass="button" ID="btnUpdate" runat="server" Text="Update" style="margin-right:100px;" OnClick="btnUpdate_Click"  />&nbsp; &nbsp;&nbsp; &nbsp;
                    <asp:Button CssClass="button1" ID="btnReset" runat="server" Text="Reset" style="margin-left:140px;" OnClick="btnReset_Click" />
                </td>
            </tr>
        </table>
        <asp:Label ID="lblMsg" style="margin-left:450px;" runat="server" Text=""/>
   
    </div>
    <br />
    <br />
    <br />


    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="flightid" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="flightid" HeaderText="flightid" ReadOnly="True" SortExpression="flightid" />
            <asp:BoundField DataField="flightname" HeaderText="flightname" SortExpression="flightname" />
            <asp:BoundField DataField="source" HeaderText="source" SortExpression="source" />
            <asp:BoundField DataField="destination" HeaderText="destination" SortExpression="destination" />
            <asp:BoundField DataField="arivaltime" HeaderText="arivaltime" SortExpression="arivaltime" />
            <asp:BoundField DataField="departuretime" HeaderText="departuretime" SortExpression="departuretime" />
            <asp:BoundField DataField="noofbcseats" HeaderText="noofbcseats" SortExpression="noofbcseats" />
            <asp:BoundField DataField="noofecseats" HeaderText="noofecseats" SortExpression="noofecseats" />
            <asp:BoundField DataField="costofbcseat" HeaderText="costofbcseat" SortExpression="costofbcseat" />
            <asp:BoundField DataField="costofecseat" HeaderText="costofecseat" SortExpression="costofecseat" />
        </Columns>
    </asp:GridView>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [flight] WHERE [flightid] = @original_flightid AND [flightname] = @original_flightname AND [source] = @original_source AND [destination] = @original_destination AND [arivaltime] = @original_arivaltime AND [departuretime] = @original_departuretime AND [noofbcseats] = @original_noofbcseats AND [noofecseats] = @original_noofecseats AND [costofbcseat] = @original_costofbcseat AND [costofecseat] = @original_costofecseat" InsertCommand="INSERT INTO [flight] ([flightid], [flightname], [source], [destination], [arivaltime], [departuretime], [noofbcseats], [noofecseats], [costofbcseat], [costofecseat]) VALUES (@flightid, @flightname, @source, @destination, @arivaltime, @departuretime, @noofbcseats, @noofecseats, @costofbcseat, @costofecseat)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [flight]" UpdateCommand="UPDATE [flight] SET [flightname] = @flightname, [source] = @source, [destination] = @destination, [arivaltime] = @arivaltime, [departuretime] = @departuretime, [noofbcseats] = @noofbcseats, [noofecseats] = @noofecseats, [costofbcseat] = @costofbcseat, [costofecseat] = @costofecseat WHERE [flightid] = @original_flightid AND [flightname] = @original_flightname AND [source] = @original_source AND [destination] = @original_destination AND [arivaltime] = @original_arivaltime AND [departuretime] = @original_departuretime AND [noofbcseats] = @original_noofbcseats AND [noofecseats] = @original_noofecseats AND [costofbcseat] = @original_costofbcseat AND [costofecseat] = @original_costofecseat">
        <DeleteParameters>
            <asp:Parameter Name="original_flightid" Type="String" />
            <asp:Parameter Name="original_flightname" Type="String" />
            <asp:Parameter Name="original_source" Type="String" />
            <asp:Parameter Name="original_destination" Type="String" />
            <asp:Parameter DbType="Time" Name="original_arivaltime" />
            <asp:Parameter DbType="Time" Name="original_departuretime" />
            <asp:Parameter Name="original_noofbcseats" Type="Int32" />
            <asp:Parameter Name="original_noofecseats" Type="Int32" />
            <asp:Parameter Name="original_costofbcseat" Type="Double" />
            <asp:Parameter Name="original_costofecseat" Type="Double" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="flightid" Type="String" />
            <asp:Parameter Name="flightname" Type="String" />
            <asp:Parameter Name="source" Type="String" />
            <asp:Parameter Name="destination" Type="String" />
            <asp:Parameter DbType="Time" Name="arivaltime" />
            <asp:Parameter DbType="Time" Name="departuretime" />
            <asp:Parameter Name="noofbcseats" Type="Int32" />
            <asp:Parameter Name="noofecseats" Type="Int32" />
            <asp:Parameter Name="costofbcseat" Type="Double" />
            <asp:Parameter Name="costofecseat" Type="Double" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="flightname" Type="String" />
            <asp:Parameter Name="source" Type="String" />
            <asp:Parameter Name="destination" Type="String" />
            <asp:Parameter DbType="Time" Name="arivaltime" />
            <asp:Parameter DbType="Time" Name="departuretime" />
            <asp:Parameter Name="noofbcseats" Type="Int32" />
            <asp:Parameter Name="noofecseats" Type="Int32" />
            <asp:Parameter Name="costofbcseat" Type="Double" />
            <asp:Parameter Name="costofecseat" Type="Double" />
            <asp:Parameter Name="original_flightid" Type="String" />
            <asp:Parameter Name="original_flightname" Type="String" />
            <asp:Parameter Name="original_source" Type="String" />
            <asp:Parameter Name="original_destination" Type="String" />
            <asp:Parameter DbType="Time" Name="original_arivaltime" />
            <asp:Parameter DbType="Time" Name="original_departuretime" />
            <asp:Parameter Name="original_noofbcseats" Type="Int32" />
            <asp:Parameter Name="original_noofecseats" Type="Int32" />
            <asp:Parameter Name="original_costofbcseat" Type="Double" />
            <asp:Parameter Name="original_costofecseat" Type="Double" />
        </UpdateParameters>
    </asp:SqlDataSource>

</asp:Content>

