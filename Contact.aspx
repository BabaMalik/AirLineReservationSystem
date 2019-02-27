<%@ Page Title="" Language="C#" MasterPageFile="~/mainmaster.master" AutoEventWireup="true" CodeFile="Contact.aspx.cs" Inherits="Contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        *{
            color:white;
           
        }

      h1{
            text-align:center;
        }
      .left{
          width:350px;
          height:400px;
          float:left;
          border-radius:25px;
           margin-left:80px;
           margin-top:80px;
           
            background: linear-gradient(to bottom, #33ccff 0%, #ff99cc 100%);
               color:white;

      }
    
      .center{
          float:left;
          margin-left:30px;
          border-radius:25px;
           width:350px;
          height:400px;
           margin-top:80px;
           background:rgba(0,0,0,.8);
   // background: linear-gradient(to bottom, red 0%, #ff99cc 100%);
          color:white;
      }
      .right{
          float:right;
           margin-left:30px;
          border-radius:25px;
           width:350px;
          height:400px;
         
           margin-top:80px;
            background:rgba(0,0,0,.8);
       //  background: linear-gradient(to bottom,blue 0%, #ff99cc 100%);
             color:white;
             margin-right:50px;
      }
      div.center p{
          margin-left:50px;
          
      }
       div.right p{
          margin-left:50px;
      }
       div.left p{
          margin-left:50px;
      }
     
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>
        <h1>Contact Details</h1>

         <div class="center" >
             <asp:Image ID="Image2" runat="server" style= "border-radius:80%; margin-top:20px; width:150px; height:150px;
                                                           margin-left:90px; " ImageUrl="~/images/moulidar.jpeg" class="img1"/> 
          
            <p>Mouli Dwayne</p>
            <p><b>Roll Number :</b> 16471A05L9</p>
            <p><b>Gmail:</b>moulidwayne@gmail.com</p>
             <p><b>Phone No:</b>987654321</p>
        </div>
        <div class="left">
        <asp:Image ID="Image3" runat="server" style= "border-radius:80%; margin-top:20px; width:150px; height:150px;
                                                           margin-left:90px; " ImageUrl="~/images/Malik.jpg" class="img1"/> 
       
         
            <p>Shaik Baba Malik Hussain</p>
            <p><b>Roll Number :</b> 16471A05N3</p>
            <p><b>Gmail:</b>Babamalik206@gmail.com</p>
            <p><b>Phone No:</b>7702026606</p>

        </div>
       
        <div class="right">
                  <asp:Image ID="Image1" runat="server" style= "border-radius:80%; margin-top:20px; width:150px; height:150px;
                                                           margin-left:90px; " ImageUrl="~/images/shoaib.jpg" class="img1"/>
         
            <p>Shaik Shoiab</p>
            <p><b>Roll Number :</b> 16471A05M0</p>
            <p><b>Gmail:</b>shoiab.no3@gmail.com</p>
             <p><b>Phone No:</b>8008291256</p>
        </div>
    </div>
</asp:Content>

