<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="Account_info.aspx.cs" Inherits="Account_info" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 692px;
        }
        .auto-style3 {
            width: 785px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <table class="auto-style1" style="margin-top:100px;">
        <tr>
            <td class="auto-style2">Customer Id</td>
            <td class="auto-style3">
                <asp:Label ID="lblmsg" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">User Name</td>
            <td class="auto-style3">
                <asp:Label ID="lblurnm" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Date of Birth</td>
            <td class="auto-style3">
                <asp:Label ID="lbldob" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Emai-Id</td>
            <td class="auto-style3">
                <asp:Label ID="lblemail" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Phone Number</td>
            <td class="auto-style3">
                <asp:Label ID="lblphonenum" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Address</td>
            <td class="auto-style3">
                <asp:Label ID="lbladdress" runat="server"></asp:Label>
            </td>
        </tr>
    </table>

</asp:Content>

