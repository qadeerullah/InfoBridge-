<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LOGIN.aspx.cs" Inherits="InfoBridge.LOGIN" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <asp:Table runat="server"></asp:Table>
    <style type="text/css">
        #Text1 {
            width: 247px;
        }
        #Text2 {
            width: 246px;
        }
        #Submit1 {
            width: 96px;
        }
        .auto-style2 {
            width: 146px;
        }
        .auto-style3 {
            height: 34px;
             text-align:center;
               background-color:black;
               color:white
        }
        .auto-style4 {
            height: 34px;
        }
        table{
            margin:auto;
            width:600px;
            border:3px black ridge;
        }
       

    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table >
                <tr>
                    <td class="auto-style3" colspan="2">Login</td>
                </tr>
                <tr>
                    <td class="auto-style4">User Name</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="TextBox1" runat="server" OnTextChanged="TextBox1_TextChanged" Width="253px"></asp:TextBox>
                      <%--  <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Plese Enter UserName" ForeColor="Red" Display="Dynamic" SetFocusOnError="True"></asp:RequiredFieldValidator>
                  --%>  </td>
                </tr>
                <tr>
                    <td class="auto-style2">Password</td>
                    <td >
                        <asp:TextBox ID="TextBox2" runat="server" Width="251px" OnTextChanged="TextBox2_TextChanged" TextMode="Password"></asp:TextBox>
                   </td>
                </tr>
                <tr>
                    <td class="auto-style3" colspan="2">
                        <asp:Button ID="Button1" runat="server" Text="Login" Width="84px" OnClick="login" />
                    </td>
                </tr>
            </table>
            <br />
            <br />
            <br />
        </div>
    </form>
</body>
</html>
