<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AllocateToMember.aspx.cs" Inherits="AllocateToMember" %>

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
            height: 601px;
        }

        </style>

</head>
<body>
    <form id="form1" runat="server">
        <div style="align-items: center; text-align: center; background-color: #00ffff;">
            <img src="pic/ehouse.png" height="100px" />
        </div>
        <div style="margin-left: 220px" id="myDIV">
            <a href="Society.aspx" class="forbutton">ADD SOCIETY</a>
            <a href="AddHouse.aspx" class="forbutton">ADD HOUSE</a>
            <a href="HouseReport.aspx" class="forbutton">HOUSE REPORT</a>
            <a href="AllocateToMember.aspx" class="forbutton active">ALLOCATE TO MEMBER</a>
            <a href="MemberReport.aspx" class="forbutton">MEMBER REPORT</a>

        </div>
        <div style="align-items: center; margin-top: 20px; text-align: center; background-color: #FFFFFF;" class="auto-style1">
            <br />
            <br />
            
            
            <asp:Label ID="Label1" runat="server" Text="First Name  :"></asp:Label>
            &nbsp;
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label2" runat="server" Text="Last Name  :"></asp:Label>
            &nbsp;
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label3" runat="server" Text="Email  :"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label4" runat="server" Text="Mobile  :"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            <br />
            <br />
&nbsp; <asp:Label ID="Label5" runat="server" Text="Society Name  :"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="memberSocietyNameDropDownList" runat="server" DataTextField="SName" DataValueField="SName">
            </asp:DropDownList>
            &nbsp;&nbsp;
            <asp:Button ID="getBtn" runat="server" OnClick="getBtn_Click" Text="Get" />
            <br />
            <br />
            House No :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="memberHouseNoDropDownList" runat="server" AutoPostBack="True" DataTextField="HouseNo" DataValueField="HouseNo" OnSelectedIndexChanged="memberHouseNoDropDownList_SelectedIndexChanged">
            </asp:DropDownList>
            &nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label10" runat="server" Text="Label"></asp:Label>
            <br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="Label6" runat="server" Text="Photo : "></asp:Label>
&nbsp;
            <asp:FileUpload ID="FileUpload1" runat="server" />
            <br />
            <br />
            <asp:Label ID="Label7" runat="server" Text="Username : "></asp:Label>
&nbsp;<asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label8" runat="server" Text="Password  : "></asp:Label>
&nbsp;
            <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="addmemberBtn" runat="server" CssClass="button"  OnClick="addmemberBtn_Click" Text="ADD MEMBER" />
            <br />
            <br />
            <asp:Label ID="Label9" runat="server" Text="Label"></asp:Label>
            <br />
            <br />
            <br />
            <br />
            <br />
            
            
        </div>
    </form>
</body>
</html>
