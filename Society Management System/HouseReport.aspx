<%@ Page Language="C#" AutoEventWireup="true" CodeFile="HouseReport.aspx.cs" Inherits="HouseReport" %>

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
<body style="height: 534px">
    <form id="form1" runat="server">
        <div style="align-items: center; text-align: center; background-color: #00ffff;">
            <img src="pic/ehouse.png" height="100px" />
        </div>
        <div style="margin-left: 220px" id="myDIV">
            <a href="Society.aspx" class="forbutton">ADD SOCIETY</a>
            <a href="AddHouse.aspx" class="forbutton">ADD HOUSE</a>
            <a href="HouseReport.aspx" class="forbutton active">HOUSE REPORT</a>
            <a href="AllocateToMember.aspx" class="forbutton">ALLOCATE TO MEMBER</a>
            <a href="MemberReport.aspx" class="forbutton">MEMBER REPORT</a>

        </div>
        <div style="align-items: center; margin-top: 20px; text-align: center; background-color: #FFFFFF;">
            <asp:Label ID="Label1" runat="server" Text="Select Society :"></asp:Label>
            &nbsp;
            <asp:DropDownList ID="housereportDropDownList" runat="server">
            </asp:DropDownList>
            &nbsp;
            <asp:Button ID="viewhousereport" runat="server" OnClick="viewhousereport_Click" Text="View" />
            <br />
            <br />
            <br />
            <asp:GridView ID="housereportGridView" runat="server" HorizontalAlign="Center"   CellSpacing="2" Height="153px" Width="133px" ForeColor="#333333" GridLines="None" CellPadding="4">
                <AlternatingRowStyle BackColor="White" />
                <EditRowStyle BackColor="#2461BF" />
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" />
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                <SortedDescendingHeaderStyle BackColor="#4870BE" />
            </asp:GridView>
        </div>
    </form>
</body>
</html>
