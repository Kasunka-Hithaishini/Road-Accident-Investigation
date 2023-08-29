<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Notice Board.aspx.cs" Inherits="Road_Accident_Investigation.Notice_Board" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>RDA Notice Board Page</title>
    <link rel="stylesheet" href="CSS/noticeBoard.css"/>
</head>
<body>
   <div class="menu">
            <img src="Images/authority.png" id="safeP" />
            <img src="Images/rdaLogo.jpg" id="rdaLogo" />
   </div>

    <div>
            <form runat="server">
                <asp:Menu ID="menutitles" runat="server" Width="296px" EnableViewState="False" BackColor="#F7F6F3" DynamicHorizontalOffset="2" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#7C6F57" StaticSubMenuIndent="10px">
                    <DynamicHoverStyle BackColor="#7C6F57" ForeColor="White" />
                    <DynamicMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
                    <DynamicMenuStyle BackColor="#F7F6F3" />
                    <DynamicSelectedStyle BackColor="#5D7B9D" />
                    <Items>
                        <asp:MenuItem Text="Home" Value="Home"></asp:MenuItem>
                        <asp:MenuItem Text="Projects" Value="Projects">
                            <asp:MenuItem Text="Project Information" Value="Project Information"></asp:MenuItem>
                            <asp:MenuItem Text="Project Development" Value="Project Development"></asp:MenuItem>
                        </asp:MenuItem>
                        <asp:MenuItem Text="High way Roads" Value="High way Roads">
                            <asp:MenuItem Text="'AA' Class Road" Value="'AA' Class Road"></asp:MenuItem>
                            <asp:MenuItem Text="'AB' Class Road" Value="'AB' Class Road"></asp:MenuItem>
                            <asp:MenuItem Text="'AC' Class Road" Value="'AC' Class Road"></asp:MenuItem>
                        </asp:MenuItem>
                        <asp:MenuItem Text="Maps" Value="Maps">
                            <asp:MenuItem Text="Network of local areas" Value="Network of local areas"></asp:MenuItem>
                            <asp:MenuItem Text="Network of Expressway Roads" Value="Network of Expressway Roads"></asp:MenuItem>
                        </asp:MenuItem>
                        <asp:MenuItem Text="Notice Board" Value="Notice Board"></asp:MenuItem>
                        <asp:MenuItem Text="Contact Us" Value="Contact Us"></asp:MenuItem>
                    </Items>
                    <StaticHoverStyle BackColor="#7C6F57" ForeColor="White" />
                    <StaticMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
                    <StaticSelectedStyle BackColor="#5D7B9D" />
                </asp:Menu>
         </div>

       <div id="rdaSignIn">
           <img src="Images/rdaSignIn.jpg" class="signInpic"/>
           <div id="details">
               <asp:Label ID="lblselectD" runat="server" Text="Enter the distric of RDA"></asp:Label><br />

           <asp:DropDownList ID="txtdropDown" runat="server">
               <asp:ListItem>Select your distric</asp:ListItem>
               <asp:ListItem>Colombo</asp:ListItem>
               <asp:ListItem>Dam Street</asp:ListItem>
               <asp:ListItem>Mullariyawa</asp:ListItem>
               <asp:ListItem>Paliyagoda</asp:ListItem>
               <asp:ListItem>Pettah</asp:ListItem>
               <asp:ListItem>Weeragula</asp:ListItem>
               <asp:ListItem>Wellawatta</asp:ListItem>
           </asp:DropDownList>
           <br /><br />
           <asp:Label ID="lblPassword" runat="server" Text="Password"></asp:Label><br />
               <asp:TextBox ID="txtPassword" runat="server"></asp:TextBox> 
               <asp:Button ID="btnSubmit" runat="server" Text="Enter" OnClick="btnSubmit_Click" />

               <asp:LinkButton ID="btnNewAccount" runat="server" OnClick="btnNewAccount_Click">Create a New RDA Account ?</asp:LinkButton>
                <asp:GridView ID="GridView1" runat="server"></asp:GridView>
               <asp:Button ID="Button1" runat="server" Text="Readmore" OnClick="Button1_Click" />
               <br />
               <asp:Button ID="Button2" runat="server" Text="See Images" OnClick="Button2_Click" />
               <br />
               <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False">
                   <Columns>
                       <asp:BoundField DataField="ImageID" HeaderText="Image ID" />
                       <asp:BoundField DataField="VehicleNumber" HeaderText="Vehicle Number" />
                       <asp:BoundField DataField="AccidentLocation" HeaderText="Accident Location" />
                       <asp:TemplateField HeaderText="Image">
                           <ItemTemplate>
                               <img src="Images/<%#Eval("Image")%>" style="width:100px;height:100px" />
                           </ItemTemplate>
                       </asp:TemplateField>
                   </Columns>
               </asp:GridView>

               <asp:Label ID="Label4" runat="server" Text="Enter the Accident Number that you need to Approve deny"></asp:Label><asp:TextBox ID="txtAccNo" runat="server"></asp:TextBox>
            <br />
            <asp:Button ID="Button3" runat="server" Text="Approve" OnClick="Button3_Click" />&nbsp;<asp:Button ID="Button4" runat="server" Text="Deny" OnClick="Button4_Click" />
             <br />          
            <asp:Label ID="lblmsg" runat="server" Text=""></asp:Label>
           </div>
       </div>
    </form>
</body>
</html>
