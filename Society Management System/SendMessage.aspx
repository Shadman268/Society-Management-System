<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SendMessage.aspx.cs" Inherits="SendMessage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        .forbutton {
            background-color: #4CAF50;
            border: none;
            color: white;
            padding: 15px 32px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 16px;
            margin: 4px 2px;
            cursor: pointer;
        }

        .active, .forbutton:hover {
            background-color: #ff6a00;
            color: white;
        }
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
                background: #4CAF50;
                border: solid 1px grey;
                font-family: Arial, sans-serif;
                font-size: 12px;
                font-weight: bold;
                color: Red;
                height: 25px;
            }


        </style>
</head>
<body>
    <form id="form1" runat="server">

        <div style="align-items:center; text-align: center; background-color: #00ffff;">
            <img src="pic/ehouse.png" height="100px"/>
        </div>
        <div style="align-items:center; margin-top:20px; text-align: center; background-color: #FFFFFF;">
            <asp:Label ID="Label1" runat="server" Text="Owner Details :"></asp:Label>
            <br />
            <br />
            &nbsp;
            <asp:Label ID="Label2" runat="server" Text="Name :"></asp:Label>
&nbsp;
            <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>
            <br />
            <br />
            &nbsp;
            <asp:Label ID="Label3" runat="server" Text="Email : "></asp:Label>
&nbsp;<asp:Label ID="Label7" runat="server" Text="Label"></asp:Label>
            <br />
            <br />
            <asp:Label ID="Label4" runat="server" Text="Mobile :"></asp:Label>
&nbsp;
            <asp:Label ID="Label8" runat="server" Text="Label"></asp:Label>
            <br />
            <br />
            <asp:Label ID="Label5" runat="server" Text="Photo :"></asp:Label>
&nbsp;&nbsp;
            <asp:Image ID="Image1" runat="server" />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <asp:Label ID="Label10" runat="server" Text="Name :"></asp:Label>
&nbsp;<asp:TextBox ID="SenderTextBox" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label11" runat="server" Text="Message : "></asp:Label>
            <br />
            <asp:TextBox ID="MsgTextBox" runat="server" Height="93px" Width="274px"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label12" runat="server" Text="Label"></asp:Label>
            <br />
            <br />
            <asp:Button ID="MsgBtn" runat="server" OnClick="MsgBtn_Click" Text="Send Message" />
            
        </div>
    </form>
</body>
</html>
