<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RDAContactUS.aspx.cs" Inherits="Road_Accident_Investigation.RDAContactUS" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>RDA Contact Us Page</title>
    <link rel="stylesheet" href="CSS/RDAContactUs.css"/>
</head>
<body>
    <form runat="server">
        <div id="form1">
            <h2>RDA Contact <br />Details</h2>
        <table>
            <tr>
                <td class="title">Designation</td>
                <td class="title">Name</td>
                <td class="title">Telephone</td>
                <td class="title">Fax</td>
                <td class="title">E-mail</td>
            </tr>

            <tr>
                <td style="column-span:all;">Road Improment Project</td>
            </tr>

            <tr>
                <td> Project Director</td>
                <td> Mr.APK Abesinghe</td>
                <td> 011 2825223</td>
                <td> 011 2825224</td>
                <td> abesingheRDA@gmail.com</td>
            </tr>

            <tr>
                <td>Deputy Project Director</td>
                <td>Mr.Sriniwasan</td>
                <td>022 0257410</td>
                <td>022 0257411</td>
                <td>sriniwasan@gmail.com</td>
            </tr>

            <tr>
                <td>Engineer</td>
                <td>Mr.Kaluthota</td>
                <td>033 965800</td>
                <td>033 965801</td>
                <td>033 965802</td>
            </tr>
        </table>
        </div>

        <asp:Button ID="btnRDAhome" runat="server" Text="RDA Home Page" OnClick="btnRDAhome_Click1" />
    </form>
</body>
</html>
