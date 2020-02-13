<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Extra.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        body {
            background-image:url("images/form-background.jpg");
            background-repeat:no-repeat;
           
            
        }

        table {
            margin:20px 50px 10px 500px;
            width:500px;
            height:400px;
            color:white;
            border:1px solid black;
 }
        .tableData {
            width:200px;
            text-align:center;
        }

        

    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <table>
        <tr>
            <td class="tableData">EmpID</td>
            <td>
            <asp:TextBox  ID="txtEmpID" runat="server"></asp:TextBox>
                </td>
        </tr>

        <tr>
            <td class="tableData">FirstName</td>
            <td>
            <asp:TextBox ID="txtFirstName" runat="server"></asp:TextBox>
                </td>
        </tr>

         <tr>
            <td class="tableData">LastName</td>
            <td>
            <asp:TextBox ID="txtLastName" runat="server"></asp:TextBox>
                </td>
        </tr>

         <tr>
            <td class="tableData">Email</td>
            <td>
            <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                </td>
        </tr>

         <tr>
            <td class="tableData">DateOfBirth</td>
            <td>
            <asp:TextBox ID="txtDateOfBirth" runat="server"></asp:TextBox>
                </td>
        </tr>
         <tr>
            <td class="tableData">MobileNumber</td>
            <td>
            <asp:TextBox ID="txtMobileNumber" runat="server"></asp:TextBox>
                </td>
        </tr>

         <tr>
            <td class="tableData">Address</td>
            <td>
            <asp:TextBox ID="txtAddress" runat="server" TextMode="MultiLine"></asp:TextBox>
                </td>
        </tr>

        <tr>
            <td>
                <asp:Button ID="Button1" runat="server" Text="Add" style="margin-left:20px; width:50px;" OnClick="Button1_Click"/>
            </td>

            <td>
                <asp:Button ID="Button2" runat="server" Text="Update" style="margin-left:40px; width:60px; height: 26px;" OnClick="Button2_Click"/>
            </td>

            <td>
                <asp:Button ID="Button3" runat="server" Text="Clear" style="margin-right:40px; width:60px;" OnClick="Button3_Click"/>
            </td>

            <td> 
                <asp:Button ID="Button4" runat="server" Text="Delete" style="margin-right:20px; width:60px;" OnClick="Button4_Click" />
            </td>


        </tr>




    </table>
    </div>
    </form>
</body>
</html>
