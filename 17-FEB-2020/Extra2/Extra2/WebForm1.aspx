<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Extra2.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Student Informatio</title>
    <style>



        body {
             background-image:url("images/remove-background-featured-image.jpg" );
            background-repeat:no-repeat;
            background-size:cover;

        }

        .Container {
            width: 500px;
            height: 500px;
            border: 1px solid black;
            margin: 50px 50px 50px 500px;
            color: blue;
        }                                           
           
        .ContainerUp1 {
            margin:10px 50px 20px 120px;
        }

        .ContainerUp2 {
            margin:0px 50px 20px 120px;
        }

        .Header {
          margin:10px 50px 10px 650px;
            color:gray;
        }

        .Textbox {
            margin-left:40px;
        }

        .TextEmail {
            margin-left:70px;
        } 

        .TextPassword {
            margin-left:50px;
        }

        .TextDateOfBirth {
            margin-left:40px;
        }

        .TextMobileNumber {
            margin-left:20px;
        }

        .TextAddress {
            margin-left:60px;
        }

        .RadioButton {
            margin: 0px 0px 0px 100px;
        }

        .Add {
            margin-left:30px;
        }

         .Update {
            margin-left:40px;
        }

          .Clear{
            margin-left:40px;
        }

    </style>

</head>
<body>
    <form id="form1" runat="server">

        <h1 class="Header"> Employee Details</h1>
    
       <div class="Container">

          <div class="ContainerUp1">
                  <asp:Label ID="Label1" runat="server" Text="FirstName :"></asp:Label>
                  <asp:TextBox CssClass="Textbox" ID="TextBox1" runat="server" Width="151px" MaxLength="30" ></asp:TextBox>
          </div>
   
           <div class="ContainerUp2">
                   <asp:Label ID="Label2" runat="server" Text="LastName :"></asp:Label>
                   <asp:TextBox CssClass="Textbox" ID="TextBox2" runat="server" Width="151px" MaxLength="30"></asp:TextBox>
           </div>

           <div class="ContainerUp2">
               <asp:Label ID="Label7" runat="server" Text="Email :"></asp:Label>
                   <asp:TextBox CssClass="TextEmail" ID="TextBox3" runat="server" Width="151px"></asp:TextBox>
           </div>

           <div class="ContainerUp2">
              <asp:Label ID="Label8" runat="server" Text="Password:"></asp:Label>
                   <asp:TextBox CssClass="TextPassword" ID="TextBox4" runat="server" Width="151px" TextMode="Password"></asp:TextBox>
            </div>
           
           <div class="ContainerUp2">
               <asp:Label ID="Label3" runat="server" Text="Gender"></asp:Label>
               <asp:RadioButtonList CssClass="RadioButton" ID="RadioButtonList1" runat="server">
                 <asp:ListItem Value="Male">Male</asp:ListItem>
                   <asp:ListItem Value="Femle">Female</asp:ListItem>
               </asp:RadioButtonList>
           </div>
            
           <div class="ContainerUp2">
                <asp:Label ID="Label4" runat="server" Text="DateOfBirth"></asp:Label>
               <asp:TextBox CssClass="TextDateOfBirth" ID="TextBox5"  runat="server" Width="151px" TextMode="Date"></asp:TextBox>
           </div>

           <div class="ContainerUp2">
               <asp:Label ID="Label5" runat="server" Text="MobileNumber:"></asp:Label>
                <asp:TextBox CssClass="TextMobileNumber" ID="TextBox6" runat="server" Width="151px" MaxLength="10"></asp:TextBox>
            </div>
           
           <div class="ContainerUp2">
               <asp:Label ID="Label6" runat="server" Text="Address:"></asp:Label>
                <asp:TextBox CssClass="TextAddress" ID="TextBox7" runat="server" Width="151px" TextMode="MultiLine">
               </asp:TextBox>
            </div>
       
           <div class="ContainerUp2">
               <asp:Button CssClass="Add" ID="Button1" runat="server" Text="Add" Width="61px" OnClick="Add_Click" />
               <asp:Button CssClass="Update" ID="Button2" runat="server" Text="Update" OnClick="Update_Click" />
               <asp:Button CssClass="Clear" ID="Button3" runat="server" Text="Clear" Width="61px" OnClick="Cancel_Click" />
           </div>
               
           
        












   
    </div>
    </form>
</body>
</html>
