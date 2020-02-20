<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="Extra3.WebForm2" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Student Information</title>
    <style>
        body {
            background-image: url("images/remove-background-featured-image.jpg" );
            background-repeat: no-repeat;
            background-size: cover;
        }



        .Container {
            width: 500px;
            height: 500px;
            border: 1px solid black;
            margin: 50px 50px 50px 500px;
            color: blue;
        }

        .ContainerUp1 {
            margin: 10px 50px 20px 120px;
        }

        .ContainerUp2 {
            margin: 0px 50px 20px 120px;
        }

        .Header {
            margin: 10px 50px 10px 650px;
            color: black;
        }

        .StudentName {
            margin-left: 25px;
        }

        .Marks {
            margin-left: 65px;
        }


        .TextMobileNumber {
            margin-left: 15px;
        }

        .TextAddress {
            margin-left: 50px;
        }

        .RadioButton {
            margin: 0px 0px 0px 100px;
        }

        .Add {
            margin-left: 30px;
        }

        .Update {
            margin-left: 40px;
        }

        .Clear {
            margin-left: 40px;
        }
    </style>
</head>
<body>
    <h1 class="Header">Student Information</h1>
    <form id="form1" runat="server">
            <div class="Container">

                <div class="ContainerUp1">
                    <asp:Label ID="lblStudentName" runat="server" Text="Student Name : "></asp:Label>
                    <asp:TextBox CssClass="StudentName" ID="txtStudentName" runat="server" Width="151px" MaxLength="30"></asp:TextBox>
                </div>

                <div class="ContainerUp2">
                    <asp:Label ID="lblGender" runat="server" Text="Gender : "></asp:Label>
                    <asp:RadioButtonList CssClass="RadioButton" ID="RadioButtonList1" runat="server">
                        <asp:ListItem Value="Male">Male</asp:ListItem>
                        <asp:ListItem Value="Femle">Female</asp:ListItem>
                    </asp:RadioButtonList>
                </div>

                <div class="ContainerUp2">
                    <asp:Label ID="lblMarks" runat="server" Text="Marks : "></asp:Label>
                    <asp:TextBox CssClass="Marks" ID="txtMarks" runat="server" Width="151px"></asp:TextBox>
                </div>

                <div class="ContainerUp2">
                    <asp:Label ID="lblPhoneNumber" runat="server" Text="PhoneNumber : "></asp:Label>
                    <asp:TextBox CssClass="TextMobileNumber" ID="txtPhoneNumber" runat="server" Width="151px" MaxLength="10"></asp:TextBox>
                </div>

                <div class="ContainerUp2">
                    <asp:Label ID="lblAddress" runat="server" Text="Address : "></asp:Label>
                    <asp:TextBox CssClass="TextAddress" ID="txtAddress" runat="server" Width="151px" TextMode="MultiLine">
                    </asp:TextBox>
                </div>

                <div class="ContainerUp2">
                    <asp:Button CssClass="Add" ID="ButtonAdd" runat="server" Text="Add" Width="61px" OnClick="Add_Click" />
                    <asp:Button CssClass="Update" ID="ButtonUpdate" runat="server" Text="Update" OnClick="Update_Click" />
                    <asp:Button CssClass="Clear" ID="ButtonCancel" runat="server" Text="Clear" Width="61px" OnClick="Cancel_Click" />
                </div>
        </div>
    </form>
</body>
</html>
