<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AllocateToMember.aspx.cs" Inherits="AllocateToMember" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        &nbsp;<asp:Label ID="Label1" runat="server" Text="First Name  :"></asp:Label>
&nbsp;
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label2" runat="server" Text="Last Name  :"></asp:Label>
&nbsp;&nbsp;
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label3" runat="server" Text="Email  :"></asp:Label>
&nbsp;
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            <br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label4" runat="server" Text="Mobile  :"></asp:Label>
&nbsp;
            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;<br />
            &nbsp;&nbsp;
            <br />
            &nbsp;<asp:Label ID="Label5" runat="server" Text="Society Name  :"></asp:Label>
&nbsp;&nbsp;
            <asp:DropDownList ID="memberSocietyNameDropDownList" runat="server" DataTextField="SName" DataValueField="SName">
            </asp:DropDownList>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="getBtn" runat="server" OnClick="getBtn_Click" Text="Get" />
            <br />
            <br />
&nbsp;House No :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="memberHouseNoDropDownList" runat="server" AutoPostBack="True" DataTextField="HouseNo" DataValueField="HouseNo">
            </asp:DropDownList>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label10" runat="server" Text="Label"></asp:Label>
            <br />
            <br />
&nbsp;<asp:Label ID="Label6" runat="server" Text="Photo : "></asp:Label>
&nbsp;&nbsp;&nbsp;
            <asp:FileUpload ID="FileUpload1" runat="server" />
            <br />
            <br />
            <asp:Label ID="Label7" runat="server" Text="Username : "></asp:Label>
&nbsp;
            <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label8" runat="server" Text="Password  : "></asp:Label>
&nbsp;
            <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
            <br />
            <br />
            <br />
            <asp:Button ID="addmemberBtn" runat="server" OnClick="addmemberBtn_Click" Text="ADD MEMBER" />
            <br />
            <br />
            <asp:Label ID="Label9" runat="server" Text="Label"></asp:Label>
            <br />
        </div>
    </form>
</body>
</html>
