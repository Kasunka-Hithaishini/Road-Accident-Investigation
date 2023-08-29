<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Police Department.aspx.cs" Inherits="Road_Accident_Investigation.Police_Department" %>

<%@ Register Assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" Namespace="System.Web.UI.DataVisualization.Charting" TagPrefix="asp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Sri Lanakan Police Department Page</title>
    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <link rel="stylesheet" href="CSS/policeDepartment.css" />
</head>
<body>
    <form id="form1" runat="server">
    <div id="policeLogo" class="sidebar"> </div>
        <div class="sidebar">
            <asp:TreeView ID="txtnavigate" runat="server">
            <Nodes>
                <asp:TreeNode Text="Sri Lankan Police Department" Value="Sri Lankan Police Department">
                    <asp:TreeNode Text="Police Station-Walikada" Value="Police Station-Walikada"></asp:TreeNode>
                    <asp:TreeNode Text="Police Station-Dam Street" Value="Police Station-Dam Street"></asp:TreeNode>
                    <asp:TreeNode Text="Police Station-Pettah" Value="Police Station-Pettah"></asp:TreeNode>
                    <asp:TreeNode Text="City Traffic Police Station-Colombo" Value="City Traffic Police Station-Colombo"></asp:TreeNode>
                    <asp:TreeNode Text="Sri Lankan Police Head Quarters" Value="Sri Lankan Police Head Quarters"></asp:TreeNode>
                    <asp:TreeNode Text="Wellawatta Police Station" Value="Wellawatta Police Station"></asp:TreeNode>
                    <asp:TreeNode Text="Police Station-Paliyagoda" Value="Police Station-Paliyagoda"></asp:TreeNode>
                    <asp:TreeNode Text="Police Station-Mullariyawa" Value="Police Station-Mullariyawa"></asp:TreeNode>
                    <asp:TreeNode Text="Police Station-Weeragula" Value="Police Station-Weeragula"></asp:TreeNode>
                    <asp:TreeNode Text="Police Station-Grandpass" Value="Police Station-Grandpass"></asp:TreeNode>
                    <asp:TreeNode Text="Police Station-Mattakuliya" Value="Police Station-Mattakuliya"></asp:TreeNode>
                </asp:TreeNode>
                <asp:TreeNode Text="Services we offer" Value="Services we offer"></asp:TreeNode>
                <asp:TreeNode Text="Data" Value="Data" NavigateUrl="~/Data.aspx"></asp:TreeNode>
                <asp:TreeNode Text="Contact us" Value="Contact us"></asp:TreeNode>
            </Nodes>
        </asp:TreeView>
        </div>

        <div id="menutitle">
            <h1>Sri Lanakan Police Road Safety Profile</h1>
        </div>

        <div id="policeside">
            <img src="Images/safeP.jpg" class="sidepic"/>
            <p id="textP">The country shall keep all the neccessary information regarding the vehicle types 
                and other important information like taxes and registering number plates without any duplication.
                Sri Lankan Police provide their services as Traffic Police and as the active unit for Accidents and
                medical specification.
            </p>
        </div>

        <div class="records">
            <h3>History of  Police Recorded Accidents (2000-2016)</h3>
        <table id="infoacc">
            <tr>
                <th>Year</th>
                <th>Fatal</th>
                <th>Grievous</th>
                <th>Non-Grievous</th>
                <th>Damage Only</th>
                <th>Total</th>
            </tr>
            <tr>
                <td>2000</td>
                <td>809</td>
                <td>832</td>
                <td>6156</td>
                <td>7494</td>
                <td>15,289</td>
            </tr>
            <tr style="background-color:rgb(175,238,238);">
                <td>2001</td>
                <td>815</td>
                <td>1028</td>
                <td>6831</td>
                <td>9605</td>
                <td>18,279</td>
            </tr>
            <tr>
                <td>2002</td>
                <td>852</td>
                <td>1100</td>
                <td>7121</td>
                <td>10,814</td>
                <td>19,887</td>
            </tr>
            <tr style="background-color:rgb(175,238,238);">
                <td>2003</td>
                <td>1036</td>
                <td>1297</td>
                <td>7899</td>
                <td>12,299</td>
                <td>22,531</td>
            </tr>
            <tr>
                <td>2004</td>
                <td>1256</td>
                <td>1302</td>
                <td>7501</td>
                <td>14467</td>
                <td>24,526</td>
            </tr>
            <tr style="background-color:rgb(175,238,238);">
                <td>2005</td>
                <td>1221</td>
                <td>1231</td>
                <td>7316</td>
                <td>17408</td>
                <td>27,176</td>
            </tr>
            <tr>
                <td>2006</td>
                <td>1251</td>
                <td>1399</td>
                <td>8608</td>
                <td>20595</td>
                <td>31,853</td>
            </tr>
            <tr style="background-color:rgb(175,238,238);">
                <td>2007</td>
                <td>1163</td>
                <td>1523</td>
                <td>8566</td>
                <td>22034</td>
                <td>33,286</td>
            </tr>
            <tr>
                <td>2008</td>
                <td>1363</td>
                <td>1346</td>
                <td>7933</td>
                <td>22378</td>
                <td>33,020</td>
            </tr>
            <tr style="background-color:rgb(175,238,238);"> 
                <td>2009</td>
                <td>1452</td>
                <td>1285</td>
                <td>7731</td>
                <td>21220</td>
                <td>31,688</td>
            </tr>
            <tr>
                <td>2010</td>
                <td>1712</td>
                <td>1701</td>
                <td>9460</td>
                <td>21582</td>
                <td>34,455</td>
            </tr>
            <tr style="background-color:rgb(175,238,238);">
                <td>2011</td>
                <td>1253</td>
                <td>1897</td>
                <td>9683</td>
                <td>21303</td>
                <td>34,136</td>
            </tr>
            <tr>
                <td>2012</td>
                <td>1300</td>
                <td>2110</td>
                <td>10384</td>
                <td>23975</td>
                <td>37,769</td>
            </tr>
            <tr style="background-color:rgb(175,238,238);">
                <td>2013</td>
                <td>1342</td>
                <td>2297</td>
                <td>11685</td>
                <td>26131</td>
                <td>41,455</td>
            </tr>
            <tr>
                <td>2014</td>
                <td>1412</td>
                <td>2552</td>
                <td>11990</td>
                <td>27853</td>
                <td>43,807</td>
            </tr>
            <tr style="background-color:rgb(175,238,238);">
                <td>2015</td>
                <td>1379</td>
                <td>2586</td>
                <td>12231</td>
                <td>27853</td>
                <td>44,049</td>
            </tr>
            <tr>
                <td>2016</td>
                <td>1558</td>
                <td>2613</td>
                <td>11508</td>
                <td>32988</td>
                <td>48,667</td>
            </tr>
        </table>  
        </div>

        <div id="tblchart">
            <canvas id="chart" width="100" height="100"> </canvas>
              <script type="text/javascript" src="Js/police.js"> </script>
                <div id="chart_div" style="width: 900px; height: 500px;"> </div>
        </div>
    </form>

    <footer id="footerArea">

        </footer>
</body>
</html>
