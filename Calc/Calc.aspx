<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Calc.aspx.cs" Inherits="Calc" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="StyleSheet.css" rel="stylesheet" />
    <script src="Scripts/jquery-3.3.1.js"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            $("#Label1").mouseenter(function () {
                $("#calcdiv").slideDown(500)
            });
            $("#Label2").mouseenter(function () {
                $("#calcdiv").slideUp(500)
            });
        });
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" CssClass="Labels" Text="ShowCalc"></asp:Label><asp:Label ID="Label2" runat="server" CssClass="Labels" Text="HideCalc"></asp:Label>
            <hr />
            <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
            <div id="calcdiv">
                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                    <ContentTemplate>
                        <asp:RadioButtonList ID="RadioButtonList1" runat="server" AutoPostBack="True">
                            <asp:ListItem>Add</asp:ListItem>
                            <asp:ListItem>Subtract</asp:ListItem>
                        </asp:RadioButtonList>
                        <hr />
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox><asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                        <hr />
                        <asp:Label ID="lblResult" runat="server" Text=""></asp:Label>
                    </ContentTemplate>
                </asp:UpdatePanel>
            </div>
        </div>
    </form>
</body>
</html>
