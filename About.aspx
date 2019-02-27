<%@ Page Title="" Language="C#" MasterPageFile="~/mainmaster.master" AutoEventWireup="true" CodeFile="About.aspx.cs" Inherits="About" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        *{
            color:white;
        }
        .content{
            margin-left:50px;
        }

        div.p{
            margin-top:200px;
           
         
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="content" style="margin-top:100px;">
        <h1 style="text-align:center">About Air India</h1>
    <p>
This Airline Reservation System Project will provide the user with the following
functions:
 Flight Booking System: The system allows the airline passenger to search for
flights that are available between the two travel cities, namely the “Departure city”
and “Arrival city” for a particular departure date. The system gives the list of
available flights with certain flight details and allows customer to choose a particular
flight suiting his comforts. If the seats are available in a particular flight, then the
system allows the passenger to book a seat of his/her choice. Otherwise it asks the
user to choose another flight. He can also cancel the current reservations without
any problem.
<b>Flight Status System: </b><p>Our system allows the registered users to check the flight
status if there is any delay in their flight timings due to inclement weather or any
other reason. It automatically notifies by sending a voice message to the authorised
passengers who have their tickets booked.</p>
<b>User Accounts System:</b><p> Creating and maintaining an online account on the
system, in order to see status and updates on booked flights. A User can login
into his account by providing its authorised username and password and
alternatively a new user can register into the system and hence become an
authorised user.</p>
<b>Web Check-In: </b><p>Passengers can get their boarding pass in advance through
web check in and go straight to the baggage drop-counter. This will surely save
their time.
After all the necessary details needed for reservation are provided by the
passenger, the screen then takes the traveller to confirm details and online pay the
payment by online transaction screen</p>
    <h2 style="text-align:center;"> ADVANTAGES OF THE
PROPOSED SYSTEM </h2>
   <ul>
    <li>   Results are received very quickly.</li>
  <li>It uses concept of user friendliness.</li>
  <li> Increases security, speed, storing and accuracy.</li>
  <li> Customer services can not only be satisfied but also enhanced to the extent that</li>
one can obtain or cancel a reservation from anywhere.
  <li> Managing and maintaining data becomes easier.</li>
  <li> Provide convenience to travellers.</li>
   </ul>
</p>
        </div>

</asp:Content>

