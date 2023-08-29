<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RDACreateNewAccount.aspx.cs" Inherits="Road_Accident_Investigation.RDACreateNewAccount" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>RDA Create New Account Page</title>
    <link rel="stylesheet" href="CSS/RDAcreateNewAccount.css"/>
</head>
<body>
    <form id="form1" runat="server">
        <div id="menubox">
            <div class="menu">
                <img src="Images/authority.png" id="safeP"/>
                <img src="Images/rdaLogo.jpg" id="rdaLogo"/>
            </div>
        </div>

        <div id="form">
            <table>
                <tr>
                    <td>
                        <asp:Label ID="lblwebmasterpassword" runat="server" Text="Enter the web master password"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtwebmasterPassword" CssClass="txtbox"    runat="server"></asp:TextBox>
                    </td>
                </tr>

                <tr>
                    <td>
                        <asp:Label ID="lblPLdistrict" runat="server" Text="Enter RDA district"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtdistrict" CssClass="txtbox" runat="server"></asp:TextBox>
                    </td>
                </tr>

                <tr>
                    <td>
                        <asp:Label ID="lblPLpassword" runat="server" Text="Enter RDA password"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtPass" runat="server" style="margin-bottom: 5px"></asp:TextBox> 
                    </td>
                </tr>
            </table>
            <asp:Button ID="RDAbtnSignUP" runat="server" Text="SignUp" OnClick="RDAbtnSignUP_Click" /><br />
            <asp:Label ID="lblmsg" runat="server" Text=""></asp:Label>
        </div>
    </form>
</body>
</html>
