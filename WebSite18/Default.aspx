<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="Scripts/jquery-3.3.1.js"></script>
    <link href="StyleSheet.css" rel="stylesheet" />
    <script type="text/javascript">
        $(document).ready(function () {
            $("#butFadeOut").click(function () {
                $("#pnlJ").fadeOut(5000).css("background-color", "blue")
            });
             $("#butFadeIn").click(function () {
                $("#pnlJ").fadeIn(5000).css("background-color", "green")
            });
        });
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <input id="butFadeOut" type="button" value="Fade Out" />
            <input id="butFadeIn" type="button" value="Fade In" />
            <asp:Panel ID="pnlJ" runat="server" CssClass="pnlJ">
                <asp:Calendar ID="Calendar1" runat="server"></asp:Calendar>
            </asp:Panel>
        </div>
    </form>
</body>
</html>
