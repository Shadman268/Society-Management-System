<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Society.aspx.cs" Inherits="Society" %>

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
            margin-left: 0px;
        }


    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div style="align-items:center; text-align: center; background-color: #00ffff;">
            <img src="pic/ehouse.png" height="100px"/>
        </div>
        <div style="margin-left:220px" id="myDIV">
            <a href="Society.aspx" class="forbutton active">ADD SOCIETY</a>
            <a href="AddHouse.aspx" class="forbutton">ADD HOUSE</a>
            <a href="HouseReport.aspx" class="forbutton">HOUSE REPORT</a>
            <a href="AllocateToMember.aspx" class="forbutton">ALLOCATE TO MEMBER</a>
            <a href="MemberReport.aspx" class="forbutton">MEMBER REPORT</a>

        </div>
        <div style="align-items:center; margin-top:20px; text-align: center; background-color: #FFFFFF;">
            <asp:Label ID="Label1" runat="server" Text="Society Name: "></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="snametxt" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label2" runat="server" Text="Address :"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="saddresstxt" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label3" runat="server" Text="No of Houses :"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="snotxt" runat="server" CssClass="auto-style1"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
            <br />
            <br />
            <asp:Button ID="addsocietyBtn" CssClass="button" runat="server" OnClick="addsocietyBtn_Click" Text="ADD SOCIETY" />
            <br />
            <br />
            <br />
            <br />

            

            <asp:GridView ID="societyGridView" runat="server" CellPadding="4" HorizontalAlign="Center" ForeColor="#333333" GridLines="None" CellSpacing="2" Height="12px" Width="10px">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
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
                
                <Columns>
                    <asp:TemplateField>
                        <ItemTemplate>
                            <asp:LinkButton ID="LinkBtnDelete" runat="server" OnClick="LinkBtnDelete_Click">Delete</asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
        </div>
    </form>
</body>
</html>
