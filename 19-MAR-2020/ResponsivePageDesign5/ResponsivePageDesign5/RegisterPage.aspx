<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegisterPage.aspx.cs" Inherits="ResponsivePageDesign5.RegisterPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Register Page</title>

    <style>


        body {
            background-image:url("Images/pexels-photo-246658.jpeg")
        }


        .container {
            width:500px;
            height:500px;
            border:1px solid black;
            margin-left:650px;
            margin-top:100px;

        }

        .containerUp1 {
            margin-top:30px;
        }

        .containerName {
            margin-left:130px;
        }
        
        .containerNameTextbox {
            margin-left:20px;
        }

        .containerCity {
             margin-left:130px;

        }
        .containerCityTextbox {
            margin-left:30px;
        }

         .containerState {
             margin-left:130px;

        }

         .containerStateTextbox {
            margin-left:25px;
        }

           .containerCountry {
             margin-left:130px;

        } 
           
         .containerCountryTextbox {
            margin-left:5px;
        }

         .conatinerButtons {
             margin-left:30px;
         }

         .containerButton1 {
             padding-left:15px;
             padding-right:15px;

             margin-left:110px;

         }

         .containerButton2 {
             margin-left:60px;
         }

          .containerButton3 {
             padding-left:10px;
             padding-right:10px;

             margin-left:60px;
         }
      



    </style>

</head>
<body>
    <form id="form1" runat="server">
    <div class="container">
    
        <div class="containerUp1">
            <asp:Label ID="Label1" runat="server" Text="Name :" CssClass="containerName"></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server" CssClass="containerNameTextbox"></asp:TextBox>
        </div>

         <div class="containerUp1">
            <asp:Label ID="Label2" runat="server" Text="Email :" CssClass="containerName"></asp:Label>
            <asp:TextBox ID="TextBox2" runat="server" CssClass="containerNameTextbox"></asp:TextBox>
        </div>

          <div class="containerUp1">
            <asp:Label ID="Label3" runat="server" Text="City :" CssClass="containerCity"></asp:Label>
            <asp:TextBox ID="TextBox3" runat="server" CssClass="containerCityTextbox"></asp:TextBox>
        </div>

        <div class="containerUp1">
            <asp:Label ID="Label4" runat="server" Text="State :" CssClass="containerState"></asp:Label>
            <asp:TextBox ID="TextBox4" runat="server" CssClass="containerStateTextbox"></asp:TextBox>
        </div>

        <div class="containerUp1">
            <asp:Label ID="Label5" runat="server" Text="Country :" CssClass="containerCountry"></asp:Label>
            <asp:TextBox ID="TextBox5" runat="server" CssClass="containerCountryTextbox"></asp:TextBox>
        </div>

        <div class="containerUp1">
            <asp:Button ID="Button1" runat="server" Text="Add" CssClass="containerButton1" />
            <asp:Button ID="Button2" runat="server" Text="Update" CssClass="containerButton2" />
            <asp:Button ID="Button3" runat="server" Text="Clear" CssClass="containerButton3" />
        </div>




    </div>
    </form>
</body>
</html>
