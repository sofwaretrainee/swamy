<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Extra4.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:HiddenField ID="hfProductID" runat="server" />
            <table>
                <tr>
                    <td>
                        <asp:Label ID="Label1" runat="server" Text="Product : "></asp:Label>
                    </td>

                    <td colspan="2">
                        <asp:TextBox ID="txtProduct" runat="server"></asp:TextBox>
                    </td>

                </tr>

                <tr>
                    <td>
                        <asp:Label ID="Label2" runat="server" Text="Price : "></asp:Label>
                    </td>

                    <td colspan="2">
                        <asp:TextBox ID="txtPrice" runat="server"></asp:TextBox>
                    </td>

                </tr>

                <tr>
                    <td>
                        <asp:Label ID="Label3" runat="server" Text="Count : "></asp:Label>
                    </td>

                    <td colspan="2">
                        <asp:TextBox ID="txtCount" runat="server"></asp:TextBox>
                    </td>

                </tr>

                <tr>
                    <td>
                        <asp:Label ID="Label4" runat="server" Text="Description : "></asp:Label>
                    </td>

                    <td colspan="2">
                        <asp:TextBox ID="txtDescription" runat="server"></asp:TextBox>
                    </td>

                </tr>

                <tr>
                    <td></td>
                    <td colspan="2">
                        <asp:Button ID="btnSave" runat="server" Text="Save" OnClick="btnSave_Click" />
                        <asp:Button ID="btnDelete" runat="server" Text="Delete" OnClick="btnDelete_Click" />
                        <asp:Button ID="btnClear" runat="server" Text="Clear" OnClick="btnClear_Click" />
                    </td>
                </tr>

                <tr>
                    <td colspan="2">
                        <asp:Label ID="lblSuccessMessage" runat="server" Text="" ForeColor="Green"></asp:Label>
                    </td>
                </tr>

                <tr>
                    <td colspan="2">
                        <asp:Label ID="lblErrorMessage" runat="server" Text="" ForeColor="Red"></asp:Label>
                    </td>
                </tr>

            </table>
            <br />

         <%--   <asp:GridView ID="gvProduct" runat="server" AutoGenerateColumns="false" OnSelectedIndexChanged="gvProduct_SelectedIndexChanged">
                <Columns>
                    <asp:BoundField DataField="product" HeaderText="Product" />
                    <asp:BoundField DataField="price" HeaderText="Price" />
                    <asp:BoundField DataField="count" HeaderText="Count" />

                    <asp:TemplateField>
                        <ItemTemplate>
                            <asp:LinkButton ID="lnkSelect" runat="server" OnClick="lnkSelect_Click" CommandArgument='<%# Eval("ProductID") %>'>Select</asp:LinkButton>
                        </ItemTemplate>

                    </asp:TemplateField>
                </Columns>
            </asp:GridView>--%>

        </div>
    </form>
</body>
</html>
