<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegisterPage.aspx.cs" Inherits="Factory_Pattern16.RegisterPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Student Registration Form</title>

   <meta name="viewport" content="width=device-width, initial-scale=1.0" />

    <style>
       
        /** {
            box-sizing:border-box;
        }*/


        body {
            background-image: url("Images/R2-00688.jpg");
            background-repeat: no-repeat;
            background-size: cover;
        }

       



        .Container {
            width: 500px;
            height: 800px;
            border: 1px solid black;
            margin: 50px 50px 50px 680px;
            color: blue;
        }

        
     @media only screen and (max-width:768px) {
    .cb-recap-sku {
        padding-left: 0;
    }
}
     @media (max-width: 768px) {
    .cb-dash-srch-container {
        max-width: 580px;
        padding: 170px 25px 0;
    }
}



        .ContainerUp1 {
            margin: 10px 50px 20px 120px;
        }

        .ContainerUp2 {
            margin: 0px 50px 20px 120px;
        }

         .Heading {
            text-align:center;
            color:green;

        }

       
        

        .StudentFirstName {
            margin-left: 50px;
        }
         .StudentLastName {
            margin-left: 51px;
        }

        .Mail {
            margin-left:60px;
        }

        .Password {
            margin-left:58px;
        }

        
        .MobileNumber {
            margin-left: 16px;
        }


         .RadioButton {
            margin: 0px 10px 40px 140px;
        }
         
         .DOB {
                margin-left: 36px;

         }
        

        .Marks {
            margin-left: 65px;
        }


        .Address1 {
            margin-left: 70px;
        }

         .Address2 {
            margin-left: 135px;
        }

          .Address3 {
            margin-left: 135px;
        }

        .City {
            margin-left: 115px;

        }
        .State {
            margin-left: 110px;

        }

        .Country {
            margin-left: 92px;

        }


        

        .Add {
            margin-left: 40px;
        }

        .Update {
            margin-left: 45px;
        }

        .Clear {
            margin-left: 45px;
        }

        
.row::after {
  content: "";
  clear: both;
  display: block;
}

[class*="col-"] {
  float: left;
  padding: 15px;
}


        
         /*For desktop:
.col-1 {width: 8.33%;}
.col-2 {width: 16.66%;}
.col-3 {width: 25%;}
.col-4 {width: 33.33%;}
.col-5 {width: 41.66%;}
.col-6 {width: 50%;}
.col-7 {width: 58.33%;}
.col-8 {width: 66.66%;}
.col-9 {width: 75%;}
.col-10 {width: 83.33%;}
.col-11 {width: 91.66%;}
.col-12 {width: 100%;}

@media only screen and (max-width:768px) {
      For mobile phones:

      [class*="col-"] {
         width:100%;
     }
}*/
      
    </style>



