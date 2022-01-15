<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="styleHome.css" rel="stylesheet" type="text/css" />


    <link href="https://fonts.googleapis.com/css2?family=Oswald&display=swap" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/css2?family=Lato&display=swap" rel="stylesheet" />
    <script src="https://kit.fontawesome.com/a076d05399.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <input type="checkbox" id="active" />
        <label for="active" class="menu-btn"><span></span></label>
        <label for="active" class="close"></label>
        <div class="wrapper">
            <ul>
                <li><a href="AdminLogin.aspx">Admin</a></li>
                <li><a href="MemberLogin.aspx">Member</a></li>
                <li><a href="Visitor.aspx">Visitor</a></li>
                <li><a href="Help.aspx">Help</a></li>
                
            </ul>
        </div>
        <div class="content">
            <div class="title">
                Welcome To E-Housing System
            </div>
            <p>
                
            </p>
        </div>
        <!--
        <asp:Button ID="MemberBtn" runat="server" Text="Member" OnClick="MemberBtn_Click" />
&nbsp;&nbsp;&nbsp;
            <asp:Button ID="adminBtn" runat="server" OnClick="adminBtn_Click" Text="Admin" />
&nbsp;&nbsp;&nbsp;
            <asp:Button ID="SocietyBtn"  runat="server" Text="Society List" OnClick="SocietyBtn_Click" />
       -->


    </form>
</body>
</html>
