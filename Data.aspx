<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Data.aspx.cs" Inherits="Road_Accident_Investigation.Data" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Police Data Page</title>
    <link rel="stylesheet" href="CSS/data.css"/>

    
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
                <asp:TreeNode Text="Data" Value="Data"></asp:TreeNode>
                <asp:TreeNode Text="Contact us" Value="Contact us"></asp:TreeNode>
            </Nodes>
        </asp:TreeView>
        </div>

        <div id="menutitle">
            <h1>Sri Lanakan Police Road Safety Profile</h1>
        </div>

        <div id="policebox">
            <img src="Images/policedata.jpg" id="datapic"/>
            <div id="enterdetails">   
                <asp:Label ID="Label1" runat="server" Text="Enter Police area"></asp:Label>
                <asp:DropDownList ID="DropDownList1" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged"></asp:DropDownList> <br />
            <asp:dropdownlist id="ddlist" runat="server" cssclass="detbox">
                <asp:listitem>select police area</asp:listitem>    
                <asp:listitem id="plwalikada">walikada</asp:listitem>
                <asp:listitem id="pldamstreet">dam street</asp:listitem>
                <asp:listitem id="plpettah">pettah</asp:listitem>
                <asp:listitem id="plcolombo">colombo</asp:listitem>
                <asp:listitem id="plwellawatta">wellawatta</asp:listitem>
                <asp:listitem id="plpaliyagoda">paliyagoda</asp:listitem>
                <asp:listitem id="plmullariyawa">mullariyawa</asp:listitem>
                <asp:listitem id="plgrandpass">grandpass</asp:listitem>
                <asp:listitem id="plmattakuliya">mattakuliya</asp:listitem>
            </asp:dropdownlist><br />        

            <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label>
                <asp:TextBox ID="txtpass" runat="server"></asp:TextBox>       
            </div>
            <asp:Button ID="btnsubmit" runat="server" Text="Submit" OnClick="btnsubmit_Click" /><br />
            <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click" >Create a new account?</asp:LinkButton>
        </div>

        <div>
            <asp:GridView ID="GridView1" runat="server"></asp:GridView>
             <asp:Button ID="Button1" runat="server" Text="Read more" OnClick="Button1_Click" />  
            <br />
            <asp:Button ID="Button2" runat="server" Text="See Images" OnClick="Button2_Click" style="height: 29px" /> 
            <br />
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

            <asp:Label ID="Label4" runat="server" Text="Enter the Accident Number that you need to Approve deny"></asp:Label><asp:TextBox ID="txtAccNo" runat="server"></asp:TextBox>
            <br />
            <asp:Button ID="Button3" runat="server" Text="Approve" OnClick="Button3_Click" />&nbsp;<asp:Button ID="Button4" runat="server" Text="Deny" OnClick="Button4_Click" />
             <br />          
            <asp:Label ID="lblmsg" runat="server" Text=""></asp:Label>
            
        </div>
    </form>
</body>
</html>
