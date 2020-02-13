<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Upgrade.aspx.cs" Inherits="NewTask.Upgrade" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        body {
            margin:10px 10px 10px 500px;
            background-color:lightblue;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div >
     
         <asp:LinkButton ID="LinkButton2" runat="server" PostBackUrl="~/WebForm1.aspx" style="margin-left:350px;">Register</asp:LinkButton>
           <asp:GridView  ID="GridView1" HeaderStyle-BackColor="#3AC0F2" HeaderStyle-ForeColor="White" runat="server" AutoGenerateColumns="false" OnRowCommand="GridView1_RowCommand" >  
             
               <Columns>  
                   <asp:BoundField DataField="userId"  />  
                   <asp:BoundField DataField="FirstName" HeaderText="FirstName" />  
                   <asp:BoundField DataField="LastName" HeaderText="LastName" />  
                   <asp:BoundField DataField="Email" HeaderText="Email" />  
                   <asp:BoundField DataField="Password" HeaderText="Password" />  
                    <asp:BoundField DataField="Gender" HeaderText="Gender" />  
                   <asp:BoundField DataField="DateOfBirth" HeaderText="DateOfBirth" />  
                   <asp:BoundField DataField="MobileNumber" HeaderText="MobileNumber" />  
                   <asp:BoundField DataField="Address" HeaderText="Address" />  
                   
                   <asp:TemplateField>  
                       <ItemTemplate>  
                           <asp:Button ID="btnEdit" runat="server" Width="60" Text="Edit" CommandName="EditButton" CommandArgument="<%# ((GridViewRow) Container).RowIndex %>" />  
                           <asp:Button ID="Button1" runat="server" Width="60" Text="Delete" CommandName="DeleteButton" CommandArgument="<%# ((GridViewRow) Container).RowIndex %>" />  
                       </ItemTemplate>  
                   </asp:TemplateField>  
               </Columns>  
           </asp:GridView>  
        
    </div>
    </form>
</body>
</html>

