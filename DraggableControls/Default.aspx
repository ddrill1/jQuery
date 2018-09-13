<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="Scripts/jquery-1.12.4.js"></script>
    <script src="Scripts/jquery-ui-1.12.1.js"></script>
    <script>
        $(document).ready(function () {
            $("#dbDiv").draggable()
            $("#dbDiv").mouseenter(function () {
                $(this).css('cursor', 'grab')
            });
            $("#dbDiv").mousedown(function () {
                $(this).css('cursor', 'grabbing')
            });
            $("#dbDiv").mouseup(function () {
                $(this).css('cursor', 'grab')
            });
            $("#wDiv").draggable()
            $("#wDiv").mouseenter(function () {
                $(this).css('cursor', 'grab')
            });
            $("#wDiv").mousedown(function () {
                $(this).css('cursor', 'grabbing')
            });
            $("#wDiv").mouseup(function () {
                $(this).css('cursor', 'grab')
            });
        });
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div id="dbDiv">
                <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                    <ContentTemplate>
                        <asp:GridView ID="GridView1" runat="server" CssClass="grdStyle" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" PageSize="5">
                            <FooterStyle BackColor="White" ForeColor="#000066" />
                            <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" Font-Size="Medium" />
                            <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                            <RowStyle ForeColor="#000066" Font-Size="Small"/>
                            <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                            <SortedAscendingCellStyle BackColor="#F1F1F1" />
                            <SortedAscendingHeaderStyle BackColor="#007DBB" />
                            <SortedDescendingCellStyle BackColor="#CAC9C9" />
                            <SortedDescendingHeaderStyle BackColor="#00547E" />
                        </asp:GridView>
                    </ContentTemplate>
                </asp:UpdatePanel>
            </div>
            <div id="wDiv">
                <textarea id="TextArea1" cols="20" rows="2"></textarea>
            </div>
        </div>
    </form>
</body>
</html>
