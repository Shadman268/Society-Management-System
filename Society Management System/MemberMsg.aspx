﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="MemberMsg.aspx.cs" Inherits="MemberMsg" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <br />
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            <br />
            <asp:GridView ID="MemberMsgGridView" runat="server">
            </asp:GridView>

        </div>
    </form>
</body>
</html>