</head>
<body>
    <form id="form1" runat="server">

        <h1 class="Heading"> Student Registration Form</h1>
    
        
         <div class="Container">

                <div class=" col-2 ContainerUp1">
                    <asp:Label ID="lblFirstName" runat="server" Text="First Name : "></asp:Label>
                    <asp:TextBox CssClass="StudentFirstName" ID="txtFirstName" runat="server" Width="150px" MaxLength="30"></asp:TextBox>
                </div>

             <div class=" col-2 ContainerUp1">
                 <asp:Label ID="lblLastName" runat="server" Text="Last Name : "></asp:Label>
                 <asp:TextBox CssClass="StudentLastName" ID="txtLastName" runat="server" Width="150px" MaxLength="30"></asp:TextBox>
             </div>

             <div class=" col-3 ContainerUp2">
                 <asp:Label ID="lblEmail" runat="server" Text="Email ID : "></asp:Label>
                 <asp:TextBox CssClass="Mail" ID="txtEmail" runat="server" Width="150px"></asp:TextBox>
             </div>

             <div class="col-4 ContainerUp2 ">
                 <asp:Label ID="lblPassword" runat="server" Text="Password : "></asp:Label>
                 <asp:TextBox CssClass="Password" ID="txtPassword" runat="server" Width="150px" TextMode="Password"></asp:TextBox>
             </div>

             <div class="col-5 ContainerUp2 ">
                 <asp:Label ID="lblMobileNumber" runat="server" Text="Mobile Number : "></asp:Label>
                 <asp:TextBox CssClass="MobileNumber" ID="txtMobileNumber" runat="server" Width="150px"></asp:TextBox>
             </div>


                <div class="col-6 ContainerUp2">
                 <asp:Label CssClass="RadioButtonLabel" ID="lblGender" runat="server" Text="Gender : "></asp:Label>
               <asp:RadioButtonList CssClass="RadioButton" ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal" Height="16px">  
                    <asp:ListItem Value="Male">Male</asp:ListItem>
                    <asp:ListItem Value="Female">Female</asp:ListItem>
                    </asp:RadioButtonList>
                </div>

             <div class="col-7 ContainerUp2">
                 <asp:Label ID="lblDOB" runat="server" Text="Date Of Birth : "></asp:Label>
                 <asp:TextBox CssClass="DOB" ID="txtDOB" type="Date" runat="server" Width="150px"></asp:TextBox>
             </div>


                 <div class="col-8 ContainerUp2">
             <asp:Label ID="lblAddress" runat="server" Text="Address : "></asp:Label>
                 <asp:TextBox CssClass="Address1" ID="txtAddress1" runat="server" Width="151px"></asp:TextBox>
                 <br />
                 <br />
                 <asp:TextBox CssClass="Address2"  ID="txtAddress2" runat="server" Width="151px"></asp:TextBox>
                 <br />
                 <br />
                 <asp:TextBox CssClass="Address3"  ID="txtAddress3" runat="server" Width="151px"></asp:TextBox>

             </div>

             <div class="col-9 ContainerUp2">
                 <asp:Label ID="lblCity" runat="server" Text="City : "></asp:Label> 
                 <asp:DropDownList CssClass="City" ID="DropDownList1" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" Height="16px" Width="107px">
                     <asp:ListItem Value="Select">Select</asp:ListItem>
                     <asp:ListItem Value="Banglore">Banglore</asp:ListItem>
                     <asp:ListItem Value="Mysore">Mysore</asp:ListItem>
                     <asp:ListItem Value="Chikkamagalur">Chikkamagalur</asp:ListItem>
                     <asp:ListItem Value="Shivamogga">Shivamogga</asp:ListItem>
                     <asp:ListItem Value="Madakeri">Madakeri</asp:ListItem>

                 </asp:DropDownList>

             </div>

              <div class="col-10 ContainerUp2">
                 <asp:Label ID="lblState" runat="server" Text="State : "></asp:Label> 
                 <asp:DropDownList CssClass="State" ID="DropDownList2" runat="server" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged" Width="107px">
                     <asp:ListItem Value="Select">Select</asp:ListItem>
                     <asp:ListItem Value="Karnataka">Karnataka</asp:ListItem>
                     <asp:ListItem Value="Maharastra">Maharastra</asp:ListItem>
                     <asp:ListItem Value="Kerala">Kerala</asp:ListItem>
                     <asp:ListItem Value="Tamilunadu">Tamilunadu</asp:ListItem>
                     <asp:ListItem Value="AndraPradesh">AndraPradesh</asp:ListItem>

                 </asp:DropDownList>

             </div>

             <div class="col-11 ContainerUp2">
                 <asp:Label ID="lblCountry" runat="server" Text="Country : "></asp:Label> 
                 <asp:DropDownList CssClass="Country" ID="DropDownList3" runat="server" OnSelectedIndexChanged="DropDownList3_SelectedIndexChanged" Width="107px">
                     <asp:ListItem Value="Select">Select</asp:ListItem>
                     <asp:ListItem Value="India">India</asp:ListItem>
                     <asp:ListItem Value="U.S.A">U.S.A</asp:ListItem>
                     <asp:ListItem Value="Japan">Japan</asp:ListItem>
                     <asp:ListItem Value="Russia">Russia</asp:ListItem>
                     <asp:ListItem Value="Korea">Korea</asp:ListItem>

                 </asp:DropDownList>

             </div>



                <div class="col-12 ContainerUp2">
                    <asp:Button CssClass="Add" ID="ButtonAdd" runat="server" Text="Add" Width="61px" OnClick="Add_Click" />
                      <asp:Button CssClass="Add" ID="ButtonUpdate" runat="server" Text="Update" Width="61px" OnClick="Update_Click"/>

                   <asp:Button CssClass="Clear" ID="ButtonCancel" runat="server" Text="Clear" Width="61px" OnClick="Cancel_Click" />
                </div>
        </div>
    
    </form>
</body>
</html>
