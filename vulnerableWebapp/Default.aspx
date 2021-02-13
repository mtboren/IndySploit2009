<%@ Page Language="C#" AutoEventWireup="true" ValidateRequest="false" CodeFile="Default.aspx.cs" Inherits="_Default" %>
<%--the ValidateRequest="true" in the page directive will check for <script> and other potentially dangerous inputs--%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
<TITLE>Supa dupa Web App auth</TITLE>
<LINK REL="stylesheet" TYPE="text/css" HREF="dStyle.css" />
</head>
<body>
<form id="form1" runat="server">
<div>

<h1>Login Page</h1>
<asp:Label ID="lblErrorMessage" Font-Size="Larger" ForeColor="red" Visible="false" runat="server" />

<asp:Panel ID="pnlLogin" Visible="true" runat="server">
<asp:Table ID="tblLogin" runat="server">
<asp:TableRow>
<asp:TableCell>
<asp:Literal Text="Login:" runat="server" />
</asp:TableCell>
<asp:TableCell>
<asp:TextBox ID="txtLogin" width="200" runat="server" />
</asp:TableCell>
</asp:TableRow>
<asp:TableRow>
<asp:TableCell>
<asp:Literal ID="ltrlPassword" Text="Password:" runat="server" />
</asp:TableCell>
<asp:TableCell>
<asp:TextBox ID="txtPassword" width="200" TextMode="password" runat="server" />
</asp:TableCell>
</asp:TableRow>
<asp:TableRow>
<asp:TableCell ColumnSpan="2" HorizontalAlign="center">
<asp:Button ID="btnSubmit" Text="Sekurr Login" OnClick="btnSubmit_Clicked" runat="server" />
<br /></asp:TableCell>
</asp:TableRow>
</asp:Table>
<IMG ID="softshoe" ALT='Please dont hack this site :-(' SRC="softshoe-DontHack.jpg" />
<!--<h5>Please dont hack this site :-(</h5>-->
</asp:Panel>
<asp:Panel ID="pnlChatterBox" Visible="false" runat="server">
You haz logged in! :-)
</asp:Panel>

</div>
</form>
</body>
</html>