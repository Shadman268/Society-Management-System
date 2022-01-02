<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AddHouse.aspx.cs" Inherits="AddHouse" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="Society :"></asp:Label>
&nbsp;&nbsp;
            <asp:DropDownList ID="societyDropDownList" runat="server" AutoPostBack="True" DataTextField="SName" DataValueField="SName" OnSelectedIndexChanged="societyDropDownList_SelectedIndexChanged">
            </asp:DropDownList>
            <br />
            <br />
            <asp:Label ID="Label6" runat="server" Text="Total houses ="></asp:Label>
&nbsp;<asp:Label ID="tothouse" runat="server" Text="Label"></asp:Label>
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
            <asp:Button ID="addhouseBtn" runat="server" OnClick="addhouseBtn_Click" Text="ADD HOUSE" />
        </div>
    </form>
</body>
</html>
