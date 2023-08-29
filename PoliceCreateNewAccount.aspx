<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PoliceCreateNewAccount.aspx.cs" Inherits="Road_Accident_Investigation.PoliceCreateNewAccount" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Police Create New Account Creating Page</title>
    <link rel="stylesheet" href="CSS/PLNewAccount.css"/>
</head>
<body>
    <form id="form1" runat="server">
        <div id="title">
            <h1>Sri Lankan Police Road Safety Profile</h1>
            <img src="Images/slPlogo.png" id="plLogo"/>
        </div>

        <div id="form">
            <table runat="server">
                <table>
                    <td>
                        <asp:Label ID="lblwebmasterpassword" runat="server" Text="Enter the web master password"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtwebmasterPassword" CssClass="txtbox"    runat="server"></asp:TextBox>
                    </td>
                </table>

                <table>
                    <td>
                        <asp:Label ID="lblPLdistrict" runat="server" Text="Enter Police district"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtPLdistrict" CssClass="txtbox" runat="server"></asp:TextBox>
                    </td>
                </table>

                <tr>
                    <td>
                        <asp:Label ID="lblPLpassword" runat="server" Text="Enter Police password"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtPass" runat="server"></asp:TextBox>
                    </td>
                </tr>
            </table>
            <asp:Button ID="btnSignUP" runat="server" Text="SignUP" OnClick="btnSignUP_Click1" /><br />
            <asp:Label ID="lblmsg" runat="server" Text=""></asp:Label>
        </div>
    </form>
</body>
</html>
