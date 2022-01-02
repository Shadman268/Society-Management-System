<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Button ID="Button1" runat="server" Text="Member" />
&nbsp;&nbsp;&nbsp;
            <asp:Button ID="adminBtn" runat="server" OnClick="adminBtn_Click" Text="Admin" />
&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button3" runat="server" Text="Society List" />
        </div>
    </form>
</body>
</html>
