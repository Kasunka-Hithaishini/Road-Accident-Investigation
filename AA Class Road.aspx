<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AA Class Road.aspx.cs" Inherits="Road_Accident_Investigation.AA_Class_Road" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>AA Class Road Page</title>
    <link rel="stylesheet" href="CSS/AAclassRoad.css"/>
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
                            <td>AA000</td>
                            <td>Kollupitiya- Sri Jayawardanapura</td>
                            <td>7.12</td>
                        </tr>
                        <tr style="background-color:rgb(238,232,170);">
                            <td>AA001</td>
                            <td>Colombo-Kandy</td>
                            <td>115.85</td>
                        </tr>
                        <tr>
                            <td>AA002</td>
                            <td>Colombo-Galle-Hambanthota-Wallawaya</td>
                            <td>317.78</td>
                        </tr>
                        <tr style="background-color:rgb(238,232,170);">
                            <td>AA003</td>
                            <td>Paliyagoda-Puthttalam</td>
                            <td>126.31</td>
                        </tr>
                        <tr>
                            <td>AA004</td>
                            <td>Colombo-Ratnapura-Wellawaya-Batticaloa</td>
                            <td>430.57</td>
                        </tr>
                        <tr style="background-color:rgb(238,232,170);">
                            <td>AA005</td>
                            <td>Peradeniya-Badulla</td>
                            <td>275.64</td>
                        </tr>
                        <tr>
                            <td>AA006</td>
                            <td>Ambepussa-Kurunagela-Trincomalee</td>
                            <td>198.71</td>
                        </tr>
                        <tr style="background-color:rgb(238,232,170);">
                            <td>AA007</td>
                            <td>Awissawela-Hatton-Nuwara Eliya</td>
                            <td>118.70</td>
                        </tr>
                        <tr>
                            <td>AA008</td>
                            <td>Panadura-Nambapana-Ratnapura</td>
                            <td>67.77</td>
                        </tr>
                        <tr style="background-color:rgb(238,232,170);">
                            <td>AA009</td>
                            <td>Kandy-Jaffa</td>
                            <td>321.00</td>
                        </tr>
                        <tr>
                            <td>AA010</td>
                            <td>Katugasthota-Kurunagala-Puttalam</td>
                            <td>124.58</td>
                        </tr>
                        <tr style="background-color:rgb(238,232,170);">
                            <td>AA011</td>
                            <td>Maradankadawela-Habarana</td>
                            <td>129.36</td>
                        </tr>
                        <tr>
                            <td>AA012</td>
                            <td>Puttalam-Trincomalee</td>
                            <td>176.99</td>
                        </tr>
                        <tr style="background-color:rgb(238,232,170);">
                            <td>AA013</td>
                            <td>Galkulam-Anuradhapura</td>
                            <td>16.64</td>
                        </tr>
                        <tr>
                            <td>AA014</td>
                            <td>Madawachchiya-Mannar-Talaimannar</td>
                            <td>113.84</td>
                        </tr>
                        <tr style="background-color:rgb(238,232,170);">
                            <td>AA015</td>
                            <td>Beragala-Hali-Ealla</td>
                            <td>130.86</td>
                        </tr>
                        <tr>
                            <td>AA016</td>
                            <td>Galle-Deniyaya-Madampe</td>
                            <td>40.39</td>
                        </tr>
                        <tr style="background-color:rgb(238,232,170);">
                            <td>AA017</td>
                            <td>Pelmadullla-Embilipitiya-Nonagama</td>
                            <td>143.93</td>
                        </tr>
                        <tr>
                            <td>AA018</td>
                            <td>Polgahawela-Kegalle</td>
                            <td>87.69</td>
                        </tr>
                        <tr style="background-color:rgb(238,232,170);">
                            <td>AA019</td>
                            <td>Anuradhapura-Rambewa</td>
                            <td>11.67</td>
                        </tr>
                        <tr>
                            <td>AA020</td>
                            <td>Passara-Moneragala</td>
                            <td>14.48</td>
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
