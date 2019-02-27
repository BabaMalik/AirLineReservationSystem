 <%@ Page Title="" Language="C#" MasterPageFile="~/mainmaster.master" AutoEventWireup="true" CodeFile="home1.aspx.cs" Inherits="Home1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
  
  <style>
      *{
          text-decoration:none;
      }
    

      .head{
          color:white;
      }
      .right{
 font-family:'Comic Sans MS',cursive,sans-serif;  

}
      .footbox{
           font-family:'Comic Sans MS',cursive,sans-serif; 
      }
      
    
      div.head h1{
           font-family:'Faster One';
           text-align:center;
          
           width:100%;
           height:75px;
           font-size:55px;
           color:white;
           
          
       }
      div.left{
          float:left;
          width:200px;
          height:600px;
         

      }
      div.right{
          margin-right:300px;
          padding-left:350px;
          width:650px;
      }
      div.left img{
          margin-top:120px;
      }

   .footer{
       width:100%;
       height:400px;
     color:black;
       background:white;
   }
  
      .auto-style1 {
          margin-left: 32px;
          margin-top: 2px;
          margin-bottom: 0px;
      }
      div.head img{
         -ms-transform: skewY(20deg); 
    -webkit-transform: skewY(20deg);
    transform: skewY(20deg);
}
    div.map{
        width:100%;
        height:500px;

    }
  /* latin */
@font-face {
  font-family: 'Faster One';
  font-style: normal;
  font-weight: 400;
  src: local('Faster One'), local('FasterOne-Regular'), url(https://fonts.gstatic.com/s/fasterone/v9/H4ciBXCHmdfClFb-vWhf-LyYhw.woff2) format('woff2');
  unicode-range: U+0000-00FF, U+0131, U+0152-0153, U+02BB-02BC, U+02C6, U+02DA, U+02DC, U+2000-206F, U+2074, U+20AC, U+2122, U+2191, U+2193, U+2212, U+2215, U+FEFF, U+FFFD;
}
   </style>
  
  
     <link href='https://fonts.googleapis.com/css?family=Faster One' rel='stylesheet'/>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   
     <div class="head">
         <p style="text-align:center; color:white;margin-left:120px; text-decoration:underline; font-family:'Faster One'; font-size:50px; ">Air India 
             <asp:Image ID="Image1" class="img" runat="server" imageurl="~/images/plane3.gif" style=" -moz-transform: scaleX(-1);
        -o-transform: scaleX(-1);
        -webkit-transform: scaleX(-1);
        transform: scaleX(-1);
        filter: FlipH;
        -ms-filter:''FlipH''; width:150px; height:150px;" CssClass="auto-style1" Height="92px" Width="157px"/></p>
  
            </div>
   
    <div class="left">
        <asp:Image ID="img" runat="server" Height="250px" ImageUrl="~/images/icon1.png" Width="250px" />

        </div>
   
    <div class="right" style="color:white;">
           <h1 style="color:white; 
                font-family:'Comic Sans MS',cursive,sans-serif; 
                text-align:center; 
                font-size:35px;">Our Values</h1><br/>
      <h3 style="color:white;">MISSION:</h3>
        <ul style="color:white;"> 
          <li style="color:white;">To be the best company to work for whereby employees are treated as part of a big family</li>
<li style="color:white;">Create a globally recognized ASEAN brand</li>
<li style="color:white;">To attain the lowest cost so that everyone can fly with AirAsia</li>
<li style="color:white;">Maintain the highest quality product, embracing technology to reduce cost and enhance service levels</li>
                                                         </ul><br/>
      <h3 style="color:white; font-size:25px;"><strong style="color:white;">VISION:</strong></h3> 
        <p style="font-size:20px; color:white;"> Our vision is to be a successful, world-standard company, working closely with business and organisations to improve their results.  We will achieve this by understanding client’s needs
             and providing quality products and services that exceed their expectations.  
            A strong community commitment is incorporated into our work whenever possible.  
            We look forward to the journey with passion.
    </p>
    </div>
        <div class="footer" style="color:black;">  
            <div class="info">

                  <div class="foot_contact" style="float:left; width:350px;  color:black;font-family:'Comic Sans MS',cursive,sans-serif;  margin-left:30px;">
      <h2>Narasaraopeta Eng College</h2>
      <address>
      Narasaraopeta, Guntur<br />
      Andhra Pradesh <br />
      Narasaraopet<br />
      522002
      </address>
      <ul>
        <li><strong>Tel:</strong> +91 9948994539</li>
        <li><strong>Fax:</strong> 2596122</li>
        <li class="last"><strong>Email:</strong> <a href="#">NECCSE2018@gmail.com.com</a></li>
      </ul>
    </div>
    <div class="footbox" style="float:left; color:black; width:300px;">
      <h2>Administration</h2>
      <ul>
        <li><a href="#">Disclaimer</a></li>
        <li><a href="#">Accessibility</a></li>
       
        <li><a href="#">Website Privacy</a></li>
       
        <li><a href="#">Annual Report</a></li>
        
        <li><a href="#">Job Vacancies</a></li>
        <li class="last"><a href="#">Semester Dates</a></li>
      </ul>
    </div>
    <div class="footbox" style="float:left;color:black; width:300px;">
      <h2>Link Block 2</h2>
      <ul>
        <li><a href="#">Schools and Colleges</a></li>
        <li><a href="#">Student Activities</a></li>
        <li><a href="#">Student Affairs</a></li>
        <li><a href="#">Student Development</a></li>
        <li><a href="#">Student Financial Services</a></li>
        <li><a href="#">Student Group Directory</a></li>
        <li><a href="#">Student Life</a></li>
        <li><a href="#">International Students</a></li>
        <li class="last"><a href="#">Global Learning</a></li>
      </ul>
    </div>
    <div class="footbox last" style="float:right; color:black; font-family:'Comic Sans MS',cursive,sans-serif;  width:260px;">
      <h2>Link Block 3</h2>
      <ul>
        <li><a href="#">Academic Advisory</a></li>
        <li><a href="#">Academic Assistance</a></li>
        <li><a href="#">Academic Calendars</a></li>
        <li><a href="#">Academics Office</a></li>
        <li><a href="#">Administration</a></li>
        <li><a href="#">Adult Learners</a></li>
        <li><a href="#">Alumni Chapters</a></li>
        <li><a href="#">Alumni Events</a></li>
        <li class="last"><a href="#">Residential Colleges</a></li>
      </ul>
    </div>
  </div>
</div>
    <div class="map">
    
             <div id="googleMap" style="height:300px;width:100%;">
               
                 

<!-- Add Google Maps -->
<script src="https://maps.googleapis.com/maps/api/js"></script>
    
<script>
var myCenter = new google.maps.LatLng(41.878114, -87.629798);

function initialize() {
var mapProp = {
  center:myCenter,
  zoom:12,
  scrollwheel:false,
  draggable:false,
  mapTypeId:google.maps.MapTypeId.ROADMAP
  };

var map = new google.maps.Map(document.getElementById("googleMap"),mapProp);

var marker = new google.maps.Marker({
  position:myCenter,
  });

marker.setMap(map);
}

google.maps.event.addDomListener(window, 'load', initialize);
</script>



                 <footer class="container-fluid text-center">
  <a href="#myPage" title="To Top">
    <span class="glyphicon glyphicon-chevron-up"></span>
  </a>
  <p>Bootstrap Theme Made By <a href="http://www.w3schools.com" title="Visit w3schools">www.w3schools.com</a></p>
</footer>
  </div>
    </div>
</asp:Content>

