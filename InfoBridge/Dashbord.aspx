﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Dashbord.aspx.cs" Inherits="InfoBridge.Dashbord" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
             margin:auto;
            padding-top:80px;
             
            height: 288px;
            width: 611px;
        }
        .auto-style3 {
            width: 94%;
            margin:auto;
            border: 2px ridge black;
        }
        .auto-style4 {
            width:auto;
        }
        .auto-style5 {
            width: 210px;
        }
        .auto-style7 {
            width: 210px;
            height: 29px;
        }
        .auto-style8 {
            width: 230px;
            height: 29px;
        }
        .auto-style11 {
            width: 210px;
            height: 26px;
        }
        .auto-style12 {
            width: 230px;
            height: 26px;
        }
               
           
        
            .auto-style13 {
                 margin:auto;
                height: 285px;
                width: 600px;
                border: 3px ridge black;
            }
            .auto-style14 {
                height: 29px;
            }
       
           .auto-style25{
                
               height: 34px;
               text-align:center;
               background-color:black;
               color:white
               
                             }
        </style>
      
</head>
<body>
    <form id="form2" runat="server">

         
          <div class="auto-style13">
          <h3 class="auto-style25">  Update Data</h3>
              
              <table class="auto-style3" >
                <tr>
                    <td class="auto-style7">Name</td>
                    <td class="auto-style14">
                        <asp:TextBox ID="TextBox10" runat="server" Width="231px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7">Gender</td>
                    <td class="auto-style8">    <asp:DropDownList ID="DropDownList1" runat="server" Width="233px">
                                <asp:ListItem Enabled="False">Select Gender</asp:ListItem>
                                <asp:ListItem>Male</asp:ListItem>
                                <asp:ListItem>Female</asp:ListItem>
                            </asp:DropDownList></td>
                </tr>
                <tr>
                    <td class="auto-style5">DateOfBirth </td>
                    <td>
                        <asp:TextBox ID="TextBox12" runat="server" Width="230px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style11">Phone </td>
                    <td class="auto-style12">
                        <asp:TextBox ID="TextBox13" runat="server" Width="229px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">Address </td>
                    <td class="auto-style4">
                        
                        <asp:TextBox ID="TextBox14" runat="server" Width="228px"></asp:TextBox>
                    
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">ImageUplad</td>
                    <td class="auto-style4">
                        
                        <asp:FileUpload ID="FileUpload1" runat="server" />
                  
                                
                    </td>
                    <td>
                        <asp:Button ID="Button2" runat="server" Text="Upload" OnClick="Button2_Click1" />
                    </td>
                </tr>
            </table>
           
              <div class="auto-style25">

     
         <asp:LinkButton  OnClick="Button1_Click" runat="server" Text="Update" Width="61px"  ></asp:LinkButton>
                    </div>
            </div>
        
         
          
        <div class="auto-style1">
          
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" AutoGenerateDeleteButton="True" AutoGenerateEditButton="True" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" DataKeyNames="Id" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Vertical" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="612px">
                <AlternatingRowStyle BackColor="#CCCCCC" />
                <Columns>
                    <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                    <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                    <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
                    <asp:BoundField DataField="Dateofbirth" HeaderText="Dateofbirth" SortExpression="Dateofbirth" />
                    <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone" />
                    <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                    <asp:BoundField DataField="Image" HeaderText="Image" SortExpression="Image" />
                </Columns>
                <FooterStyle BackColor="#CCCCCC" />
                <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#808080" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#383838" />
            </asp:GridView>
            <br />
            <br />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:infobridgeConnectionString %>" DeleteCommand="DELETE FROM [Employee] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Employee] ([Name], [Gender], [Address], [Phone], [Dateofbirth]) VALUES (@Name, @Gender, @Address, @Phone, @Dateofbirth)" ProviderName="<%$ ConnectionStrings:infobridgeConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [Employee]" UpdateCommand="UPDATE [Employee] SET [Name] = @Name, [Gender] = @Gender, [Address] = @Address, [Phone] = @Phone, [Dateofbirth] = @Dateofbirth WHERE [Id] = @Id">
                <DeleteParameters>
                    <asp:Parameter Name="Id" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Name" Type="String" />
                    <asp:Parameter Name="Gender" Type="String" />
                    <asp:Parameter Name="Address" Type="String" />
                    <asp:Parameter Name="Phone" Type="String" />
                    <asp:Parameter DbType="Date" Name="Dateofbirth" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Name" Type="String" />
                    <asp:Parameter Name="Gender" Type="String" />
                    <asp:Parameter Name="Address" Type="String" />
                    <asp:Parameter Name="Phone" Type="String" />
                    <asp:Parameter DbType="Date" Name="Dateofbirth" />
                    <asp:Parameter Name="Id" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <br />
            </div>
        
    </form>
</body>
</html>
