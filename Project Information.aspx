<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Project Information.aspx.cs" Inherits="Road_Accident_Investigation.Project_Information" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>RDA Project Information Page</title>
    <link rel="stylesheet" href="CSS/projectInformation.css"/>
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
                <h1>Project Information</h1>
                <table style="width: 80%;">
                    <tr>
                        <th>Project name</th>
                        <th>Project type</th>
                        <th>Project location</th>
                        <th>Length</th>
                        <th>Width</th>
                        <th>Target time</th>
                    </tr>
                    <tr>
                        <td>Rathnapura Expressway</td>
                        <td>Expressway Construction</td>
                        <td>Phase 1 - 24.7km <br /> Kahathuduwa to Ingiriya <br /><br />
                            Package 1 - 7km <br />
                            Package 2 - 6.5km <br />
                            Package 3 - 7km <br />
                            Package 4 - 6km <br />
                            Package 5 - 4km <br />
                        </td>
                        <td>74km</td>
                        <td>Lane 4</td>
                        <td>months 36<br />
                            months 36 <br />
                            months 36 <br />
                            months 36 <br /> 
                            months 36 <br />
                            months 36</td>
                    </tr>
                  
                    <tr>
                        <td>Transport connectivity & Assest Management Project</td>
                        <td>Foreign aid loan</td>
                        <td>Developing and operationalizing management of road assesment</td>
                        <td>-</td>
                        <td>-</td>
                        <td>5 years</td>
                    </tr>

                    <tr>
                        <td>Matara- Beliatta</td>
                        <td>-</td>
                        <td>-</td>
                        <td>32km</td>
                        <td>20km</td>
                        <td>3 years</td>
                    </tr>

                    <tr>
                        <td>Beliatta-Wetiya</td>
                        <td>-</td>
                        <td>-</td>
                        <td>28km</td>
                        <td>24m</td>
                        <td>3 years</td>
                    </tr>

                    <tr>
                        <td>Wetiya-Andarawewa</td>
                        <td>-</td>
                        <td>-</td>
                        <td>20km</td>
                        <td>40km</td>
                        <td>4 years</td>
                    </tr>

                    <tr>
                        <td>Mattala-Hambanthota via Andarawewa</td>
                        <td>-</td>
                        <td>-</td>
                        <td>35km</td>
                        <td>Lane 4</td>
                        <td>4 years</td>
                    </tr>

                    <tr>
                        <td>Paragammana-Dikella-Atugoda-Waduradeniya</td>
                        <td>Road</td>
                        <td>Kegalle district</td>
                        <td>9km</td>
                        <td>7km</td>
                        <td>1 year</td>
                    </tr>

                    <tr>
                        <td>Alwathura-Yatapana-Kotiyakubura</td>
                        <td>Road</td>
                        <td>Kegalle district</td>
                        <td>7km</td>
                        <td>6km</td>
                        <td>1 year</td>
                    </tr>

                    <tr>
                        <td>Nelundeniya-Alawwa</td>
                        <td>Road</td>
                        <td>Kegalle district</td>
                        <td>8km</td>
                        <td>7km</td>
                        <td>1 year</td>
                    </tr>

                    <tr>
                        <td>Landslide Disaster protection</td>
                        <td>Road</td>
                        <td>Nuwaraeliya</td>
                        <td>30km</td>
                        <td>6km</td>
                        <td>7 years</td>
                    </tr>

                    <tr>
                        <td>Port Access Elavated Project</td>
                        <td>PAEH-CW-01</td>
                        <td>-</td>
                        <td>8km</td>
                        <td>6km</td>
                        <td>3 years</td>
                    </tr>
                </table>

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
