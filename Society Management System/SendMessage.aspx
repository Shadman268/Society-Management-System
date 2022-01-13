<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SendMessage.aspx.cs" Inherits="SendMessage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            
            <asp:Label ID="Label1" runat="server" Text="Owner Details :"></asp:Label>
            <br />
            <br />
            <asp:Label ID="Label2" runat="server" Text="Name :"></asp:Label>
&nbsp;
            <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>
            <br />
            <br />
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
            <asp:Button ID="MsgBtn" runat="server" OnClick="MsgBtn_Click" Text="Send Message" />
            
        </div>
    </form>
</body>
</html>
