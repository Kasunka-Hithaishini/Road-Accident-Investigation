<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DeleteUserInformation.aspx.cs" Inherits="Road_Accident_Investigation.DeleteUserInformation" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Delete User Information Form Page</title>
    <link rel="stylesheet" href="CSS/DeleteUserInformation.css"/>
</head>
<body>
    <form id="form1" runat="server">
        <div id="deleteForm">
            <table>
                <tr>
                    <td>
                        <asp:Label ID="Label1" runat="server" Text="Enter your UserID to view your records "></asp:Label>
                    </td>
                </tr>
                <tr>
                 <td>

                 </td>   
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblUserID" runat="server" Text="UserID"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtUserID" runat="server" CssClass="text"></asp:TextBox>
                    </td>
                </tr>


                <tr>
                    <td>
                         <asp:Button ID="btnShow" runat="server" Text="Show" OnClick="btnShow_Click" />
                    </td>
                </tr> 
                 <tr>
                    <td>
                        <asp:GridView ID="GridView1" runat="server"></asp:GridView>  
                    </td>
                </tr> 
                 <tr>
                    <td>
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
                    <asp:BoundField DataField="UserId" HeaderText="User ID" />
                </Columns>
            </asp:GridView><br />  
                    </td>
                </tr> 

                <tr>
                    <td>
                        <asp:Label ID="Label2" runat="server" Text="Enter the Accident Number to delete information"></asp:Label>
                        <asp:TextBox ID="txtdeletedata" runat="server" CssClass="text"></asp:TextBox>
                    </td>
                    
                </tr>

                <tr>
                    <td>
                        <asp:Button ID="btnDeletedata" runat="server" Text="Delete Data" OnClick="btnDeletedata_Click" />
                    </td>
                </tr>

                <tr>
                    <td>
                        <asp:Label ID="Label3" runat="server" Text="Enter the image ID to delete information"></asp:Label>
                         <asp:TextBox ID="txtimgID" runat="server" CssClass="text"></asp:TextBox>
                    </td>
                    
                </tr>

                <tr>
                    <td>
                        <asp:Button ID="btnimgdelete" runat="server" Text="Delete Image" OnClick="btnimgdelete_Click" />
                    </td>
                </tr>
            </table>
           
        </div>
    </form>
</body>
</html>
