<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="Booking.aspx.cs" Inherits="Booking" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    

    <table class="auto-style1" style="margin-top:100px;">
        <tr>
            <td>Booking ID</td>
            <td>
                <asp:Label ID="lblbid" Text="" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>Customer ID</td>
            <td>
                <asp:Label ID="lblcustid" Text="" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>Flight ID</td>
            <td>
                <asp:Label ID="lblflightid" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
      
       
    </table>
    <asp:Button ID="btnbooked" runat="server" Text="Booked" OnClick="btnbooked_Click" />

</asp:Content>

