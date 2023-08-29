<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Graphs.aspx.cs" Inherits="Road_Accident_Investigation.Graphs" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Graph Page</title>
     <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <link rel="stylesheet" href="CSS/graph.css"/>
</head>
<body>
   <form id="form1" runat="server">
       <header>
        <table id="menutable">
            <tr>
                <td><asp:Image CssClass="countryLogo" runat="server" src="Images/SriLankanLogo.jpg"/></td>
            </tr>
        </table>

       <table id="minimenutable">
            <tr>
                <td><asp:Button CssClass="menutitle" runat="server" Text="RDA" OnClick="Unnamed2_Click" /></td>
                <td><asp:Button CssClass="menutitle" runat="server" Text="Police Department" OnClick="Unnamed3_Click" /></td>
                <td><asp:Button CssClass="menutitle" runat="server" Text="Insurance Companies" OnClick="Unnamed4_Click" /></td>
            </tr>
           </table>  
   </header>
   </form>

    <table style="margin-left:-40px;">
        <tr>
            <td>
                 <div>
        <script type="text/javascript" src="Js/Vtype.js"> </script>
        <div id="chart_div" style="width:900px; height:500px;"> </div>
    </div>
            </td>

            <td>
                <div id="chart2" style="margin-left:-100px;">
        <script type="text/javascript" src="Js/lineChart.js"> </script>
        <div id="curve_chart" style="width:900px; height:500px;"></div>
    </div>
            </td>
        </tr>

        <tr>
            <td>
                <div>
        <script type="text/javascript" src="Js/piechart.js"> </script>
       <div id="piechart_3d" style="width: 900px; height: 500px;"></div>
    </div>
            </td>
            
            <td>
                <div>
                    <script type="text/javascript" src="Js/TimeEvaluation.js">  </script>
                      <div id="columnchart_material" style="width: 800px; height: 500px;"></div>
                </div>
            </td>
        </tr>

    </table> 
  
</body>
</html>
