<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegisterPage.aspx.cs" Inherits="WorkFromHome1.RegisterPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Register Page</title>

      <style>


        body {
            background-image:url("Images/R2-00688.jpg");
             background-repeat:no-repeat;
              background-size:cover;
            color:black;
            /*background-image:url("Images/images%20(16).jfif");
            background-color:white;
            color:white;
            background-repeat:no-repeat;
            background-size:cover;*/

         
            
        }


        .container {
            width:500px;
            height:800px;
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

         /*.containerButton1 {
             padding-left:15px;
             padding-right:15px;

             margin-left:110px;

         }*/

         .containerButton2 {
             margin-left:219px;
         }

          /*.containerButton3 {
             padding-left:10px;
             padding-right:10px;

             margin-left:60px;
         }*/

          .imageUploading {
              height:150px;
              width:150px;
              border:1px solid black;
              margin-top:30px;
              margin-left:180px;
          }

          .imageUploadingFile {
             height:20px;
              width:200px;
            border-collapse:collapse;
              margin-top:30px;
              margin-left:150px;
          }
          .saveButton {
               margin-left:219px;
            background-color:green;
            color:white;
          } 
        @media only screen and (min-device-width: 0px) and (max-device-width:360px) {
            body {
                background-color: lightblue;
            }

            @media only screen and (min-device-width: 361px) and (max-device-width:780px) {
                body {
                    background-color: pink;
                }
            }

            @media only screen and (min-device-width: 781px) and (max-device-width:1024px) {
                body {
                    background-color: lightgray;
                }
            }
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

      

        <div class="imageUploading" >

            <asp:Image ID="Image1" runat="server" Height="147px" Width="145px" />

        </div>

        <div class="imageUploadingFile">

            <asp:FileUpload ID="FileUpload1" runat="server" Height="30px" Width="248px" />

          </div>

        <div class="containerUp1">
            <asp:Button ID="Button1" runat="server" Text="Save"   CssClass="saveButton" Width="82px" OnClick="Button1_Click"/>
             <%-- <asp:Button ID="Button3" runat="server" Text="Update" CssClass="containerButton2" OnClick="Button3_Click" />--%>
        </div>

        <div class="containerUp1">
            <asp:Label ID="Label6" runat="server"  CssClass="containerButton2"></asp:Label>
        </div>

         <div class="containerUp1">
          <%-- <asp:Button ID="Button2" runat="server" Text="Add" CssClass="containerButton1" />--%>
          
           <%-- <asp:Button ID="Button4" runat="server" Text="Clear" CssClass="containerButton3" />--%>
        </div>


    </div>
    </form>
</body>

 
</html>
