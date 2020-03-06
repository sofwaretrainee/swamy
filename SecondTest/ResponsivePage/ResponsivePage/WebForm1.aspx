<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="ResponsivePage.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Responsive Page</title>

    <meta name="viewport" content="width=device-width, initial-scale=1.0" />

    <style>
        * {
            box-sizing: border-box;
        }

        .header {
            border: 1px solid red;
            padding: 15px;
            background-color:purple;
            color:white;
        }

        .row::after {
  content: "";
  clear: both;
  display: table;
}

        [class*="col-"] {
  float: left;
  padding: 15px;
  border: 1px solid red;
}
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

@media only screen and (max-width: 768px) {
  /* For mobile phones: */
  [class*="col-"] {
    width: 100%;
  }
}

        .menu {
  width: 25%;
  float: left;
  padding: 15px;
  border: 1px solid red;
  list-style-type:none;
  background-color:lightblue;
  color:white;
}

        .main {
  width: 75%;
  float: left;
  padding: 15px;
  border: 1px solid red;
 
}


    </style>




</head>
<body>
    <form id="form1" runat="server">
       

            <div class="header">
                <h1> INDIA </h1>
            </div>

        <div class="row">

            <div class="col-3 menu">
                <ul>
                  <li>The Flight</li>
                  <li>The City</li>
                  <li>The Island</li>
                 <li>The Food</li>
               </ul>
            </div>

            <div class="col-9">
                <h1>The City</h1>
  <p>Delhi is the capital of the Chania region on the island of Crete. The city can be divided in two parts, the old town and the modern city.</p>
  <p>Resize the browser window to see how the content respond to the resizing.</p>
            </div>

       </div>
    </form>
</body>
</html>
