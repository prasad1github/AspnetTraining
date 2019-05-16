<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebFormLogin.aspx.cs" Inherits="WebApplicationTrainingDemo.WebFormLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<meta name="viewport" content="width=device-width, initial-scale=1">
<head runat="server">
    <title></title>
    <link href="css/StyleSheetLoginForm.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">

        <div class="ClassLoginDiv" align="center">
            <div class="ClassSignText">SignIn</div>
            <div>
                <asp:TextBox ID="txtUsername" CssClass="ClassTextboxes" runat="server" placeholder="Username"></asp:TextBox>
               <div><asp:RequiredFieldValidator ID="rfvtxtUsername" runat="server" ErrorMessage="Please Provide Username" ControlToValidate="txtUsername" Display="Dynamic" ForeColor="#DC493D"></asp:RequiredFieldValidator></div> 
            </div>
            <br />
            <div>
                <asp:TextBox ID="txtPassword" CssClass="ClassTextboxes" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>
               <div> <asp:RequiredFieldValidator ID="rfvtxtPassword" runat="server" ErrorMessage="Please Provide Password" ControlToValidate="txtPassword" Display="Dynamic" ForeColor="#DC493D"></asp:RequiredFieldValidator></div>
            </div>
            <br />
            <div>
                <asp:Button CssClass="ClassButton" ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" />&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="btnCancel" CssClass="ClassButton" runat="server" Text="Clear" CausesValidation="False" OnClick="btnCancel_Click" />
            </div>
        </div>

    </form>
</body>
</html>
