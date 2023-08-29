<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Input User Information.aspx.cs" Inherits="Road_Accident_Investigation.Input_User_Information" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Input User Information Page</title>
    <link rel="stylesheet" href="CSS/inputUserInformation.css"/>
    <style type="text/css">
        .auto-style1 {
            height: 41px;
        }
    </style>
</head>
<body>
    <h1>Reporting the Road Accident </h1>
        <form runat="server">
            <table>
                <tr>
                    <td><asp:Label ID="lblUsername" CssClass="labels" runat="server" Text="User Name"></asp:Label></td>
                </tr>
                <tr>
                    <td><asp:TextBox ID="txtUsername" CssClass="textbox" runat="server"></asp:TextBox><asp:Label ID="Label11" runat="server" Text="*" ForeColor="Red"></asp:Label><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter user name" ControlToValidate="txtUsername"></asp:RequiredFieldValidator></td>
                </tr>
                
                <tr>
                    <td><asp:Label ID="lblUserIdentityNumber" CssClass="labels" runat="server" Text="User Indetity Number"></asp:Label></td>
                </tr>
                <tr>
                    <td><asp:TextBox ID="txtUIDnumber" CssClass="textbox" runat="server"></asp:TextBox><asp:Label ID="Label12" runat="server" Text="*" ForeColor="Red"></asp:Label><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Enter user identity number" ControlToValidate="txtUIDnumber"></asp:RequiredFieldValidator></td>
                </tr>

                <tr>
                    <td><asp:Label ID="lblUserEmailAddress" CssClass="labels" runat="server" Text="Owner Email address"></asp:Label></td>
                </tr>
                <tr>
                    <td><asp:TextBox ID="txtEmail" CssClass="textbox" runat="server"></asp:TextBox><asp:Label ID="Label13" runat="server" Text="*" ForeColor="Red"></asp:Label><asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Enter user email address" ControlToValidate="txtEmail"></asp:RequiredFieldValidator></td>
                </tr>
                <tr>
                    <td><asp:Label ID="lblVehiclenumber" CssClass="labels" runat="server" Text="Vehicle number"></asp:Label></td>
                </tr>
                <tr>
                    <td><asp:TextBox ID="txtVehiclenum" CssClass="textbox" runat="server"></asp:TextBox><asp:Label ID="Label14" runat="server" Text="*" ForeColor="Red"></asp:Label><asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Enter vehicle number" ControlToValidate="txtVehiclenum"></asp:RequiredFieldValidator></td>
                </tr>
                <tr>
                    <td><asp:Label ID="lblVehicleType" CssClass="labels" runat="server" Text="Vehicle type"></asp:Label></td>
                </tr>
                <tr>
                    <td><asp:TextBox ID="txtVehicletype" CssClass="textbox" runat="server"></asp:TextBox><asp:Label ID="Label15" runat="server" Text="*" ForeColor="Red"></asp:Label><asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Enter vehicle type" ControlToValidate="txtVehicletype"></asp:RequiredFieldValidator></td>
                </tr>
                <tr>
                    <td><asp:Label ID="lblAccidentDate" CssClass="labels" runat="server" Text="Date of accident"></asp:Label></td>
                </tr>
                <tr>
                    <td><asp:TextBox ID="txtDate" CssClass="textbox" runat="server"></asp:TextBox><asp:Label ID="Label16" runat="server" Text="*" ForeColor="Red"></asp:Label><asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Enter date of the accident" ControlToValidate="txtDate"></asp:RequiredFieldValidator></td>
                </tr>

                <tr>
                    <td><asp:Label ID="lblAccidentLocation" CssClass="labels" runat="server" Text="Time of accident happened"></asp:Label></td>
                </tr>
                <tr>
                    <td><asp:TextBox ID="txtTime" CssClass="textbox" runat="server"></asp:TextBox><asp:Label ID="Label17" runat="server" Text="*" ForeColor="Red"></asp:Label><asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Enter time of the accident" ControlToValidate="txtTime"></asp:RequiredFieldValidator></td>
                </tr>

                <tr>
                    <td><asp:Label ID="lblCause" runat="server" CssClass="labels" Text="Cause of Accident"></asp:Label></td>
                </tr>
                <tr>
                    <td>
                        <asp:TextBox ID="txtCauseOfAccident" CssClass="textbox" runat="server"></asp:TextBox><asp:Label ID="Label18" runat="server" Text="*" ForeColor="Red"></asp:Label><asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="Enter cause of the accident" ControlToValidate="txtCauseOfAccident"></asp:RequiredFieldValidator></td>
                </tr>

                <tr>
                    <td><asp:Label ID="lblLocation" CssClass="labels" runat="server" Text="Accident location"></asp:Label></td>
                </tr>
                <tr>
                    <td><asp:TextBox ID="txtLocation" CssClass="textbox" runat="server"></asp:TextBox><asp:Label ID="Label19" runat="server" Text="*" ForeColor="Red"></asp:Label><asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ErrorMessage="Enter accident location" ControlToValidate="txtLocation"></asp:RequiredFieldValidator></td>
                </tr>
                 
                <tr>
                    <td><asp:Label ID="lblCompany" CssClass="labels" runat="server" Text="Expected Insurance Company"></asp:Label></td>
                </tr>
                <tr>
                    <td class="auto-style1"><asp:TextBox ID="txtInsurance" CssClass="textbox" runat="server"></asp:TextBox><asp:Label ID="Label20" runat="server" Text="*" ForeColor="Red"></asp:Label><asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ErrorMessage="Enter insurance company" ControlToValidate="txtInsurance"></asp:RequiredFieldValidator></td>
                </tr>

                <tr>
                    <td> <asp:Label ID="lblinsertSuccess" runat="server" ForeColor="#3333CC"></asp:Label></td>
                </tr>

                <tr>
                    <td><asp:Label ID="lblEvidence" runat="server" CssClass="labels" Text="Upload Evidences as Photographs"></asp:Label></td>
                </tr>
                <tr>
                    <td><asp:FileUpload ID="txtEvidences1" runat="server" CssClass="textbox"/></td>
                </tr>
   
            </table>
             <asp:Button ID="btninputdata" CssClasss="Buttons" runat="server" Text="Submit Data" OnClick="btninputdata_Click" Width="190px" Height="50px" Font-Size="28px"/>
             <asp:Button ID="btnimgSubmit" CssClasss="Buttons" runat="server" Text="Image Submit" OnClick="btnimgSubmit_Click" Width="219px" Height="50px" Font-Size="28px"/>
            <asp:Button ID="btnClear" CssClasss="Buttons" runat="server" Text="Clear" OnClick="btnClear_Click" Height="50px" Font-Size="28px"/>
            <asp:Button ID="btndelete" CssClasss="Buttons" runat="server" Text="Delete Information" Width="257px" Height="50px" Font-Size="28px" OnClick="btndelete_Click"/>
            <br />
            <asp:Label ID="lblmsg" runat="server" Text="Label"></asp:Label>
        </form>
</body>
</html>
