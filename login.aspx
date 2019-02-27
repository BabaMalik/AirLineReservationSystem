<%@ Page Title="" Language="C#" MasterPageFile="~/mainmaster.master" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    
    <style>
        .content{
            float:left;
            text-align:center;
            width:650px;
         
        }
        div.box a{
            float:right;
            font-size:15px;
            color:blue;
            font-family:'Comic Sans MS',cursive,sans-serif;
            margin-left:80px;
        }
        div.box p{
          
            font-family:'Comic Sans MS',cursive,sans-serif;
            font-size:20px;
        }
      
        .content {
             font-family:'Comic Sans MS',cursive,sans-serif;
            float: left;
            text-align: center;
            height: 467px;
            margin-top:120px;
            overflow:visible;
        }
        .box {
            background: transparent;
            box-sizing: border-box;
            box-shadow: 0px 15px 20px rgba(0,0,0,.8);
            border-radius:30px;
            width: 550px;
            height: 400px;  
            margin-right: 35px;
            margin-top: 150px;
            float: right;
            text-align: center;
            
           
        }    
        .auto-style1{
            margin-right:80px;
        }
        .auto-style2{
            border:2px solid white;
            width:190px;
            height:30px;
            border-radius:15px;
            font-size:15px;
        }
        
    </style>
 
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="box">   <asp:Label ID="lbl" style="color:red;" runat="server"></asp:Label>
        <h1 style="text-align:center;
                    font-family:'Comic Sans MS',cursive,sans-serif;">Log In</h1>
       <p>Customer Id&nbsp;&nbsp;<asp:TextBox ID="txturnm"  runat="server" class="auto-style2"></asp:TextBox></p>
       <p>Passsword&nbsp;&nbsp;<asp:TextBox ID="txtpswd" runat="server"  CssClass="auto-style2" TextMode="Password"></asp:TextBox></p>

        <asp:Button ID="Savebtn"  runat="server" Text="Submit" style=" border:2px solid outset;
                                                                       width:120px;
                                                                       height:30px;
                                                                       border-radius:10px;
                                                                       background:orangered;
                                                                      font-family:'Comic Sans MS',cursive,sans-serif;
                                                                      float:left;
                                                                      margin-left:75px;" OnClick="Savebtn_Click"/><br/>

        <a href="#" class="auto-style1" >Forgot Password</a><br/><br />
        <a href="signin.aspx" class="auto-style1">New Registration</a>
    </div>
    <div class="content">
        <h1>Air India</h1>
    <p>

                   Airline reservation systems incorporate airline schedules, fare tariffs,passenger reservations and 
        ticket records. An airline's direct distribution works within their own reservation system, 
        as well as pushing out information to the GDS. The second type of direct distribution channel
         are consumers who use the internet or mobile applications to make their own reservations. 
        Travel agencies and other indirect distribution channels access the same GDS as those accessed 
        by the airline reservation systems, and all messaging is transmitted by a standardized messaging 
        system that functions on two types apply to more than air transportation. Since airline reservation systems are
         the operation of an in-house airline reservation system is relatively expensive. </p>

    </div>
  
</asp:Content>

