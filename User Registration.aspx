<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="User Registration.aspx.cs" Inherits="Road_Accident_Investigation.User_Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>User Login Page</title>
    <link rel="stylesheet" href="CSS/userLogin.css"/>
</head>
<body>
    <form id="form1" runat="server">
      <div class="minibox">
          <img src="Images/Usericon.png" id="loginPC"/><br />
         
          <asp:Label ID="lblUserEmail" CssClass="lbl" runat="server" Text="User Email address"></asp:Label>
          <asp:TextBox ID="txtUserEmail" CssClass="txtbox" runat="server"></asp:TextBox><br />

          <asp:Label ID="lblPassword" CssClass="lbl" runat="server" Text="Password"></asp:Label><br />
          <asp:TextBox ID="txtPassword" CssClass="txtbox" runat="server"></asp:TextBox><br />

          <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" />
      </div>
    </form>
</body>
</html>
