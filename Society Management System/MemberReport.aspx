<%@ Page Language="C#" AutoEventWireup="true" CodeFile="MemberReport.aspx.cs" Inherits="MemberReport" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            margin-left: 199px;
        }
        .BotonDeImagen {
            width: 40px;
            height: 40px;
        }
        
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
&nbsp;&nbsp;&nbsp;
            <br />
            <br />
            <br />
            <asp:GridView ID="reportGridView" runat="server" AutoGenerateColumns="False" CellPadding="3" CellSpacing="2" CssClass="auto-style1" DataSourceID="SqlDataSource1" Height="216px" Width="996px">
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
