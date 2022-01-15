<%@ Page Language="C#" AutoEventWireup="true" CodeFile="MemberMsg.aspx.cs" Inherits="MemberMsg" %>

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


        .auto-style1 {
            margin-left: 0px;
        }


    </style>
    
</head>
<body>
    <form id="form1" runat="server">
        <div style="align-items: center; text-align: center; background-color: #00ffff;">
            <img src="pic/ehouse.png" height="100px" />
        </div>
       

        <div style="align-items: center; margin-top: 20px; text-align: center; background-color: #FFFFFF;" class="auto-style1">

            <br />
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            <br />
            <asp:GridView ID="MemberMsgGridView" HorizontalAlign="Center" runat="server">
            </asp:GridView>

        </div>
    </form>
</body>
</html>
