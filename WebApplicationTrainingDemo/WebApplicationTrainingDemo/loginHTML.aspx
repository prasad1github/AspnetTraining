<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="loginHTML.aspx.cs" Inherits="WebApplicationTrainingDemo.loginHTML" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title></title>   
    <script src="<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <script src="../Scripts/jquery-2.1.4.min.js"></script>
    <link href="css/StyleSheetHTMLFORMLoginForm.css" rel="stylesheet" />
 
</head>
<body>
    <form id="form1" runat="server">
        <div class="ClassLoginDivOuter1">
            <div class="ClassLoginDiv" align="center">
                <div class="ClassSignText">SignIn</div>
                <div>
                    <input type="text" id="txtUsername" placeholder="Username" class="ClassTextboxes" /><div id="rfvtxtUsername"></div>
                </div>
                <br />
                <div>
                    <input type="password" id="txtPassword" placeholder="Password" class="ClassTextboxes" /><div id="rfvtxtPassword"></div>
                </div>
                <br />
                <div>
                    <input type="button" id="btnLogin" value="Login" class="ClassButton" onclick="validateForm();"/>&nbsp;&nbsp;&nbsp;&nbsp;<input type="button" id="btnCancel" value="Clear" class="ClassButton" onclick="    clearControls();" />
                </div>
            </div>
        </div>
    </form>
    <script type="text/javascript">
        

        function validateForm() {
            var fname = document.getElementById("txtUsername").value;
            var password = document.getElementById("txtPassword").value;
            var getDiv;
            if (fname == "") {
                
                getDiv = document.getElementById("rfvtxtUsername");
                getDiv.innerHTML = "Please Provide Username";
                getDiv.style.color = "red";
                
            }
            else {
                getDiv = document.getElementById("rfvtxtUsername");
                getDiv.innerHTML = "";
            }
            if (password == "") {
                
                getDiv = document.getElementById("rfvtxtPassword");
                getDiv.innerHTML = "Please Provide Password";
                getDiv.style.color = "red";
                
            }
            else {
                getDiv = document.getElementById("rfvtxtPassword");
                getDiv.innerHTML = "";
            }
        }

        function clearControls() {
            document.getElementById("txtUsername").value = "";
            document.getElementById("txtPassword").value = "";
            document.getElementById("rfvtxtUsername").innerHTML = "";
            document.getElementById("rfvtxtPassword").innerHTML = "";
        }


        $(document).ready(function () {
            
        
            $("#btnLogin").click(function () {
                var lengthFname = $("#txtUsername").val().length;
                var lengthPassword = $("#txtPassword").val().length;
                if (lengthFname > 0 && lengthPassword > 0) {
                    var tblLogin = {};

                    tblLogin.username = $("#txtUsername").val();
                    tblLogin.password = $("#txtPassword").val();
                    $.ajax({
                        url: "myWebService.asmx/webServiceloginCheckByUsernamePassword",
                        datatype: "json",
                        type: "POST",
                        data: "{tblloginObj:" + JSON.stringify(tblLogin) + "}",
                        //data: "{'strusername':'" + $("#txtUsername").val() + "','strpassword':'" + $("#txtPassword").val() + "'}",
                        contentType: "application/json;charset=utf-8",
                        success: function (data) {
                            //var res = parseInt(data.d);
                            var res = data.d;
                            if (res > 0) { alert('Login Successfully....'); }
                            else { alert('Invalid Username or Password...'); }

                        },
                        error: function (err) { alert(err); }

                    });
                }
               
            });
        
        });
    </script>
</body>
</html>
