<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="NewTask.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <title></title>
   <style>
       body{
           background-image:url("images/pexels-photo-675267.jpeg");
           }

       .Haeding {
           text-align:center;

       }
       table{
           margin-left:487px;
           margin-top:100px;
           border:1px solid black;
           height:500px;
           width:500px;
           padding-left:50px;
           background-color:lightblue;
           color:white;
       }
       .TableData {
           width: 210px;
       }
       </style>
</head>
<body>
   <h1 class="Haeding">Register Page</h1>
   <form id="form1" runat="server">
   <div>    
  <table>    
   
      <tr>    
          <td class="TableData">FirstName</td>    
          <td>    
              <asp:TextBox ID="txtFirstName" runat="server" />    
          </td>    
      </tr>
     
      <tr>    
          <td class="TableData">LastName</td>    
          <td>    
              <asp:TextBox ID="txtLastName" runat="server"  />    
          </td>    
      </tr>
         
      <tr>    
          <td class="TableData">Email</td>    
          <td>    
              <asp:TextBox ID="txtEmail" runat="server" />    
          </td>    
      </tr>
   
      <tr>    
          <td class="TableData">Password</td>    
          <td>    
              <asp:TextBox ID="txtPassword" runat="server" />    
          </td>    
      </tr>
         
      <tr>    
          <td class="TableData">Gender</td>    
          <td>    
              <asp:TextBox ID="txtGender" runat="server" />    
          </td>    
      </tr>    
     
       <tr>    
          <td class="TableData">DateOfBirth</td>    
          <td>    
              <asp:TextBox ID="txtDateOfBirth" runat="server" />    
          </td>    
      </tr>

      <tr>    
          <td class="TableData">MobileNumber</td>    
          <td>    
              <asp:TextBox ID="txtMobileNumber" runat="server" />    
          </td>    
      </tr>
   
      <tr>
          <td class="TableData">Address</td>
          <td>
              <asp:TextBox ID="txtAddress" runat="server" TextMode="MultiLine" Width="161px" />
              </td>
          </tr>  
      <br/>      
      <tr>
          <td class="TableData">
              <asp:Button ID="btnAdd" runat="server" Text="Add"  OnClick="btnAdd_Click"  style="margin-left:20px" Width="58px" PostBackUrl="~/Upgrade.aspx" />
          </td>
         
          <td align="center">    
               <asp:Button ID="btnUpdate" runat="server" Text="Update" OnClick="btnUpdate_Click" style="margin-right:70px" Width="58px" />     
          </td>   
           
          <td align="center">    
              <asp:Button ID="btnCancel" runat="server" Text="Cancel" OnClick="btnCancel_Click" style="margin-right:40px" Width="58px" />    
          </td>  
          
       </tr>    
  </table>    
       
</div>    
   </form>
</body>
</html>


