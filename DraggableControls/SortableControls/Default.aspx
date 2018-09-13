<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="Scripts/jquery-3.3.1.js"></script>
    <script src="Scripts/jquery-ui-1.12.1.js"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            $("#id").draggable()
            $("#BulletedList1").sortable()
            $("#BulletedList1").draggable()
            $("#BulletedList1, li").css("border", "1px solid red").css("border-radius", "5px").css("padding", "5px").css("width", "110px")
            $("li").css("width", "100px")
        });
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div id="list">
                Drag Me
                <asp:BulletedList ID="BulletedList1" runat="server" DataTextField="PART_NO" DataValueField="PART_NO"></asp:BulletedList>
            </div>
        </div>
    </form>
</body>
</html>
