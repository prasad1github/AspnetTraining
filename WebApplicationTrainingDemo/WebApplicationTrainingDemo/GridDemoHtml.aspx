<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GridDemoHtml.aspx.cs" Inherits="WebApplicationTrainingDemo.GridDemoHtml" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>

    <script src="Scripts/jquery-2.1.4.min.js"></script>

    <script src="//cdn.datatables.net/1.10.10/css/jquery.dataTables.min.css"></script>
    <script src="//cdn.datatables.net/1.10.10/js/jquery.dataTables.min.js"></script>

    <link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
    <script src="//code.jquery.com/jquery-1.10.2.js"></script>
    <script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
    <link href="css/StyleSheetLoginForm.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">

        <%--Popup Template--%>


        <div id="divTable" style="display:none;">
            <table align="center">
                <tr>
                    <td>Firstname</td>
                    <td>
                        <input id="txtFirstname" type="text" placeholder="Firstname" /><div id="divFirstname"></div></td>

                </tr>
                <tr>
                    <td>Middlename</td>
                    <td>
                        <input id="txtMiddlename" type="text" placeholder="Middlename" /><div></div></td>
                </tr>
                <tr>
                    <td>Lastname</td>
                    <td>
                        <input id="txtLastname" type="text" placeholder="Lastname" /><div></div></td>
                </tr>
                <tr>
                    <td>Gender</td>
                    <td>
                        <select id="ddlGender">
                            <option>Male</option>
                            <option>Female</option>
                        </select></td>
                </tr>
                <tr>
                    <td>Contactno</td>
                    <td>
                        <input id="txtcontactno" type="text" placeholder="Contactno" /><div></div></td>
                </tr>
                <tr>
                    <td>City</td>
                    <td>
                        <input id="txtCity" type="text" placeholder="City" /><div></div></td>
                </tr>
                <tr>
                    <td>Emp Description</td>
                    <td>
                        <input id="txtempdesc" type="text" placeholder="Description" /><div></div></td>
                </tr>
                <tr>
                    <td>Email</td>
                    <td>
                        <input id="txtEmail" type="email" placeholder="Email" /><div></div></td>
                </tr>
                <tr>
                    <td>Password</td>
                    <td>
                        <input id="txtPassword" type="password" placeholder="Password" /><div></div></td>
                </tr>
                <tr>
                    <td>Confirm Password</td>
                    <td>
                        <input id="txtConfirmpassword" type="password" placeholder="Confirm Password" /><div></div></td>
                </tr>
                <tr>
                    <td>Company</td>
                    <td>
                        <select id="ddlCompany">
                        </select></td>

                </tr>
                <tr>
                    <td>
                      
                        <label for="" id="lblempId"></label></td>
                       
                </tr>
            </table>
        </div>

        
        
        <div align="center" >
            <input id="btnAddEmployer" type="button" value="Add New Employer" onclick="addEmpp();" class="ClassButton" style="width:200px;height:30px"/>
        </div>

        <div id="divtable">

            <table id="tableId"  align="center" class="classtabledesign">
                <thead >
                    <tr>
                        <th>Firstname</th>
                        <th>Middlename</th>
                        <th>Lastname</th>
                        <th>Gender</th>
                        <th>Contact Number</th>
                        <th>City</th>
                        <th>Description</th>
                        <th>Email</th>
                        <th>Password</th>
                        <th>Company</th>
                        <th>Website</th>
                        <th>Description</th>
                        <th>Email</th>
                        <th>Contact Number</th>

                    </tr>
                </thead>
                <tbody>
                </tbody>
            </table>
        </div>

        <div id="data"></div>
        <script>

            //Dom load GET Data
            $(document).ready(function () {
               
                GetData();
            });

            function GetData() {
                $("#tableId").empty();
                $.ajax({
                    url: "myWebService.asmx/webServiceGetEmployerData",
                    datatype: "json",
                    type: "POST",
                    contentType: "application/json;charset=utf-8",
                    success: function (data) {
                        var empdata = JSON.parse(data.d);
                        //alert(empdata[1].empId);
                        //$("#tableId").DataTable({
                        //    data: empdata,
                        //    "columns": [
                        //                    { "data": "empFirstname" },
                        //                    { "data": "empMiddlename" },
                        //                    { "data": "empLastname" },
                        //                    { "data": "empGender" },
                        //                    { "data": "empContactno" },
                        //                    { "data": "empCity" }
                        //    ]
                        //});
                        var classname = "";
                        $("#tableId").append("<thead style=' '><tr><th>Firstname</th><th>Middlename</th><th>Lastname</th><th>Gender</th><th>Contact Number</th><th>City</th><th>Description</th><th>Email</th><th>Password</th><th>Company</th><th>Website</th><th>Description</th><th>Email</th><th>Contact Number</th><th></th><th></th></tr></thead>");
                        for (var i = 0; i < data.d.length; i++) {
                            if (i % 2 == 0)
                                classname = 'background-color:#d9edf7';
                            $("#tableId").append("<tr style='" + classname + "'><td style='display:none'>" + empdata[i].empId + "</td><td>" + empdata[i].empFirstname + "</td><td>" + empdata[i].empMiddlename + "</td><td>" + empdata[i].empLastname + "</td><td>" + empdata[i].empGender + "</td><td>" + empdata[i].empContactno + "</td><td>" + empdata[i].empcity + "</td><td>" + empdata[i].empDescription + "</td><td>" + empdata[i].empUsername + "</td><td>" + empdata[i].empPassword + "</td><td>" + empdata[i].name + "</td><td>" + empdata[i].website + "</td><td>" + empdata[i].description + "</td><td>" + empdata[i].email + "</td><td>" + empdata[i].contactno + "</td><td><input id='btnEdit' class='ClassButtonGreen'  type='button' value='Edit' onclick='getRow(this);' /></td><td><input id='btnDelete' type='button' value='Delete'  onclick='deleteRow(this);' class='ClassButtonGreen' /></td></tr>");
                            classname = "";
                        }
                       

                    },
                    error: function (err) { alert(err); }

                });

                comBind();
               

            }

            //Dll Bind
            function comBind() {
                $("#ddlCompany").empty();
                $.ajax({
                    url: "myWebService.asmx/webServiceGetCompanyData",
                    datatype: "json",
                    type: "POST",
                    contentType: "application/json;charset=utf-8",
                    success: function (data) {
                        var companydata = JSON.parse(data.d);
                        //alert(companydata[2].name);
                        for (var i = 0; i < data.d.length; i++) {
                            $("#ddlCompany").append("<option value=" + companydata[i].companyId + " >" + companydata[i].name + "</option>");
                        }


                    },
                    error: function (err) { alert(err); }

                });
            }

            //Edit Function
            function getRow(btn)
            {                
                row = btn.parentNode.parentNode;
                var rowIndex = row.rowIndex - 1;
                $("#lblempId").val(row.cells[0].innerHTML);
                $("#txtFirstname").val(row.cells[1].innerHTML);
                $("#txtMiddlename").val(row.cells[2].innerHTML);
                $("#txtLastname").val(row.cells[3].innerHTML);
                $("#ddlGender").val(row.cells[4].innerHTML);
                $("#txtcontactno").val(row.cells[5].innerHTML);
                $("#txtCity").val(row.cells[6].innerHTML);
                $("#txtempdesc").val(row.cells[7].innerHTML);
                $("#txtEmail").val(row.cells[8].innerHTML);
                $("#txtPassword").val(row.cells[9].innerHTML);
                $("#txtConfirmpassword").val(row.cells[9].innerHTML);                
                //$("#ddlCompany").val(row.cells[10].innerHTML);



                $("#divTable").dialog({
                    resizable: false,
                    height: 400,
                    width: 500,
                    modal: true,
                    show: {
                        effect: "blind",
                        duration: 1000
                    },
                   
                    title: "Update Employer",
                    buttons: {
                        
                        "Update": function () {                            
                            updatedData();

                            $(this).dialog("close");
                        },
                        Cancel: function () {
                            $(this).dialog("close");
                            jQuery("#divTable").dialog("destroy");
                            clearControls();
                        }
                    }
                });
                //var empId = row.cells[1].innerHTML;
                
                
            }

            //Update Function
            function updatedData()
            {
                //alert($("#txtFirstname").val());
                var tblEmployer = {};
                tblEmployer.empId=$("#lblempId").val();
                tblEmployer.empFirstname = $("#txtFirstname").val();
                tblEmployer.empMiddlename = $("#txtMiddlename").val();
                tblEmployer.empLastname = $("#txtLastname").val();
                tblEmployer.empGender = $("#ddlGender").val();
                tblEmployer.empContactno = $("#txtcontactno").val();
                tblEmployer.empcity = $("#txtCity").val();
                tblEmployer.empDescription = $("#txtempdesc").val();
                tblEmployer.empUsername = $("#txtEmail").val();
                tblEmployer.empPassword = $("#txtPassword").val();
                tblEmployer.empcid = $("#ddlCompany").val();
                //tblEmployer.empcid = 1;
                //alert($("#ddlGender").val());

                $.ajax({
                    url: "myWebService.asmx/webServiceupdateEmployerData",
                    datatype: "json",
                    data: "{emp:" + JSON.stringify(tblEmployer) + "}",
                    type: "POST",
                    contentType: "application/json;charset=utf-8",
                    success: function (data) {                        
                        alert("Updated Succesfully....");
                        GetData();
                    },
                    error: function (err) { alert(err); }

                });
            }
            //Delete Function
            function deleteRow(btn)
            {
                row = btn.parentNode.parentNode;
                var rowIndex = row.rowIndex - 1;
                alert(row.cells[0].innerHTML);
                var employerid=row.cells[0].innerHTML;

                $.ajax({
                    url: "myWebService.asmx/webServiceDeleteEmployerData",
                    datatype: "json",
                    data: "{eid:" + employerid + "}",
                    type: "POST",
                    contentType: "application/json;charset=utf-8",
                    success: function (data) {
                           
                        alert("Deleted Succesfully....");
                        GetData();

                    },
                    error: function (err) { alert(err); }

                });
            }
            //Add Function
            function addEmpp() {

                $("#divTable").dialog({
                resizable: false,
                height: 400,
                width: 500,
                modal: true,
                show: {
                    effect: "blind",
                    duration: 1000
                },
                title: "Add New Employer",
                buttons: {
                    "Add": function () {
                        
                        addEmpData();//Add Call function

                        $(this).dialog("close");
                    },
                    Cancel: function () {
                        $(this).dialog("close");
                        jQuery("#divTable").dialog("destroy");
                        clearControls();
                    }
                }
            });}

            function addEmpData() {

                var tblEmployer = {}

                //tblEmployer.empId=$("#lblempId").val();
                tblEmployer.empFirstname = $("#txtFirstname").val();
                tblEmployer.empMiddlename = $("#txtMiddlename").val();
                tblEmployer.empLastname = $("#txtLastname").val();
                tblEmployer.empGender = $("#ddlGender").val();
                tblEmployer.empContactno = $("#txtcontactno").val();
                tblEmployer.empcity = $("#txtCity").val();
                tblEmployer.empDescription = $("#txtempdesc").val();
                tblEmployer.empUsername = $("#txtEmail").val();
                tblEmployer.empPassword = $("#txtPassword").val();
                tblEmployer.empcid = $("#ddlCompany").val();
                //tblEmployer.empcid = 1;
                alert($("#ddlGender").val());

                $.ajax({
                    url: "myWebService.asmx/webServiceAddeEmployerData",
                    datatype: "json",
                    data: "{emp:" + JSON.stringify(tblEmployer) + "}",
                    type: "POST",
                    contentType: "application/json;charset=utf-8",
                    success: function (data) {
                        //var empdata = JSON.parse(data.d);
                        alert("Added Succesfully....");
                        GetData();
                       
                        //clearControls();
                    },
                    error: function (err) { alert(err); }

                });
            }


            function clearControls() {
                document.getElementById("txtFirstname").value = "";
                $("#txtFirstname").val('');
                $("#txtMiddlename").val('');
                $("#txtLastname").val('');
                $("#ddlGender").val('');
                $("#txtcontactno").val('');
                $("#txtCity").val('');
                $("#txtempdesc").val('');
                $("#txtEmail").val('');
                $("#txtPassword").val('');
                $("#txtConfirmpassword").val('');

            }

            function validate()
            {
                if ($("#txtFirstname").val().length < 0)
                {
                    $("#divFirstname").text("Please Provide Firstname");
                    $("#divFirstname").css("color", "red");
                    return false;
                }
                //$("#txtMiddlename").val();
                //$("#txtLastname").val();
                //$("#ddlGender").val();
                //$("#txtcontactno").val();
                //$("#txtCity").val();
                //$("#txtempdesc").val();
                //$("#txtEmail").val();
                //$("#txtPassword").val();
                //$("#txtConfirmpassword").val();
            }
            
        </script>
    </form>
</body>
</html>
