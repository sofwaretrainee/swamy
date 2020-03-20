<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DisplayPage.aspx.cs" Inherits="WorkFromHome1.DisplayPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   
     <title>Responsive Page</title> 

  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <style>
        .container {
            width:1707px;
            height:1250px;
            border:1px solid black;
            margin-left:100px;
            margin-right:20px;
            margin-top:100px;
          }

           .containerUp {
            width:400px;
            height:350px;
            border:1px dotted black;
           
            margin-left:20px;
            margin-top:15px;
            margin-right:0px;
            margin-bottom:0px;
            float:left;
            background-color:lightgray;
        }
           .containerUpImage {
               margin-left:25px;
               margin-top:25px;
              

           }

           .containerup2 {
               margin-left:275px;
               margin-top:-220px;
           }
         
           .containerButton1 {
               /*padding-left:15px;
               padding-right:15px;*/

               margin-top:50px;
               margin-left:170px;
                /*background-color:gray;
                color: white;*/
                cursor: pointer;
              }

           .containerButton2 {
                background-color:gray;
                color: white;
                cursor: pointer;
           }

           .containerRegister {
               margin-top:60px;
               margin-left:780px;
              padding: 15px 32px;
              cursor: pointer;
               border-radius:20px;
               text-align: center;
                 background-color:green;
             border: none;
             color: white;
           }






        @media only screen and (min-device-width: 0px) and (max-device-width:360px) {

            body {
                background-color: lightblue;
            }

            .container, .containerUp, .containerup2, .containerButton1, .containerButton2, .containerRegister {
                width: 100%;
                height: 100%;
            }
        }

    


  @media only screen and (min-device-width: 361px) and (max-device-width:780px) {

    body { background-color: pink; }

  }

 @media only screen and (min-device-width: 781px) and (max-device-width:1024px) {

    body { background-color: lightgray; }

   }




    </style>

