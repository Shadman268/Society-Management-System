<%@ Page Language="C#" AutoEventWireup="true" CodeFile="MemberLogin.aspx.cs" Inherits="MemberLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        .button {
            background: white;
            border: solid 1px grey;
            font-family: Arial, sans-serif;
            font-size: 12px;
            font-weight: bold;
            color: #001563;
            height: 25px;
        }

            .button:hover {
                background: #00ff21;
                border: solid 1px grey;
                font-family: Arial, sans-serif;
                font-size: 12px;
                font-weight: bold;
                color: Red;
                height: 25px;
            }
    </style>
    <link href="mycss.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server" >
        <div class="login" style="align-items:center; text-align: center; background-color: #FFFFFF;" >
            <h1>Member Login Page</h1>
            <asp:Label ID="Label1" runat="server" Text="Email :" ></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="nametxt" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label2" runat="server" Text="Password:"></asp:Label>
&nbsp;
            <asp:TextBox ID="passtxt" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label4" runat="server" Text="Invalid User!!!"></asp:Label>
            <br />
            <br />
            <asp:Button ID="memberloginBtn" CssClass="button" runat="server" OnClick="adminloginBtn_Click" Text="Login"  />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
        </div>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            <asp:Button ID="backBtn" runat="server" OnClientClick="JavaScript:window.history.back(1); return false;" style="height: 29px" Text="Back" />
        </p>
    </form>

    
   

    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>

</body>
</html>
