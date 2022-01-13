<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        .dropbtn {
            background-color: #4CAF50;
            color: white;
            padding: 10px;
            font-size: 10px;
            border: none;
            display: inline-block;
        }

        .dropdown {
            
        }

        .dropdown-content {
            display: none;
            background-color: #f1f1f1;
            min-width: 160px;
            box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
            z-index: 1;
        }

            .dropdown-content a {
                color: black;
                padding: 12px 16px;
                text-decoration: none;
                display: block;
            }

                .dropdown-content a:hover {
                    background-color: #ddd;
                }

        .dropdown:hover .dropdown-content {
            display: block;
        }

        .dropdown:hover .dropbtn {
            background-color: #3e8e41;
        }
    </style>


</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Button ID="MemberBtn" runat="server" Text="Member" OnClick="MemberBtn_Click" />
&nbsp;&nbsp;&nbsp;
            <asp:Button ID="adminBtn" runat="server" OnClick="adminBtn_Click" Text="Admin" />
&nbsp;&nbsp;&nbsp;
            <asp:LinkButton ID="SocietyBtn" Css-class="dropdown-content" runat="server" Text="Society List" OnClick="SocietyBtn_Click" />
            
            <button class="dropbtn">Dropdow</button>
            <div class="dropdown-content">
                <a href="#">username</a>
                <a href="#">Login Out</a>

            </div>
        </div>
    </form>
</body>
</html>
