<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GridPage.aspx.cs" Inherits="Factory_Pattern16.GridPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <style>

        body {
           background-image:url("Images/images%20(16).jfif");
           background-repeat:no-repeat;
           background-size:cover;

         
        }

       
         
       
        .Dropdownlist1 {
            margin-left:900px;
        }


        .Colum {
            margin-left: 400px;
            margin-right: 50px;
            margin-top: 100px;
            margin-bottom: 95px;
        }

        .Register {
            margin-left: 650px;
            margin-right: 50px;
            margin-top: 200px;
        }


    </style>



</head>
<body>
    <form id="form1" runat="server">
        <asp:DropDownList ID="DropDownList1" CssClass="Dropdownlist1" runat="server" Height="34px" style="margin-left: 405px" Width="103px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" AutoPostBack="true">
            <asp:ListItem>Select</asp:ListItem>
            <asp:ListItem Value="mysql">MySql</asp:ListItem>
            <asp:ListItem Value="sql">Sql</asp:ListItem>
        </asp:DropDownList>
        <div>
            <asp:LinkButton CssClass="Register" ID="lnkbtnreg" runat="server" OnClick="lnkbtnreg_Click">Register</asp:LinkButton>
            <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="Both" AutoGenerateColumns="false" CssClass="Colum" OnRowCommand="GridView1_RowCommand">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <EditRowStyle BackColor="#999999" />
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#E9E7E2" />
                <SortedAscendingHeaderStyle BackColor="#506C8C" />
                <SortedDescendingCellStyle BackColor="#FFFDF8" />
                <SortedDescendingHeaderStyle BackColor="#6F8DAE" />

                <Columns>
                    <asp:TemplateField HeaderText="FirstName">
                        <ItemTemplate>
                            <asp:Label runat="server" ID="lblStudId" Text='<%# Eval("student_id") %>' Visible="false"></asp:Label>
                            <asp:Label runat="server" ID="lblStudFirstName" Text='<%# Eval("studentFirst_Name") %>'></asp:Label>
                        </ItemTemplate>

                        <EditItemTemplate>
                            <asp:TextBox runat="server" ID="txtStudName" Text='<%# Eval("studentFirst_Name") %>'></asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>

                     <asp:TemplateField HeaderText="LastName">
                        <ItemTemplate>
                            
                       <asp:Label runat="server" ID="lblStudName" Text='<%# Eval("studentLast_Name") %>'></asp:Label>
                        </ItemTemplate>

                        <EditItemTemplate>
                            <asp:TextBox runat="server" ID="txtStudLastName" Text='<%# Eval("studentLast_Name") %>'></asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Email ID">
                        <ItemTemplate>
                            
                       <asp:Label runat="server" ID="lblStudEmail" Text='<%# Eval("studentEmail_Id") %>'></asp:Label>
                        </ItemTemplate>

                        <EditItemTemplate>
                            <asp:TextBox runat="server" ID="txtStudEmail" Text='<%# Eval("studentEmail_Id") %>'></asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>

                     <asp:TemplateField HeaderText="Password">
                        <ItemTemplate>
                            
                       <asp:Label runat="server" ID="lblStudPassword" Text='<%# Eval("studentPassword") %>'></asp:Label>
                        </ItemTemplate>

                        <EditItemTemplate>
                            <asp:TextBox runat="server" ID="txtStudPassword" Text='<%# Eval("studentPassword") %>'></asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>

                    
                     <asp:TemplateField HeaderText="Mobile Number">
                        <ItemTemplate>
                            
                       <asp:Label runat="server" ID="lblStudMobile" Text='<%# Eval("studentMobile_Number") %>'></asp:Label>
                        </ItemTemplate>

                        <EditItemTemplate>
                            <asp:TextBox runat="server" ID="txtStudMobile" Text='<%# Eval("studentMobile_Number") %>'></asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>

                    
                     <asp:TemplateField HeaderText="Gender">
                        <ItemTemplate>
                            
                       <asp:Label runat="server" ID="lblStudGender" Text='<%# Eval("student_Gender") %>'></asp:Label>
                        </ItemTemplate>

                        <EditItemTemplate>
                            <asp:TextBox runat="server" ID="txtStudGender" Text='<%# Eval("student_Gender") %>'></asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>

                     <asp:TemplateField HeaderText="Date Of Birth">
                        <ItemTemplate>
                            
                       <asp:Label runat="server" ID="lblStudDOB" Text='<%# Eval("student_DOB") %>'></asp:Label>
                        </ItemTemplate>

                        <EditItemTemplate>
                            <asp:TextBox runat="server" ID="txtStudDOB" Text='<%# Eval("student_DOB") %>'></asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>

                      <asp:TemplateField HeaderText="Address">
                        <ItemTemplate>
                            
                       <asp:Label runat="server" ID="lblStudAddress" Text='<%# Eval("student_Address") %>'></asp:Label>
                        </ItemTemplate>

                        <EditItemTemplate>
                            <asp:TextBox runat="server" ID="txtStudAddress" Text='<%# Eval("student_Address") %>'></asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>

                    
                      <asp:TemplateField HeaderText="City">
                        <ItemTemplate>
                            
                       <asp:Label runat="server" ID="lblStudCity" Text='<%# Eval("student_City") %>'></asp:Label>
                        </ItemTemplate>

                        <EditItemTemplate>
                            <asp:TextBox runat="server" ID="txtStudCity" Text='<%# Eval("student_City") %>'></asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>

                      <asp:TemplateField HeaderText="State">
                        <ItemTemplate>
                            
                       <asp:Label runat="server" ID="lblStudState" Text='<%# Eval("student_State") %>'></asp:Label>
                        </ItemTemplate>

                        <EditItemTemplate>
                            <asp:TextBox runat="server" ID="txtStudState" Text='<%# Eval("student_State") %>'></asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>

                      <asp:TemplateField HeaderText="Country">
                        <ItemTemplate>
                            
                       <asp:Label runat="server" ID="lblStudCountry" Text='<%# Eval("student_Country") %>'></asp:Label>
                        </ItemTemplate>

                        <EditItemTemplate>
                            <asp:TextBox runat="server" ID="txtStudCountry" Text='<%# Eval("student_Country") %>'></asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>

                   

                    <asp:TemplateField HeaderText="Alter">
                        <ItemTemplate>
                            <asp:LinkButton ID="Editbtn" runat="server" CommandName="Edit">Edit</asp:LinkButton>

                            <asp:LinkButton ID="Deletebtn" runat="server" CommandName="Delete">Delete</asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>


                </Columns>

            </asp:GridView>
        </div>


    </form>
</body>
</html>
