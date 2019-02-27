<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="Passenger.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
      .box{
          width:400px;
          height:600px;
          background:transparent;
         box-sizing:border-box;
          text-align:center;
          border-radius:25px;
          margin-left:400px;
          border:3px solid #0009;
          background:#0009;
      }
    
   
        .auto-style1 {
            margin-left: 400px;
        }
        .auto-style2 {
            height: 86px;
            margin-top: 43px;
        }
        .auto-style3{
            border-radius:20px;
        }
        .gv{
            text-align:center;
        }
       
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p style="text-align:center; margin-top:100px;" >Please pvovide passergers details.....!<br />To upload passenger details press the following button</p>
    <asp:Button align="center" ID="addpassdetails" margin-left="400px;" style=" border-radius:20px;
            height:50px; color:white; font-family:'Comic Sans MS',cursive,sans-serif; background:blue;" runat="server" Text="Add Passenger details" OnClick="addpassdetails_Click" CssClass="auto-style1" Width="324px" />
    <div id="divPassenger" runat="server" visible="false">
        <br />
        <br />
  
      <div class="box">
            <p class="auto-style2">    Passenger Id
                <asp:Label runat="server" class="auto-style3" ID="lblpassid"></asp:Label>
                </p>

           <p>Passenger Name
                
                    <asp:TextBox ID="txtPName" class="auto-style3" runat="server"></asp:TextBox>
          </p>
          <p>
              Age
               
                    <asp:TextBox ID="txtAge" class="auto-style3" runat="server"></asp:TextBox>
               </p>
              <p>
                Gender
               
                    <asp:DropDownList ID="ddlGender" class="auto-style3" runat="server">
                        <asp:ListItem Value="1">Male</asp:ListItem>
                        <asp:ListItem Value="0">Female</asp:ListItem>
                    </asp:DropDownList>
               </p>
          <p>
                 Date of journey
   
                    <asp:TextBox ID="txtdoj" class="auto-style3" runat="server" TextMode="Date"></asp:TextBox>
             </p>
          <p>
                Select Seat type
              
                    <asp:DropDownList ID="ddlseat" runat="server" class="auto-style3" OnSelectedIndexChanged="ddlseat_SelectedIndexChanged">
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem>Business Class</asp:ListItem>
                        <asp:ListItem>Economy Class</asp:ListItem>
                    </asp:DropDownList>
          </p>
               <p>Cost
                <asp:Label ID="lblscost" runat="server"></asp:Label>
               
               </p>   
          <p> 
           <asp:Button ID="btnAdd"  runat="server" OnClick="btnAdd_Click" Text="Submit Details" style="height: 35px" />
               </p>
       
        <asp:Label ID="lblMsg" runat="server"></asp:Label>
          </div>
        
        <br />
        <asp:Button ID="txtshowpass" runat="server" OnClick="txtshowpass_Click" Text="Show Passengers" />
        
        <asp:GridView ID="gv" class="gv" runat="server" AutoGenerateColumns="False" DataKeyNames="passid" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="passid" HeaderText="passid" ReadOnly="True" SortExpression="passid" />
                <asp:BoundField DataField="passname" HeaderText="passname" SortExpression="passname" />
                <asp:BoundField DataField="passage" HeaderText="passage" SortExpression="passage" />
                <asp:BoundField DataField="passgender" HeaderText="passgender" SortExpression="passgender" />
                <asp:BoundField DataField="dateofjourney" HeaderText="dateofjourney" SortExpression="dateofjourney" />
                <asp:BoundField DataField="bookedseat" HeaderText="bookedseat" SortExpression="bookedseat" />
                <asp:BoundField DataField="seatcost" HeaderText="seatcost" SortExpression="seatcost" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [passid], [passname], [passage], [passgender], [dateofjourney], [bookedseat], [seatcost] FROM [passenger]" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [passenger] WHERE [passid] = @original_passid AND [passname] = @original_passname AND [passage] = @original_passage AND [passgender] = @original_passgender AND [dateofjourney] = @original_dateofjourney AND [bookedseat] = @original_bookedseat AND [seatcost] = @original_seatcost" InsertCommand="INSERT INTO [passenger] ([passid], [passname], [passage], [passgender], [dateofjourney], [bookedseat], [seatcost]) VALUES (@passid, @passname, @passage, @passgender, @dateofjourney, @bookedseat, @seatcost)" OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE [passenger] SET [passname] = @passname, [passage] = @passage, [passgender] = @passgender, [dateofjourney] = @dateofjourney, [bookedseat] = @bookedseat, [seatcost] = @seatcost WHERE [passid] = @original_passid AND [passname] = @original_passname AND [passage] = @original_passage AND [passgender] = @original_passgender AND [dateofjourney] = @original_dateofjourney AND [bookedseat] = @original_bookedseat AND [seatcost] = @original_seatcost">
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
        <asp:Button ID="btnsavepassdetails" runat="server" Text="Submit details" OnClick="btnsavepassdetails_Click" />
    </div>

</asp:Content>