</head>

    <body>

     <form id="form1" runat="server">
  
    <div class="container">

        <div class="containerUp">
            <img src="Images/download%20(13).jfif"   class="containerUpImage" height="220" width="220" />
        

            <div class="containerup2">
            <p>1001</p>
            <p> Virat Kholi </p> 
            <p> VK@gmail.com </p> 
            <p> Banglore </p> 
            <p> Karnataka </p> 
            <p> India </p>
          </div>
                
           <div class="containerButton1"> 
               <%-- <asp:Button ID="button1" runat="server" Text="Edit" class="containerButton1" OnClick="button1_Click" />
                <asp:Button ID="button2" runat="server" Text="Delete" class="containerButton2" OnClick="button2_Click"/>--%>

               <asp:LinkButton ID="LinkButton1" runat="server"  OnClick="LinkButton1_Click">Edit</asp:LinkButton>
               
           </div>

         </div>
       

       

           <div class="containerUp">

         <img src="Images/images%20(17).jfif" class="containerUpImage" height="220" width="220" />

            <div class="containerup2">
            <p>1002</p>
            <p> ABD </p> 
            <p> ABD@gmail.com </p> 
            <p> Banglore </p> 
            <p> Karnataka </p> 
            <p> India </p>
          </div>


             <div class="containerButton1"> 
          <%--     <asp:Button ID="button3" runat="server" Text="Edit" class="containerButton1" OnClick="button3_Click" />
                <asp:Button ID="button4" runat="server" Text="Delete" class="containerButton2" OnClick="button4_Click"/>--%>

                 <asp:LinkButton ID="LinkButton2" runat="server"  OnClick="LinkButton2_Click">Edit</asp:LinkButton>

           </div>

           </div>
        
             

        <div class="containerUp">      


            <div>
         <img src="Images/download%20(5).jfif"  class="containerUpImage" height="220" width="220" />

                 <div class="containerup2">
            <p>1003</p>
            <p> Moeen Ali </p> 
            <p> MA@gmail.com </p> 
            <p> Banglore </p> 
            <p> Karnataka </p> 
            <p> India </p>
          </div>


            <div class="containerButton1"> 
              <%-- <asp:Button ID="button5" runat="server" Text="Edit" class="containerButton1" OnClick="button5_Click"/>
                <asp:Button ID="button6" runat="server" Text="Delete" class="containerButton2" OnClick="button6_Click"/>--%>

                 <asp:LinkButton ID="LinkButton3"  runat="server"  OnClick="LinkButton3_Click">Edit</asp:LinkButton>
           </div>

           </div>
       </div>

         <div class="containerUp">

            <div>
         <img src="Images/images%20(19).jfif"  class="containerUpImage" height="220" width="220" />

                 <div class="containerup2">
            <p>1004</p>
            <p> Dale Styen </p> 
            <p> DS@gmail.com </p> 
            <p> Banglore </p> 
            <p> Karnataka </p> 
            <p> India </p>
          </div>


            <div class="containerButton1"> 
              <%-- <asp:Button ID="button7" runat="server" Text="Edit" class="containerButton1" OnClick="button7_Click" />
                <asp:Button ID="button8" runat="server" Text="Delete" class="containerButton2" OnClick="button8_Click"/>--%>

                 <asp:LinkButton ID="LinkButton4"  runat="server"  OnClick="LinkButton4_Click">Edit</asp:LinkButton>
           </div>

           </div>
       </div>

           <div class="containerUp">

            <div>
         <img src="Images/download%20(6).jfif"    class="containerUpImage" height="220" width="220" />

                 <div class="containerup2">
            <p>1005</p>
            <p> Chahal </p> 
            <p> C@gmail.com </p> 
            <p> Banglore </p> 
            <p> Karnataka </p> 
            <p> India </p>
          </div>


            <div class="containerButton1"> 
              <%-- <asp:Button ID="button9" runat="server" Text="Edit" class="containerButton1" OnClick="button9_Click" />
                <asp:Button ID="button10" runat="server" Text="Delete" class="containerButton2" OnClick="button10_Click"/>--%>

                 <asp:LinkButton ID="LinkButton5"  runat="server" OnClick="LinkButton5_Click" >Edit</asp:LinkButton>
           </div>

           </div>
       </div>


        <div class="containerUp">

            <div>
         <img src="Images/download%20(7).jfif"   class="containerUpImage" height="220" width="220" />

                 <div class="containerup2">
            <p>1006</p>
            <p> Umesh Yadav </p> 
            <p> DS@gmail.com </p> 
            <p> Banglore </p> 
            <p> Karnataka </p> 
            <p> India </p>
          </div>


            <div class="containerButton1"> 
               <%--<asp:Button ID="button11" runat="server" Text="Edit" class="containerButton1" OnClick="button11_Click" />
                <asp:Button ID="button12" runat="server" Text="Delete" class="containerButton2" OnClick="button12_Click"/>--%>

                 <asp:LinkButton ID="LinkButton6"  runat="server" OnClick="LinkButton6_Click">Edit</asp:LinkButton>
           </div>

           </div>
       </div>

          <div class="containerUp">

            <div>
         <img src="Images/download%20(9).jfif"   class="containerUpImage" height="220" width="220" />

                 <div class="containerup2">
            <p>1007</p>
            <p> D Padikal </p> 
            <p> DS@gmail.com </p> 
            <p> Banglore </p> 
            <p> Karnataka </p> 
            <p> India </p>
          </div>


            <div class="containerButton1"> 
             <%--  <asp:Button ID="button13" runat="server" Text="Edit" class="containerButton1" OnClick="button13_Click" />
                <asp:Button ID="button14" runat="server" Text="Delete" class="containerButton2" OnClick="button14_Click"/>--%>

                 <asp:LinkButton ID="LinkButton7" runat="server" OnClick="LinkButton7_Click">Edit</asp:LinkButton>
           </div>

           </div>
       </div>


          <div class="containerUp">

            <div>
         <img src="Images/download%20(12).jfif"  class="containerUpImage" height="220" width="220" />

                 <div class="containerup2">
            <p>1008</p>
            <p> Aron Finch </p> 
            <p> DS@gmail.com </p> 
            <p> Banglore </p> 
            <p> Karnataka </p> 
            <p> India </p>
          </div>


           <div class="containerButton1"> 
              <%-- <asp:Button ID="button15" runat="server" Text="Edit" class="containerButton1" OnClick="button15_Click" />
                <asp:Button ID="button16" runat="server" Text="Delete" class="containerButton2" OnClick="button16_Click"/>--%>

                 <asp:LinkButton ID="LinkButton8"  runat="server" OnClick="LinkButton8_Click">Edit</asp:LinkButton>
           </div>

           </div>
       </div>


        
          <div class="containerUp">

            <div>
         <img src="Images/download%20(11).jfif"  class="containerUpImage" height="220" width="220" />
                
                 <div class="containerup2">
            <p>1009</p>
            <p> Chriss Morris </p> 
            <p> DS@gmail.com </p> 
            <p> Banglore </p> 
            <p> Karnataka </p> 
            <p> India </p>
          </div>


           <div class="containerButton1"> 
             <%--  <asp:Button ID="button17" runat="server" Text="Edit" class="containerButton1" OnClick="button17_Click1" />
                <asp:Button ID="button18" runat="server" Text="Delete" class="containerButton2" OnClick="button18_Click1"/>--%>

                 <asp:LinkButton ID="LinkButton9" runat="server" OnClick="LinkButton9_Click">Edit</asp:LinkButton>
           </div>

           </div>
       </div>

     


         <div class="containerUp">

            <div>
         <img src="Images/download%20(14).jfif"  class="containerUpImage" height="220" width="220" />
                
                 <div class="containerup2">
            <p>1010</p>
            <p> Mohamad Siraj </p> 
            <p> DS@gmail.com </p> 
            <p> Banglore </p> 
            <p> Karnataka </p> 
            <p> India </p>
          </div>


             <div class="containerButton1"> 
               <%--<asp:Button ID="button19" runat="server" Text="Edit" class="containerButton1" OnClick="button17_Click1" />
                <asp:Button ID="button20" runat="server" Text="Delete" class="containerButton2" OnClick="button18_Click1"/>--%>

                 <asp:LinkButton ID="LinkButton10"  runat="server" OnClick="LinkButton10_Click">Edit</asp:LinkButton>
           </div>

           </div>
       </div>


         <div class="containerUp">

            <div>
         <img src="Images/download%20(15).jfif"  class="containerUpImage" height="220" width="220" />
                
                 <div class="containerup2">
            <p>1011</p>
            <p> K Richardson </p> 
            <p> DS@gmail.com </p> 
            <p> Banglore </p> 
            <p> Karnataka </p> 
            <p> India </p>
          </div>


           <div class="containerButton1">
              <%-- <asp:Button ID="button21" runat="server" Text="Edit" class="containerButton1" OnClick="button17_Click1" />
                <asp:Button ID="button22" runat="server" Text="Delete" class="containerButton2" OnClick="button18_Click1"/>--%>

                 <asp:LinkButton ID="LinkButton11"  runat="server" OnClick="LinkButton11_Click">Edit</asp:LinkButton>
           </div>

           </div>
       </div>

          
          <div class="containerUp">

            <div>
         <img src="Images/download%20(10).jfif" class="containerUpImage" height="220" width="220" />
                
                 <div class="containerup2">
            <p>1012</p>
            <p> Shivam Dube </p> 
            <p> DS@gmail.com </p> 
            <p> Banglore </p> 
            <p> Karnataka </p> 
            <p> India </p>
          </div>


             <div class="containerButton1">
          <%--     <asp:Button ID="button23" runat="server" Text="Edit" class="containerButton1" OnClick="button17_Click1" />
                <asp:Button ID="button24" runat="server" Text="Delete" class="containerButton2" OnClick="button18_Click1"/>--%>

                 <asp:LinkButton ID="LinkButton12"  runat="server" OnClick="LinkButton12_Click">Edit</asp:LinkButton>
           </div>

           </div>
       </div>


         <div>
            <asp:Button ID="button25" runat="server" Text="Register" CssClass="containerRegister" OnClick="button19_Click" />
        </div>



    </div>
          </form>
    
</body>
</html>
