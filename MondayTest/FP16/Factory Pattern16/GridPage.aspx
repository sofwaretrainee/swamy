<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GridPage.aspx.cs" Inherits="Factory_Pattern16.GridPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

     <style>
        .Colum {
            margin-left:400px;
            margin-right:50px;
            margin-top:100px;
            margin-bottom:100px;

        }

        .Register {
            margin-left:650px;
             margin-right:50px;
            margin-top:200px;
        }

    </style>



</head>
<body>
    <form id="form1" runat="server">
   
         <div>
    

          <asp:LinkButton CssClass="Register" ID="lnkbtnreg" runat="server" OnClick="lnkbtnreg_Click">Register</asp:LinkButton>
        <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="Both" AutoGenerateColumns="false" CssClass="Colum" OnRowCommand="GridView1_RowCommand" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
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


                  <asp:TemplateField HeaderText="Student Name">
                        <ItemTemplate>
                            <asp:Label runat="server" ID="lblStudId" Text='<%# Eval("student_id") %>' Visible="false"></asp:Label>
                            <asp:Label runat="server" ID="lblStudName" Text='<%# Eval("student_name") %>'></asp:Label>
                        </ItemTemplate>

                        <EditItemTemplate>
                            <asp:TextBox runat="server" ID="txtStudName" Text='<%# Eval("student_name") %>' ></asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>

                 <asp:TemplateField HeaderText="Gender">
                        <ItemTemplate>
                            <asp:Label runat="server" ID="lblStudGender" Text='<%# Eval("student_gender") %>'></asp:Label>
                        </ItemTemplate>

                        <EditItemTemplate>
                             <asp:TextBox runat="server" ID="txtStudGender" Text='<%# Eval("student_gender") %>' ></asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>

                 <asp:TemplateField HeaderText="Phone">
                        <ItemTemplate>
                             <asp:Label runat="server" ID="lblStudPhone" Text='<%# Eval("student_phone") %>'></asp:Label>
                        </ItemTemplate>

                        <EditItemTemplate>
                             <asp:TextBox runat="server" ID="txtStudPhone" Text='<%# Eval("student_phone") %>' ></asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>

                 <asp:TemplateField HeaderText="Marks">
                        <ItemTemplate>
                             <asp:Label runat="server" ID="lblStudMarks" Text='<%# Eval("student_marks") %>'></asp:Label>
                        </ItemTemplate>

                        <EditItemTemplate>
                             <asp:TextBox runat="server" ID="txtStudMarks" Text='<%# Eval("student_marks") %>' ></asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>

                 <asp:TemplateField HeaderText="Address">
                        <ItemTemplate>
                             <asp:Label runat="server" ID="lblStudAddress" Text='<%# Eval("student_address") %>'></asp:Label>
                        </ItemTemplate>

                        <EditItemTemplate>
                             <asp:TextBox runat="server" ID="txtStudAddress" Text='<%# Eval("student_address") %>' ></asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>

                 <asp:TemplateField HeaderText="Alter">
                        <ItemTemplate>
                            <asp:LinkButton ID="Editbtn"  runat="server" CommandName="Edit">Edit</asp:LinkButton>
                           
                            <asp:LinkButton ID="Deletebtn" runat="server" CommandName="Delete">Delete</asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>


            </Columns>

        </asp:GridView>
    </div>




    
   
    </form>
</body>
</html>
