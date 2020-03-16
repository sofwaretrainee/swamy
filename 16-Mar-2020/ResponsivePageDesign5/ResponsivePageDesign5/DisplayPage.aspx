<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DisplayPage.aspx.cs" Inherits="ResponsivePageDesign5.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Responsive Page</title> 

  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <style>
        .container {
            width:1700px;
            height:1500px;
            border:1px solid black;
            margin-left:100px;
            margin-right:20px;
            margin-top:100px;
          }

           .containerUp {
            width:400px;
            height:350px;
            /*border:1px solid black;*/
            border-collapse:collapse;
            margin-left:100px;
            margin-top:50px;
            margin-right:40px;
            margin-bottom:50px;
            float:left;
        }
           .containerUpImage {
               margin-left:25px;
               margin-top:25px;

           }

           .containerup2 {
               margin-left:275px;
               margin-top:-210px;
           }
         
           .containerButton1 {
               padding-left:15px;
               padding-right:15px;

               margin-top:40px;
               margin-left:140px;
                background-color:gray;
                color: white;
                cursor: pointer;
              }

           .containerButton2 {
                background-color:gray;
                color: white;
                cursor: pointer;
           }

           .containerRegister {
               margin-top:40px;
               margin-left:780px;
              padding: 15px 32px;
              cursor: pointer;
               border-radius:20px;
               text-align: center;
                 background-color:green;
             border: none;
             color: white;
           }
           
           


@media screen and (max-width: 760px) {
    body { background-color: pink; }
}

  @media only screen and (min-device-width: 0px) and (max-device-width:360px) {
    body { background-color:lightblue; }

     /*.container {
                width:100%;
                height:100%;
              
            }
            .containerUp {
                width:40%;
                height:30%;
                margin-left:10px;
                margin-right:10px;

               
            }*/
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
            <img src="Images/kholi.png"   class="containerUpImage" height="220" width="220" />
        

            <div class="containerup2">
            <p>1001</p>
            <p> Virat Kholi </p> 
            <p> VK@gmail.com </p> 
            <p> Banglore </p> 
            <p> Karnataka </p> 
            <p> India </p>
          </div>
                
           <div> 
                <asp:Button ID="button1" runat="server" Text="Edit" class="containerButton1" OnClick="button1_Click" />
                <asp:Button ID="button2" runat="server" Text="Delete" class="containerButton2" OnClick="button2_Click"/>
               
           </div>

         </div>

        <div class="containerUp">

            <div>
         <img src="Images/images%20(17).jfif" class="containerUpImage" height="220" width="220" />

                 <div class="containerup2">
            <p>1002</p>
            <p> ABD </p> 
            <p> ABD@gmail.com </p> 
            <p> Banglore </p> 
            <p> Karnataka </p> 
            <p> India </p>
          </div>


            <div> 
               <asp:Button ID="button3" runat="server" Text="Edit" class="containerButton1" OnClick="button3_Click" />
                <asp:Button ID="button4" runat="server" Text="Delete" class="containerButton2" OnClick="button4_Click"/>
           </div>

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


            <div> 
               <asp:Button ID="button5" runat="server" Text="Edit" class="containerButton1" OnClick="button5_Click"/>
                <asp:Button ID="button6" runat="server" Text="Delete" class="containerButton2" OnClick="button6_Click"/>
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


            <div> 
               <asp:Button ID="button7" runat="server" Text="Edit" class="containerButton1" OnClick="button7_Click" />
                <asp:Button ID="button8" runat="server" Text="Delete" class="containerButton2" OnClick="button8_Click"/>
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


            <div> 
               <asp:Button ID="button9" runat="server" Text="Edit" class="containerButton1" OnClick="button9_Click" />
                <asp:Button ID="button10" runat="server" Text="Delete" class="containerButton2" OnClick="button10_Click"/>
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


            <div> 
               <asp:Button ID="button11" runat="server" Text="Edit" class="containerButton1" OnClick="button11_Click" />
                <asp:Button ID="button12" runat="server" Text="Delete" class="containerButton2" OnClick="button12_Click"/>
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


            <div> 
               <asp:Button ID="button13" runat="server" Text="Edit" class="containerButton1" OnClick="button13_Click" />
                <asp:Button ID="button14" runat="server" Text="Delete" class="containerButton2" OnClick="button14_Click"/>
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


            <div> 
               <asp:Button ID="button15" runat="server" Text="Edit" class="containerButton1" OnClick="button15_Click" />
                <asp:Button ID="button16" runat="server" Text="Delete" class="containerButton2" OnClick="button16_Click"/>
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


            <div> 
               <asp:Button ID="button17" runat="server" Text="Edit" class="containerButton1" OnClick="button17_Click1" />
                <asp:Button ID="button18" runat="server" Text="Delete" class="containerButton2" OnClick="button18_Click1"/>
           </div>

           </div>
       </div>

        <div>
            <asp:Button ID="button19" runat="server" Text="Register" CssClass="containerRegister" OnClick="button19_Click" />
        </div>

    </div>
          </form>
    
</body>
</html>
