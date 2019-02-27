<%@ Page Title="" Language="C#" MasterPageFile="~/mainmaster.master" AutoEventWireup="true" CodeFile="signin.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        *{
            color:black;
        }
        .auto-style1 {
            width: 500px;
        }
        .auto-style2 {
            text-align: center;
            color:black;
        }
        .auto-style3 {
            width: 60px;
            text-align: center;
              color:black;
        }
        #table{
            float:right;
            margin-right:40px;
            margin-top:85px;
             background:transparent;
           box-sizing: border-box;
            box-shadow: 0px 15px 20px rgba(0,0,0,1.8);
            border-radius:10px;
            width: 500px;
            height: 700px; 
            font-size:18px; 
        }
        .auto-style7 {
            width: 60px;
            text-align: center;
        }
        .left{
            float:left;
            margin-top:120px;
            margin-left:10px;
            font-size:15px;
        }
    .auto-style8 {
        width: 116px;
        text-align: center;
    }
    .auto-style9 {
        width: 116px;
        height: 37px;
        text-align: center;
    }
    </style>
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="left"><h1> MISSION:</h1>
       <ul>
           <li> To Sell the cheapest airlines tickets in an increasingly competitive market</li>
           <li>To assemble the most advanced team of travel experts in the world</li>
           <li>To maintain an efficient and technologically bullet-proof platform</li>
           <li>Innovate, don't imitate</li>
       </ul>
</div>
    <table id="table" class="auto-style1">
        <tr>
            <td colspan="2" class="auto-style2">
                <asp:Label ID="lblMsg" runat="server" Height="25px" Width="90px"></asp:Label>
            </td>
        </tr>
        <tr>
            <td colspan="2" class="auto-style2"><h2>Sign In</h2></td>
        </tr>
        <tr>
            <td class="auto-style8">Customer Id</td>
            <td class="auto-style3">
                <asp:Label ID="lblid" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style8">First Name</td>
            <td class="auto-style3">
                <asp:TextBox ID="txtfn" name="fname" style="border-radius:15px;"  runat="server"></asp:TextBox>
            &nbsp;<asp:RequiredFieldValidator ID="rfv1" runat="server" ErrorMessage="*Requried" ForeColor="#FF3300" ControlToValidate="txtfn"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style8">Last Name</td>
            <td class="auto-style3">
                <asp:TextBox ID="txtln" name="lname" style="border-radius:15px;"  runat="server"></asp:TextBox>
            &nbsp;<asp:RequiredFieldValidator ID="rfv2" runat="server" ErrorMessage="*Requried" ForeColor="#FF3300" ControlToValidate="txtln"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style8">Date of Birth</td>
            <td class="auto-style3">
               <asp:TextBox ID="txtdob" type="date" runat="server" style="border-radius:15px; width:200px;" TextMode="Date"></asp:TextBox>
            &nbsp;<asp:RequiredFieldValidator ID="rfv3" runat="server" ErrorMessage="*Requried" ForeColor="#FF3300" ControlToValidate="txtdob"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style8">Email Id</td>
            <td class="auto-style3">
                <asp:TextBox ID="txtemail" name="email" style="border-radius:15px;"  runat="server"></asp:TextBox>
            &nbsp;  <asp:RequiredFieldValidator ID="RfvUserName" runat="server" ErrorMessage="* Required"
                        ForeColor="#FF3300" ControlToValidate="txtEmail"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RxvEmail" runat="server" ControlToValidate="txtemail"
                        ErrorMessage="Invalid E-mail" ForeColor="#FF3300" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style8">Password</td>
            <td class="auto-style3">
                <asp:TextBox ID="txtpswd" name="pswd" style="border-radius:15px;"  runat="server" TextMode="Password"></asp:TextBox>
            &nbsp;  <asp:RequiredFieldValidator ID="RfvPwd" runat="server" ErrorMessage="* Required"
                        ForeColor="#FF3300" ControlToValidate="txtpswd"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td class="auto-style8">Gender </td>
            <td class="auto-style3">
                <asp:RadioButtonList ID="rbgender" runat="server">
                   <asp:ListItem>Male</asp:ListItem>
                     <asp:ListItem>Female</asp:ListItem>
                </asp:RadioButtonList>
            </td>
        </tr>
        <tr>
            <td class="auto-style8">Nationality</td>
            <td class="auto-style3">
                <asp:DropDownList ID="txtddlnationality" style="width:180px;  background-color:black; color:white; border-radius:10px; border:2px solid white;"  runat="server">
                    <asp:ListItem></asp:ListItem>
                    <asp:ListItem>India</asp:ListItem>
                    <asp:ListItem>Other Countries</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style8">Phone no</td>
            <td class="auto-style3">
              
                <asp:TextBox ID="txtphonenum"  style="border-radius:15px;" runat="server" TextMode="Number"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style9">Address</td>
            <td class="auto-stzyle6">
                <asp:TextBox ID="txtaddress" style="border-radius:15px; border:2px solid white;" TextMode="MultiLine" runat="server"></asp:TextBox>
                
            </td>
        </tr>
        <tr>
            <td class="auto-style8">
                <asp:Button ID="btnSubmit" style="background:orangered; border-radius:10px; width:100px; " OnClick="btnSubmit_Click" runat="server" Text="Subimt" />
            </td>
            <td class="auto-style7">
                <asp:Button ID="btnClear" style="background:orangered; border-radius:10px; width:100px; height:30px;" runat="server" Text="Clear" OnClick="btnClear_Click" />
            </td>
        </tr>
        </table>
</asp:Content>

