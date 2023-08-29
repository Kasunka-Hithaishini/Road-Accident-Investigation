<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="InsuranceCreateNewAccount.aspx.cs" Inherits="Road_Accident_Investigation.InsuranceCreateNewAccount" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            snip<table>
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
                        <asp:Label ID="lblPLdistrict" runat="server" Text="Company Name"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtCompName" CssClass="txtbox" runat="server"></asp:TextBox>
                    </td>
                </tr>

                <tr>
                    <td>
                        <asp:Label ID="lblPLpassword" runat="server" Text="Password"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtPass" runat="server"></asp:TextBox>   
                    </td>
                </tr>
            </table>
            <asp:Button ID="RDAbtnSignUP" runat="server" Text="SignUp" OnClick="RDAbtnSignUP_Click" /><br />
            <asp:Label ID="lblmsg" runat="server" Text=""></asp:Label>
        </div>
    </form>
</body>
</html>
