<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AB Class Road.aspx.cs" Inherits="Road_Accident_Investigation.AB_Class_Road" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>AB Class Road</title>
    <link rel="stylesheet" href="CSS/ABclassRoad.css"/>
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

                <div>
                    <table style="width: 80%;">
                        <tr>
                            <th>Route number</th>
                            <th>Road Name</th>
                            <th>Road Length (km)</th>
                        </tr>
                        <tr id="firstrow">
                            <td>AB001</td>
                            <td>Ampara-Enginiyalagala</td>
                            <td>19.79</td>
                        </tr>
                        <tr style="background-color:rgb(255,222,173);">
                            <td>AB002</td>
                            <td>Anuradhapura New Town Roads</td>
                            <td>12.60</td>
                        </tr>
                        <tr>
                            <td>AB003</td>
                            <td>Colombo Hanwalla Low level Roads</td>
                            <td>12.90</td>
                        </tr>
                        <tr style="background-color:rgb(255,222,173);">
                            <td>AB004</td>
                            <td>Galle Marine Road</td>
                            <td>126.31</td>
                        </tr>
                        <tr>
                            <td>AB005</td>
                            <td>Colombo-Ratnapura-Wellawaya-Batticaloa</td>
                            <td>1.20</td>
                        </tr>
                        <tr style="background-color:rgb(255,222,173);">
                            <td>AB006</td>
                            <td>Gampola Nawalapitiya</td>
                            <td>17.50</td>
                        </tr>
                        <tr>
                            <td>AB007</td>
                            <td>Inner Ring Road</td>
                            <td>3.80</td>
                        </tr>
                        <tr style="background-color:rgb(255,222,173);">
                            <td>AB008</td>
                            <td>Jaffna Point Pedro</td>
                            <td>33.79</td>
                        </tr>
                        <tr>
                            <td>AB009</td>
                            <td>Jail Road, Hambanthota</td>
                            <td>0.40</td>
                        </tr>
                        <tr style="background-color:rgb(255,222,173);">
                            <td>AB010</td>
                            <td>Link Road, Dambulla</td>
                            <td>1.00</td>
                        </tr>
                        <tr>
                            <td>AB011</td>
                            <td>Matale-Udupilla</td>
                            <td>6.00</td>
                        </tr>
                        <tr style="background-color:rgb(255,222,173);">
                            <td>AB012</td>
                            <td>Pasyala-Giriulla</td>
                            <td>19.30</td>
                        </tr>
                        <tr>
                            <td>AB013</td>
                            <td>Upper Gampola Road</td>
                            <td>2.50</td>
                        </tr>
                        <tr style="background-color:rgb(255,222,173);">
                            <td>AB014</td>
                            <td>Sea Street,Galle</td>
                            <td>0.16</td>
                        </tr>
                        <tr>
                            <td>AB015</td>
                            <td>Thalapitiya Road,Galle</td>
                            <td>0.95</td>
                        </tr>
                        <tr style="background-color:rgb(255,222,173);">
                            <td>AB016</td>
                            <td>Lion Pillar-Sri Maha Bodhi Road</td>
                            <td>1.24</td>
                        </tr>
                        <tr>
                            <td>AB017</td>
                            <td>Old Colombo, Galle Road,Panadura</td>
                            <td>1.80</td>
                        </tr>
                        <tr style="background-color:rgb(255,222,173);">
                            <td>AB018</td>
                            <td>Thalpitiya Road,Galle</td>
                            <td>0.16</td>
                        </tr>
                        <tr>
                            <td>AB019</td>
                            <td>Wattala Deviation Road</td>
                            <td>0.60</td>
                        </tr>
                        <tr style="background-color:rgb(255,222,173);">
                            <td>AB020</td>
                            <td>Wellawaya By Pass</td>
                            <td>3.60</td>
                        </tr>
                        <tr>
                            <td>AB021</td>
                            <td>Awissawela By Pass</td>
                            <td>0.80</td>
                        </tr>
                    </table>
                </div>

        <footer>
            <h3 class="footertitle">RDA Head Office : </h3>
        <p class="footertitle">Sri Lanakan Road Development Authority <br /> No: 707, Galle Main Rd,<br />Colombo 00300
            <br />Sri Lanka <br /> Telephone : +94 11 1 0446789
        </p>
        </footer>
            </form>
         </div>
</body>
</html>
