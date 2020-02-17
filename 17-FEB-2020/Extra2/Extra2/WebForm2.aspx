<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="Extra2.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <style>
        .ForColums {
            margin: 50px 50px 50px 350px;
        }
    </style>
    
</head>
<body>
    <form id="form1" runat="server">
    <div class="ForColums">
        <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="Vertical" AutoGenerateColumns="false" OnRowCommand="GridView1_RowCommand">
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

           <%-- <Columns>
                
                <asp:BoundField DataField="EmpID" HeaderText="EmpID"/>
                <asp:BoundField DataField="FirstName" HeaderText="FirstName" />
                <asp:BoundField DataField="LastName" HeaderText="LastName" />
                <asp:BoundField DataField="Email" HeaderText="Email" />
                <asp:BoundField DataField="Password" HeaderText="Password" />
                <asp:BoundField DataField="Gender" HeaderText="Gender" />
                <asp:BoundField DataField="DateOfBirth" HeaderText="DateOfBirth" />
                <asp:BoundField DataField="MobileNumber" HeaderText="MobileNumber" />
                <asp:BoundField DataField="Address" HeaderText="Address" />

                <asp:TemplateField>
                   
                   <ItemTemplate>
                       
                       <asp:Button ID="Button1" runat="server" Text="Edit" Width="60" CommandName="EditButton" CommandArgument="<%# ((GridViewRow) Container).RowIndex %>" />
                       <asp:Button ID="Button2" runat="server" Text="Delete" Width="60" CommandName="DeleteButton" CommandArgument="<%# ((GridViewRow) Container).RowIndex %>" /> 
                   </ItemTemplate>
                 </asp:TemplateField>

              </Columns>--%>

            <Columns>

                   <asp:TemplateField HeaderText="Student Name">
                       <ItemTemplate>
                           <asp:Label ID="lblStudentId" runat="server" Text='<%# Eval("student_id") %>' Visible="false"></asp:Label>
                           <asp:Label ID="lblStudentName" runat="server" Text='<%# Eval("student_name") %>'></asp:Label>
                       </ItemTemplate>
                       <EditItemTemplate>
                           <asp:TextBox runat="server" ID="txtStudentName" Text='<%# Eval("student_name") %>'></asp:TextBox>
                       </EditItemTemplate>
                   </asp:TemplateField>

                   <asp:TemplateField HeaderText="Gender">
                       <ItemTemplate>
                           <asp:Label ID="lblStudGender" runat="server" Text='<%# Eval("student_gender")%>'></asp:Label>
                       </ItemTemplate>
                       <EditItemTemplate>
                           <asp:TextBox ID="txtStudGender" runat="server" Text='<%# Eval("student_gender")%>'></asp:TextBox>
                       </EditItemTemplate>
                   </asp:TemplateField>

                   <asp:TemplateField HeaderText="Marks">
                       <ItemTemplate>
                           <asp:Label ID="lblStudentMarks" runat="server" Text='<%# Eval("student_marks") %>'></asp:Label>
                       </ItemTemplate>
                       <EditItemTemplate>
                           <asp:TextBox runat="server" ID="txtStudentMarks" Text='<%# Eval("student_marks") %>'></asp:TextBox>
                       </EditItemTemplate>
                   </asp:TemplateField>

                   <asp:TemplateField HeaderText="Phone">
                       <ItemTemplate>
                           <asp:Label ID="lblStudentPhone" runat="server" Text='<%# Eval("student_phonenumber") %>'></asp:Label>
                       </ItemTemplate>
                       <EditItemTemplate>
                           <asp:TextBox runat="server" ID="txtStudentPhone" Text='<%# Eval("student_phonenumber") %>'></asp:TextBox>
                       </EditItemTemplate>
                   </asp:TemplateField>

                   <asp:TemplateField HeaderText="Address">
                       <ItemTemplate>
                           <asp:Label ID="lblStudentAddress" runat="server" Text='<%# Eval("student_address") %>'></asp:Label>
                       </ItemTemplate>
                       <EditItemTemplate>
                           <asp:TextBox runat="server" ID="txtStudentAddress" Text='<%# Eval("student_address") %>'></asp:TextBox>
                       </EditItemTemplate>
                   </asp:TemplateField>

                   <asp:TemplateField HeaderText="Alter">
                       <ItemTemplate>
                           <asp:LinkButton runat="server" Text="Edit" ID="lnkbtnEdit" CommandName="Update"></asp:LinkButton>
                           <asp:LinkButton runat="server" Text="Delete" ID="lnkbtnDelete" CommandName="Delete"></asp:LinkButton>
                       </ItemTemplate>

                   </asp:TemplateField>

               </Columns>


















      </asp:GridView>   


    </div>
    </form>
</body>
</html>













       
                











            














      
    





