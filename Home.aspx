<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Road_Accident_Investigation.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Sri Lankan Road Accident Investigation</title>
    <link rel="stylesheet" href="CSS/home.css"/>
</head>
<body>
    <form runat="server">
        <div id="menu">
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
            <table>
                <tr>
                    <html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title></title>
    <link rel="stylesheet" href="styleSheet1.css">
  </head>
  <body>

    <div class="sl">

      <div class="image">
        <input type="radio" name="slide" id="image1" checked>
        <input type="radio" name="slide" id="image2">
        <input type="radio" name="slide" id="image3">
        <input type="radio" name="slide" id="image4">

        <img src="first.jfif" class="m1" alt="image1">
        <img src="secon'.jfif" class="m2" alt="image2">
        <img src="third.jfif" class="m3" alt="image3">
        <img src="fourth.jpeg" class="m4" alt="image4">
      </div>

      <div class="dot">
        <label for="image1"></label>
        <label for="image2"></label>
        <label for="image3"></label>
        <label for="image4"></label>
      </div>

    </div>
  </body>
</html>

                </tr>
            </table>
 </div>
    <div>
        <table id="icontable">
            <tr>   
                <td><asp:ImageButton Cssclass="imgicons" id="imgLogin" runat="server" src="Images/loginIcon.png" OnClick="imgLogin_Click"/>User Registration</td>
                <td><asp:ImageButton Cssclass="imgicons" id="imgInputData" runat="server" src="Images/InputData.png" OnClick="imgInputData_Click" />Input Data</td>
            </tr>
            <tr>
                <td><asp:ImageButton Cssclass="imgicons" id="imgUpdate" runat="server" src="Images/Updateicon.png" OnClick="imgUpdate_Click"/>Update Data</td>
                <td><asp:ImageButton Cssclass="imgicons" id="imgGraph" runat="server" src="Images/Graphicon.png" OnClick="imgGraph_Click"/>Graphs</td>
            </tr>
        </table>
    </div>
    <div id="miniInfo">
        <h2>Email >> RoadAccidentSriLanka306@gmail.com  <br />Contact Us :- 011-4567890</h2>
    </div>

        <div id="BClinkedarea">

            <div class="linkedbox" id="rdaLB"> 
                <img src="Images/rdaLogo.jpg" id="rdaLpic" /><br />
                <h3>Road Development Authority-Sri Lanka</h3>
                <p>Road Development Authority in Sri Lanka has taken the responsibility of Sri Lankan road and bridge maintainance.
                    <br /><br /> The Road Development Authority(RDA) in shall look into the respective accidents occured as they hold the responsibility of road maintainance.
                </p><br />
                <h4>For more information</h4>
                <asp:ImageButton ID="rdaMInfo" runat="server" CssClass="MInfo" src="Images/MoreInfo.jpg" OnClick="rdaMInfo_Click"/>
            </div>

            <div class="linkedbox" id="policeLB"> 
                <img src="Images/policegroup.jpg" id="policeLpic"/><br />
                <h3>Police Department-Sri Lanka</h3>
                <p>Sri Lanakan Police Department has hold the security of civil citizence activities. Criminal and Road Accidents are few of them.
                    <br /><br /> The Involved Unity of Sri Lankan Police shall hold their responsibility of approving for the relevant Insurance Companies.
                </p><br />
                <h4>For more information</h4>
                <asp:ImageButton ID="policeMInfo" runat="server" src="Images/MoreInfo.jpg" class="MInfo" OnClick="policeMInfo_Click"/>
            </div>

            <div class="linkedbox" id="insuranceLB"> 
                <img src="Images/Vinsurance.jpg" id="VinsuranceLpic"/><br />
                <h3>Vehicle Insurance-Sri Lanka</h3>
                <p>Insurance Companies shall offer their services for the relevant users who have received the approved notification from the Police Department in Sri Lanaka.  </p><br />
                <h4>For more information </h4>
                <asp:ImageButton ID="insuranceMInfo" runat="server" class="MInfo" src="Images/MoreInfo.jpg" OnClick="insuranceMInfo_Click"/>      
            </div>
        </div>
            
        <footer>
            <asp:Table runat="server">
                <asp:TableRow>
                    <asp:TableHeaderCell><h3 id="footertitle">About US</h3></asp:TableHeaderCell>
                </asp:TableRow>

                <asp:TableRow>
                    <asp:TableCell>
                        <ul id="footerlist">
                          <li>RDA</li>
                          <li>Police Department</li>
                          <li>Insurance Companies</li>
                        </ul>
                    </asp:TableCell>
                </asp:TableRow>
            </asp:Table>
        </footer>
    </form>      
</body>
</html>
