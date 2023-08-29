<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="InsuranceAccidentsaspx.aspx.cs" Inherits="Road_Accident_Investigation.InsuranceAccidentsaspx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label3" runat="server" Text="View Accident details"></asp:Label><br />            
            <asp:Label ID="Label2" runat="server" Text="Enter the insurance company"></asp:Label>
            <asp:TextBox ID="txtIns" runat="server"></asp:TextBox><br />
            <asp:Label ID="Label4" runat="server" Text="Enter the password"></asp:Label> 
            <asp:TextBox ID="txtPass" runat="server"></asp:TextBox>  <br /><asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click">Create new Account</asp:LinkButton>

            

            <asp:Button ID="Button2" runat="server" Text="Show" OnClick="Button2_Click" /><br />  
            <asp:GridView ID="GridView1" runat="server"></asp:GridView> 
             <asp:Button ID="Button3" runat="server" Text="Readmore" OnClick="Button3_Click1" /><br />
           

            <asp:HyperLink ID="HyperLink1" runat="server">Create account</asp:HyperLink> <br />
            <asp:Label ID="Label1" runat="server" Text="Enter the Accident Number that you need to Approve deny"></asp:Label>
            <asp:TextBox ID="txtAccNo" runat="server"></asp:TextBox><br />
            <asp:Button ID="Button1" runat="server" Text="Approve " OnClick="Button1_Click" />
            <asp:Button ID="Button5" runat="server" Text="Deny" OnClick="Button5_Click" /><br />
            <asp:Label ID="lblmsg" runat="server" Text=""></asp:Label>
        </div>
    </form>
</body>
</html>
