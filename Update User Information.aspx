<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Update User Information.aspx.cs" Inherits="Road_Accident_Investigation.Update_User_Information" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Update User Information Page</title>
    <link rel="stylesheet" href="CSS/updateUserInformation.css"/>
</head>
<body>
    <h1>Update Driver Information about the Accident</h1>
     <form runat="server">
            <table>
                <tr>
                    <td><asp:Label ID="Label10" CssClass="labels" runat="server" Text="Accident number"></asp:Label></td>
                </tr>
                <tr>
                    <td><asp:TextBox ID="txtaccNumber" CssClass="textbox" runat="server"></asp:TextBox></td>
                </tr>
                

                <tr>
                    <td><asp:Label ID="Label1" CssClass="labels" runat="server" Text="User Name"></asp:Label></td>
                </tr>
                <tr>
                    <td><asp:TextBox ID="txtUsername" CssClass="textbox" runat="server"></asp:TextBox></td>
                    <td>
                        <asp:Label ID="Label11" runat="server" Text="Enter your user identity number to see your accident records"></asp:Label>&nbsp;<asp:TextBox ID="txtUID" runat="server"></asp:TextBox><br />
                        <asp:Button ID="btnshowdata" runat="server" Text="Show data" OnClick="btnshowdata_Click" />
                        <asp:GridView ID="GridView1" runat="server"></asp:GridView>
                    </td>
                    <td>
                        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" OnSelectedIndexChanged="GridView2_SelectedIndexChanged">
                            <Columns>
                                <asp:BoundField DataField="ImageID" HeaderText="Image ID" />
                                <asp:BoundField DataField="VehicleNumber" HeaderText="Vehicle number" />
                                <asp:BoundField DataField="AccidentLocation" HeaderText="Accident location" />
                                <asp:TemplateField HeaderText="Image">

                                    <ItemTemplate>
                                        <img src="Images/<%#Eval("Image") %>" style="width:100px;height:100px"/>
                                    </ItemTemplate>

                                </asp:TemplateField>
                                <asp:BoundField DataField="UserID" HeaderText="User ID" />
                            </Columns>
                        </asp:GridView>
                    </td>
                </tr>
                
                <tr>
                    <td><asp:Label ID="Label8" CssClass="labels" runat="server" Text="Owner Email address"></asp:Label></td>
                </tr>
                <tr>
                    <td><asp:TextBox ID="txtEmail" CssClass="textbox" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td><asp:Label ID="Label6" CssClass="labels" runat="server" Text="Vehicle number"></asp:Label></td>
                </tr>
                <tr>
                    <td><asp:TextBox ID="txtVehiclenum" CssClass="textbox" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td><asp:Label ID="Label3" CssClass="labels" runat="server" Text="Date of accident"></asp:Label></td>
                </tr>
                <tr>
                    <td><asp:TextBox ID="txtDate" CssClass="textbox" runat="server"></asp:TextBox></td>
                </tr>

                <tr>
                    <td><asp:Label ID="Label4" CssClass="labels" runat="server" Text="Time of accident happened"></asp:Label></td>
                </tr>
                <tr>
                    <td><asp:TextBox ID="txtTime" CssClass="textbox" runat="server"></asp:TextBox></td>
                </tr>

                <tr>
                    <td><asp:Label ID="Label5" CssClass="labels" runat="server" Text="Accident location"></asp:Label></td>
                </tr>
                <tr>
                    <td><asp:TextBox ID="txtLocation" CssClass="textbox" runat="server"></asp:TextBox></td>
                </tr>
                 
               

                <tr>
                    <td><asp:Label ID="Label7" CssClass="labels" runat="server" Text="Expected Insurance Location"></asp:Label></td>
                </tr>
                <tr>
                    <td><asp:TextBox ID="txtInsurance" CssClass="textbox" runat="server"></asp:TextBox></td>
                </tr>

                 <tr>
                    <td>
                        <asp:Button ID="btnUpdate" runat="server" Text="Update" OnClick="btnUpdate_Click" /></td>
                </tr>

                <tr>
                    <td> <asp:Label ID="Label2" runat="server" Text="Enter the image ID"></asp:Label></td>
                </tr>

                <tr>
                    <td>
                        <asp:TextBox ID="txtimageID" runat="server"></asp:TextBox></td>
                </tr>

                <tr>
                    <td><asp:Label ID="Label9" runat="server" CssClass="labels" Text="Upload Evidences as Photographs"></asp:Label></td>
                </tr>
                <tr>
                    <td><asp:FileUpload ID="txtEvidences1" runat="server" CssClass="textbox"/></td>
                </tr>

                
            </table>
            <asp:Button ID="btnSubmit" CssClasss="Buttons" runat="server" Text="Update image details" OnClick="btnSubmit_Click" />   <br />
            <asp:Label ID="lblmsg" runat="server" Text=" "></asp:Label>
        </form>
</body>
</html>