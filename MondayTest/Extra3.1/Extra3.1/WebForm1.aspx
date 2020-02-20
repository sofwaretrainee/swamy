<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Extra3._1.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="height: 243px">
    <form id="form1" runat="server">
    <div>
    
        <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="Both" AutoGenerateColumns="false" Height="216px" Width="649px">
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
                        <asp:Label ID="lblStudentName" runat="server" Text='<%#Eval("") %>'></asp:Label>
                    </ItemTemplate>

                    <EditItemTemplate>
                        <asp:TextBox ID="txtStudentName" runat="server"></asp:TextBox>
                    </EditItemTemplate>

                     </asp:TemplateField>

                 <asp:TemplateField HeaderText="Gender">

                    <ItemTemplate>
                        <asp:Label ID="lblGender" runat="server" Text=></asp:Label>
                    </ItemTemplate>

                    <EditItemTemplate>
                        <asp:TextBox ID="txtGender" runat="server"></asp:TextBox>
                    </EditItemTemplate>

                     </asp:TemplateField>

                 <asp:TemplateField HeaderText="Marks">

                    <ItemTemplate>
                        <asp:Label ID="lblMarks" runat="server" Text=></asp:Label>
                    </ItemTemplate>

                    <EditItemTemplate>
                        <asp:TextBox ID="txtMarks" runat="server"></asp:TextBox>
                    </EditItemTemplate>

                     </asp:TemplateField>

                 <asp:TemplateField HeaderText="Phone Number">

                    <ItemTemplate>
                        <asp:Label ID="lblPhoneNumber" runat="server" Text=></asp:Label>
                    </ItemTemplate>

                    <EditItemTemplate>
                        <asp:TextBox ID="txtPhoneNumber" runat="server"></asp:TextBox>
                    </EditItemTemplate>

                     </asp:TemplateField>

                 <asp:TemplateField HeaderText="Address">

                    <ItemTemplate>
                        <asp:Label ID="lblAddress" runat="server" Text=></asp:Label>
                    </ItemTemplate>

                    <EditItemTemplate>
                        <asp:TextBox ID="txtAddress" runat="server"></asp:TextBox>
                    </EditItemTemplate>

                     </asp:TemplateField>

                <asp:TemplateField HeaderText="Option">

                    <ItemTemplate>
                        <asp:LinkButton ID="btnEdit" runat="server">Edit</asp:LinkButton>
                        <asp:LinkButton ID="btDelete" runat="server">Delete</asp:LinkButton>
                    </ItemTemplate>
                    
                </asp:TemplateField>

          </Columns>
        </asp:GridView>
    </div>
    </form>
</body>
</html>













               


          



           