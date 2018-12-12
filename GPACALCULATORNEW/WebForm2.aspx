<%@ Page Language="C#" EnableEventValidation="true" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="GPACALCULATORNEW.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
    <script type="text/javascript">
        function MyFunction() {
            var bool = true;
            $(".vName").each(function (index) {
                if ($(this).val().length <= 0) {
                    $(this).css('border-color', 'red');
                    bool = false;
                }
                else {
                    $(this).css('border-color', null);
                }
            });
            return bool;
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:ScriptManager ID="ScriptManager1" runat="server" EnablePageMethods="true">
            </asp:ScriptManager>
            <asp:Button runat="server" Text="Clear" />
            <asp:Button runat="server" Text="Calculate" OnClick="Calculate" OnClientClick="return MyFunction();" />

            <asp:UpdatePanel ID="UpdatePanel2" runat="server" UpdateMode="Conditional">
                <ContentTemplate>
                    <asp:CustomValidator
                        ID="CustomValidator1"
                        runat="server" ControlToValidate=""
                        ValidationGroup="Name"
                        ErrorMessage="Username already exists"
                        Text=""
                        OnServerValidate="Calculate"
                        ClientValidationFunction="TextBoxValidate"
                        ValidateEmptyText="True">
                    </asp:CustomValidator>
                    <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />
                    <asp:Button runat="server" Text="Add Class" OnClick="Btn_Click" />
                    <asp:Table ID="mainTable" runat="server">
                        <asp:TableHeaderRow ID="headerRow">
                            <asp:TableHeaderCell>Course Code</asp:TableHeaderCell>
                            <asp:TableHeaderCell>Course Name</asp:TableHeaderCell>
                            <asp:TableHeaderCell>Course Hours</asp:TableHeaderCell>
                            <asp:TableHeaderCell>Course Grade</asp:TableHeaderCell>
                            <asp:TableHeaderCell>X</asp:TableHeaderCell>
                        </asp:TableHeaderRow>
                        <asp:TableRow Visible="true">
                            <asp:TableCell>
                                <asp:TextBox ID="textBox1" CssClass="vName" Text="wdaw" runat="server" MaxLength="15"></asp:TextBox>
                            </asp:TableCell>
                            <asp:TableCell><asp:TextBox ValidationGroup="Name" runat="server" MaxLength="15"></asp:TextBox></asp:TableCell>
                            <asp:TableCell><asp:TextBox ValidationGroup="Name" runat="server"></asp:TextBox></asp:TableCell>
                            <asp:TableCell><asp:TextBox runat="server"></asp:TextBox></asp:TableCell>
                            <asp:TableCell><asp:Button runat="server" OnClick="Unnamed_Click"/></asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow Visible="true">
                            <asp:TableCell>
                                <asp:TextBox CssClass="vName" Text="" runat="server" MaxLength="15"></asp:TextBox>
                            </asp:TableCell>
                            <asp:TableCell><asp:TextBox ValidationGroup="Name" runat="server" MaxLength="15"></asp:TextBox></asp:TableCell>
                            <asp:TableCell><asp:TextBox ValidationGroup="Name" runat="server"></asp:TextBox></asp:TableCell>
                            <asp:TableCell><asp:TextBox runat="server"></asp:TextBox></asp:TableCell>
                            <asp:TableCell><asp:Button runat="server" OnClick="Unnamed_Click"/></asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow Visible="true">
                            <asp:TableCell>
                                <asp:TextBox CssClass="vName" Text="" runat="server" MaxLength="15"></asp:TextBox>
                            </asp:TableCell>
                            <asp:TableCell><asp:TextBox ValidationGroup="Name" runat="server" MaxLength="15"></asp:TextBox></asp:TableCell>
                            <asp:TableCell><asp:TextBox ValidationGroup="Name" runat="server"></asp:TextBox></asp:TableCell>
                            <asp:TableCell><asp:TextBox runat="server"></asp:TextBox></asp:TableCell>
                            <asp:TableCell><asp:Button runat="server" OnClick="Unnamed_Click"/></asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow Visible="true">
                            <asp:TableCell>
                                <asp:TextBox CssClass="vName" Text="" runat="server" MaxLength="15"></asp:TextBox>
                            </asp:TableCell>
                            <asp:TableCell><asp:TextBox ValidationGroup="Name" runat="server" MaxLength="15"></asp:TextBox></asp:TableCell>
                            <asp:TableCell><asp:TextBox ValidationGroup="Name" runat="server"></asp:TextBox></asp:TableCell>
                            <asp:TableCell><asp:TextBox runat="server"></asp:TextBox></asp:TableCell>
                            <asp:TableCell><asp:Button runat="server" OnClick="Unnamed_Click"/></asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow Visible="true">
                            <asp:TableCell>
                                <asp:TextBox CssClass="vName" Text="" runat="server" MaxLength="15"></asp:TextBox>
                            </asp:TableCell>
                            <asp:TableCell><asp:TextBox ValidationGroup="Name" runat="server" MaxLength="15"></asp:TextBox></asp:TableCell>
                            <asp:TableCell><asp:TextBox ValidationGroup="Name" runat="server"></asp:TextBox></asp:TableCell>
                            <asp:TableCell><asp:TextBox runat="server"></asp:TextBox></asp:TableCell>
                            <asp:TableCell><asp:Button runat="server" OnClick="Unnamed_Click"/></asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow Visible="true">
                            <asp:TableCell>
                                <asp:TextBox CssClass="vName" Text="" runat="server" MaxLength="15"></asp:TextBox>
                            </asp:TableCell>
                            <asp:TableCell><asp:TextBox ValidationGroup="Name" runat="server" MaxLength="15"></asp:TextBox></asp:TableCell>
                            <asp:TableCell><asp:TextBox ValidationGroup="Name" runat="server"></asp:TextBox></asp:TableCell>
                            <asp:TableCell><asp:TextBox runat="server"></asp:TextBox></asp:TableCell>
                            <asp:TableCell><asp:Button runat="server" OnClick="Unnamed_Click"/></asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow Visible="true">
                            <asp:TableCell>
                                <asp:TextBox CssClass="vName" Text="" runat="server" MaxLength="15"></asp:TextBox>
                            </asp:TableCell>
                            <asp:TableCell><asp:TextBox ValidationGroup="Name" runat="server" MaxLength="15"></asp:TextBox></asp:TableCell>
                            <asp:TableCell><asp:TextBox ValidationGroup="Name" runat="server"></asp:TextBox></asp:TableCell>
                            <asp:TableCell><asp:TextBox runat="server"></asp:TextBox></asp:TableCell>
                            <asp:TableCell><asp:Button runat="server" OnClick="Unnamed_Click"/></asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow Visible="true">
                            <asp:TableCell>
                                <asp:TextBox CssClass="vName" Text="" runat="server" MaxLength="15"></asp:TextBox>
                            </asp:TableCell>
                            <asp:TableCell><asp:TextBox ValidationGroup="Name" runat="server" MaxLength="15"></asp:TextBox></asp:TableCell>
                            <asp:TableCell><asp:TextBox ValidationGroup="Name" runat="server"></asp:TextBox></asp:TableCell>
                            <asp:TableCell><asp:TextBox runat="server"></asp:TextBox></asp:TableCell>
                            <asp:TableCell><asp:Button runat="server" OnClick="Unnamed_Click"/></asp:TableCell>
                        </asp:TableRow>
                    </asp:Table>
                </ContentTemplate>
            </asp:UpdatePanel>
        </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CoursesConnectionString %>" SelectCommand="SELECT [Course Code],[Course Name],[Course Hours],[Course Grade] FROM [computerProgrammerView] ORDER BY [Semester]"></asp:SqlDataSource>
    </form>
</body>
</html>
