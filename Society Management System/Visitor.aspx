<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Visitor.aspx.cs" Inherits="Visitor" %>

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
            margin-left: 600px;
        }


    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div style="align-items: center; text-align: center; background-color: #00ffff;">
            <img src="pic/ehouse.png"  />
        </div>
        <%--<div style="align-content:center;text-align:center" id="myDIV">
            <a href="#" class="forbutton" id="RentBtn">Rent List</a>
            <a href="#" class="forbutton" id="SellBtn">Sell List</a>
        </div>--%>
        <asp:Button ID="RentBtn" runat="server"   OnClick="RentBtn_Click" Text="Rent List" BackColor="#339933" CssClass="auto-style1" ForeColor="White" Width="155px" />
        &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="SellBtn" runat="server" BackColor="#339933" ForeColor="White" OnClick="SellBtn_Click1" Text="Sell List" Width="155px" />
        <br />
        <br />
        <div>
        </div>
        <br />
        <br />
        

        <asp:GridView ID="RentGridView" runat="server" CellPadding="4" HorizontalAlign="Center" ForeColor="#333333" GridLines="None" OnRowCommand="RentGridView_RowCommand" >
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:ButtonField ButtonType="Button" Text="Send" CommandName="Click" />
            </Columns>
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>
        <br />
        <br />
        <br />
        <br />
        <br />
        <asp:GridView ID="SellGridView" OnRowCommand="SellGridView_RowCommand" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" HorizontalAlign="Center" >
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:ButtonField ButtonType="Button" Text="Send" CommandName="Click1" />
            </Columns>
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>
        
        <br />
    </form>
</body>
</html>
