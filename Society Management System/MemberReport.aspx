<%@ Page Language="C#" AutoEventWireup="true" CodeFile="MemberReport.aspx.cs" Inherits="MemberReport" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style2 {
            margin-left: 199px;
        }
        .BotonDeImagen {
            width: 40px;
            height: 40px;
        }

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
            <a href="AllocateToMember.aspx" class="forbutton">ALLOCATE TO MEMBER</a>
            <a href="MemberReport.aspx" class="forbutton active">MEMBER REPORT</a>

        </div>
        <div style="align-items: center; margin-top: 20px; text-align: center; background-color: #FFFFFF;" class="auto-style1">
&nbsp;&nbsp;&nbsp;
            <br />
            <br />
            <br />
            <asp:GridView ID="reportGridView" runat="server" AutoGenerateColumns="False" CellPadding="3" CellSpacing="2" CssClass="auto-style2" DataSourceID="SqlDataSource1" Height="216px" Width="996px">
                <Columns>
                    <asp:BoundField DataField="FName" HeaderText="Name" SortExpression="FName" />
                    <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                    <asp:BoundField DataField="Mobile" HeaderText="Mobile" SortExpression="Mobile" />
                    <asp:BoundField DataField="SName" HeaderText="SName" SortExpression="SName" />
                    <asp:BoundField DataField="HNo" HeaderText="HNo" SortExpression="HNo" />
                    <asp:ImageField DataImageUrlField="Photo" HeaderText="Picture">
                        <ControlStyle CssClass="BotonDeImagen"/>
                        <ItemStyle HorizontalAlign="Center" />   
                    </asp:ImageField>
                </Columns>
            </asp:GridView>
            <br />
            <br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ProjectConnectionString %>" SelectCommand="SELECT [FName], [Email], [Mobile], [SName], [HNo], [Photo] FROM [MemberTable]"></asp:SqlDataSource>
            <br />
            <br />
        </div>
    </form>
</body>
</html>
