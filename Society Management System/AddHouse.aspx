<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AddHouse.aspx.cs" Inherits="AddHouse" %>

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
        <div style="margin-left:220px" id="myDIV">
            <a href="Society.aspx" class="forbutton">ADD SOCIETY</a>
            <a href="AddHouse.aspx" class="forbutton active">ADD HOUSE</a>
            <a href="HouseReport.aspx" class="forbutton">HOUSE REPORT</a>
            <a href="AllocateToMember.aspx" class="forbutton">ALLOCATE TO MEMBER</a>
            <a href="MemberReport.aspx" class="forbutton">MEMBER REPORT</a>

        </div>

        <div style="align-items:center; margin-top:20px; text-align: center; background-color: #FFFFFF;">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label1" runat="server" Text="Society :"></asp:Label>
&nbsp;&nbsp;
            <asp:DropDownList ID="societyDropDownList" runat="server" AutoPostBack="True" DataTextField="SName" DataValueField="SName" OnSelectedIndexChanged="societyDropDownList_SelectedIndexChanged">
            </asp:DropDownList>
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
            <asp:Label ID="Label6" runat="server" Text="Total houses ="></asp:Label>
&nbsp;<asp:Label ID="tothouse" runat="server" Text="Label"></asp:Label>
            <br />
            <br />
            Already Allocated = <asp:Label ID="Label8" runat="server" Text="Label"></asp:Label>
            <br />
            <br />
            <br />
            <asp:Label ID="Label2" runat="server" Text="House No :"></asp:Label>
&nbsp;
            <asp:TextBox ID="housenotxt" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label3" runat="server" Text="Size :"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="sizetxt" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label4" runat="server" Text="Type :"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="typetxt" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label5" runat="server" Text="Details :"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="detailstxt" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label7" runat="server" Text="Label"></asp:Label>
            <br />
            <br />
            <asp:Button ID="addhouseBtn" CssClass="button" runat="server" OnClick="addhouseBtn_Click" Text="ADD HOUSE" />
        </div>
    </form>
</body>
</html>
