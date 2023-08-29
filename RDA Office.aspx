<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RDA Office.aspx.cs" Inherits="Road_Accident_Investigation.RDA" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>RDA Office Page</title>
    <link rel="stylesheet" href="CSS/rdaOffice.css"/>
</head>

<body>
        <div class="menu">
            <img src="Images/authority.png" id="safeP"/>
            <img src="Images/rdaLogo.jpg" id="rdaLogo"/>
        </div>
        
        <div class="menubar">
            <form runat="server">
                <asp:Menu ID="menutitles" runat="server" Width="296px" EnableViewState="False" BackColor="#F7F6F3" DynamicHorizontalOffset="2" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#7C6F57" StaticSubMenuIndent="10px">
                    <DynamicHoverStyle BackColor="#7C6F57" ForeColor="White" />
                    <DynamicMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
                    <DynamicMenuStyle BackColor="#F7F6F3" />
                    <DynamicSelectedStyle BackColor="#5D7B9D" />
                    <Items>
                        <asp:MenuItem Text="Home" Value="Home"></asp:MenuItem>
                        <asp:MenuItem Text="Projects" Value="Projects">
                            <asp:MenuItem Text="Project Information" Value="Project Information" NavigateUrl="~/Project Information.aspx"></asp:MenuItem>
                            <asp:MenuItem Text="Project Development" Value="Project Development"></asp:MenuItem>
                        </asp:MenuItem>
                        <asp:MenuItem Text="High way Roads" Value="High way Roads">
                            <asp:MenuItem Text="'AA' Class Road" Value="'AA' Class Road" NavigateUrl="~/AA Class Road.aspx"></asp:MenuItem>
                            <asp:MenuItem Text="'AB' Class Road" Value="'AB' Class Road" NavigateUrl="~/AB Class Road.aspx"></asp:MenuItem>
                            <asp:MenuItem Text="'AC' Class Road" Value="'AC' Class Road"></asp:MenuItem>
                        </asp:MenuItem>
                        <asp:MenuItem Text="Maps" Value="Maps">
                            <asp:MenuItem Text="Network of local areas" Value="Network of local areas" NavigateUrl="~/Network of local areas.aspx"></asp:MenuItem>
                            <asp:MenuItem Text="Network of Expressway Roads" Value="Network of Expressway Roads" NavigateUrl="~/Network Of Expressway Roads.aspx"></asp:MenuItem>
                        </asp:MenuItem>
                        <asp:MenuItem Text="Notice Board" Value="Notice Board" NavigateUrl="~/Notice Board.aspx"></asp:MenuItem>
                        <asp:MenuItem Text="Contact Us" Value="Contact Us"></asp:MenuItem>
                    </Items>
                    <StaticHoverStyle BackColor="#7C6F57" ForeColor="White" />
                    <StaticMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
                    <StaticSelectedStyle BackColor="#5D7B9D" />
                </asp:Menu>
            </form>
         </div>

            <h2>Sri Lankan Road Development Authority</h2>
            
            <div>
                <div id="text">
                    <p>The Road Development Authority (RDA) in Sri Lanka has a major priority of maintaining the 
                Hightway and other related roads. Constructing new roads, bridges, subway and expressway roots
                are some of the listed priorities in RDA Department of Sri Lanka.</p>
                </div>

                <div>
                    <img src="Images/highway.jpg" id="roadPic"/>
                </div>
            </div>

        <div id="line"> 
            <p id="linetext">Contact <b><u>1968</u></b> for more information on National Road Ways</p>
        </div>
            <h3>Provided Servies</h3>
            <ul>
                <li>A water supplying method could be taken from the road side.</li>
                <li>Reporting over-sized / over-weight vehicles.</li>
            </ul>
   <footer>
        <h3 class="footertitle">RDA Head Office : </h3>
        <p class="footertitle">Sri Lanakan Road Development Authority <br /> No: 707, Galle Main Rd,<br />Colombo 00300
            <br />Sri Lanka <br /> Telephone : +94 11 1 0446789
        </p>
    </footer>
</body>
</html>
