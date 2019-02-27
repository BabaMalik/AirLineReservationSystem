<%@ Page Title="" Language="C#" MasterPageFile="~/mainmaster.master" AutoEventWireup="true" CodeFile="AdminLogin.aspx.cs" Inherits="_Default" %>



<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
   <style>
       *{
           color:white;
       }
       table{
           margin-top:150px;
           
       }
       div.admin{
            background: transparent;
            box-sizing: border-box;
            box-shadow: 0px 15px 20px rgba(0,0,0,1.8);
            border-radius:20px;
            width: 500px;
            height: 400px;  
            margin-top:150px;
            margin-left:400px;
            position:fixed;
       }
        .adminlogin{
            border:2px solid white;
            width:190px;
            height:30px;
            border-radius:15px;
            font-size:15px;
        }

       .auto-style2 {
           height: 57px;
       }
       .auto-style3 {
           height: 58px;
       }
       .auto-style4 {
           height: 79px;
       }

   </style>
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="admin">

    <table align="center" style="position:fixed; margin-top:60px; margin-left:100px;" class="auto-style1">
        <tr>
            <td class="auto-style2" style="font-size:25px;" colspan="2"><h3 align="center">Admin Login</h3></td>
        </tr>
        <tr>
            <td class="auto-style3"><b>Admin Id</b></td>  &nbsp;  &nbsp;  &nbsp;
            <td>
                <asp:TextBox ID="txtadminid" CssClass="adminlogin" style="color:black;" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style3"><b>Password</b></td>  &nbsp;  &nbsp;  &nbsp;
            <td>
                <asp:TextBox ID="txtadminpswd" style="color:black;" CssClass="adminlogin" runat="server"></asp:TextBox>
            </td>
        </tr>
      
        <tr>
            <td class="auto-style4" align="right" colspan="2">  
                <asp:Button ID="btnlogin" runat="server"  style="background:red; width:90px; height:40px; border:2px solid white; border-radius:10px;" Text="Login" OnClick="btnlogin_Click" />
                  &nbsp;  &nbsp;  &nbsp;  &nbsp;  &nbsp;
                <asp:Button ID="btnCancel" runat="server" Text="Cancel" style="background:blue; width:90px; height:40px; border:2px solid white; border-radius:10px;" OnClick="btnCancel_Click" />
            </td>
             
        </tr>
        <tr>
            <asp:Label ID="lbl" style="color:red; margin-left:120px;" runat="server" Text=""></asp:Label></tr>
    </table>
        </div>

</asp:Content>

