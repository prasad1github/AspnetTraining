<%@ Page Language="C#" ClientIDMode="Static" AutoEventWireup="true" CodeBehind="GridDemo.aspx.cs" Inherits="WebApplicationTrainingDemo.GridDemo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="css/StyleSheetLoginForm.css" rel="stylesheet" />
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
   
</head>
<body>
    <form id="form1" runat="server">
        <div id="divAddData" class="ClassFieldsCenter" style="background-color: white; border-radius: 10px;">
            <%--style="display:none"--%>
            <table align="center"  >
                <tbody>
                    <tr>
                        <td>
                            <asp:Label ID="lblFirstname" runat="server" Text="Firstname"></asp:Label></td>
                        <td>
                            <asp:TextBox ID="txtFirstname" runat="server"></asp:TextBox></td>
                        <td>
                            <asp:RequiredFieldValidator ID="rfvtxtFirstname" runat="server" ErrorMessage="Please Provide Firstname" ControlToValidate="txtFirstname" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator></td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="lblMiddlename" runat="server" Text="Middlename"></asp:Label></td>
                        <td>
                            <asp:TextBox ID="txtMiddlename" runat="server"></asp:TextBox></td>
                        <td>
                            <asp:RequiredFieldValidator ID="rfvtxtMiddlename" runat="server" ErrorMessage="Please Provide Middlename" ControlToValidate="txtMiddlename" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator></td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="lblLastname" runat="server" Text="Lastname"></asp:Label></td>
                        <td>
                            <asp:TextBox ID="txtLastname" runat="server"></asp:TextBox></td>
                        <td>
                            <asp:RequiredFieldValidator ID="rfvtxtLastname" runat="server" ErrorMessage="Please Provide Lastname" ControlToValidate="txtLastname" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator></td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="lblGender" runat="server" Text="Gender"></asp:Label></td>
                        <td>
                            <asp:DropDownList ID="ddlGender" runat="server" style="text-align:left">
                                <asp:ListItem Text="--Select Gender--" Value="0" Selected="True"></asp:ListItem>
                                <asp:ListItem Text="Male" Value="1"></asp:ListItem>
                                <asp:ListItem Text="Female" Value="2"></asp:ListItem>
                            </asp:DropDownList></td>
                        <td>
                            <asp:RequiredFieldValidator ID="rfvddlGender" runat="server" ErrorMessage="Please Provide Gender" ControlToValidate="ddlGender" InitialValue="0" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator></td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="lblContactno" runat="server" Text="Contact No">  </asp:Label></td>
                        <td>
                            <asp:TextBox ID="txtContactno" runat="server"></asp:TextBox></td>
                        <td>
                            <asp:RequiredFieldValidator ID="rfvtxtContactno" runat="server" ErrorMessage="Please Provide Contactno" ControlToValidate="txtContactno" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator></td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="lblCity" runat="server" Text="City"></asp:Label></td>
                        <td>
                            <asp:TextBox ID="txtCity" runat="server"></asp:TextBox></td>
                        <td>
                            <asp:RequiredFieldValidator ID="rfvtxtCity" runat="server" ErrorMessage="Please Provide City" ControlToValidate="txtCity" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator></td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="lblEmpDescription" runat="server" Text="EmpDescription"></asp:Label></td>
                        <td>
                            <asp:TextBox ID="txtEmpDescription" runat="server"></asp:TextBox></td>
                        <td>
                            <asp:RequiredFieldValidator ID="rfvtxtEmpDescription" runat="server" ErrorMessage="Please Provide Description" ControlToValidate="txtEmpDescription" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator></td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="lblUsername" runat="server" Text="Email"></asp:Label></td>
                        <td>
                            <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox></td>
                        <td>
                            <asp:RequiredFieldValidator ID="rfvtxtUsername" runat="server" ErrorMessage="Please Provide Email" ControlToValidate="txtUsername" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator><asp:RegularExpressionValidator ID="revEmail" runat="server" ErrorMessage="Invalid Email" ControlToValidate="txtUsername" Display="Dynamic" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator></td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="lblPassword" runat="server" Text="Password"></asp:Label></td>
                        <td>
                            <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox></td>
                        <td>
                            <asp:RequiredFieldValidator ID="rfvtxtPassword" runat="server" ErrorMessage="Please Provide Password" ControlToValidate="txtPassword" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator></td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="lblConfirmPassword" runat="server" Text="Confirm Password"></asp:Label></td>
                        <td>
                            <asp:TextBox ID="txtConfirmPassword" runat="server" TextMode="Password"></asp:TextBox></td>
                        <td>
                            <asp:RequiredFieldValidator ID="rfvtxtConfirmPassword" runat="server" ErrorMessage="Please Provide Confirm Password" Display="Dynamic" ControlToValidate="txtConfirmPassword" ForeColor="Red"></asp:RequiredFieldValidator>
                            <asp:CompareValidator ID="cvtxtConfirmPassword" runat="server" ErrorMessage="Password Not Matched" Display="Dynamic" ControlToCompare="txtConfirmPassword" ControlToValidate="txtPassword" ForeColor="Red"></asp:CompareValidator></td>


                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="lblccname" runat="server" Text="Company Name"></asp:Label></td>
                        <td >
                            <asp:DropDownList ID="ddlccname" runat="server" DataTextField="name" DataValueField="companyId" ></asp:DropDownList></td>
                        <td>
                        
                        <asp:HiddenField ID="hdnid" Value="0" runat="server" />
                    </tr>
                    <tr><td></td></tr><br />
                    <tr>
                        <td align="center" colspan="2">
                            <asp:Button ID="btnAdd" runat="server" Text="Add" OnClick="btnAdd_Click" class="buttonclass" style="background-color:#5bc0de" /> &nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Button ID="btnUpdate" runat="server" Text="Update"   class="buttonclass"  OnClick="btnUpdate_Click" style="background-color:#5bc0de"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <input id="btnClear" type="button" value="Clear"  onclick="return clearFields();" class="buttonclass" style="background-color:#f0ad4e"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Button ID="btnClose" runat="server" Text="Close" CausesValidation="False" class="buttonclass"  style="background-color:#d9534f" /></td>

                    </tr><%--btn btn-danger--%>
                    
                </tbody>

            </table>
        </div>
        <br />
        <div align="center">
            <asp:Button ID="Add" runat="server" Text="Add New Employer"  CssClass="ClassButton" style="width:200px;height:30px"  OnClientClick="return showPopupAdd()"/><br />
            <br />
            <asp:GridView ID="GridViewEmp"   GridLines="None" CssClass="classTableDesignAsp" runat="server" Width="950px"  AutoGenerateColumns="False" OnRowCommand="GridViewEmp_RowCommand"   AllowPaging="True" OnPageIndexChanging="GridViewEmp_PageIndexChanging" OnRowDeleting="GridViewEmp_RowDeleting">
                 <rowstyle Height="40px" />
                <HeaderStyle ForeColor="White" BackColor="#66ccff"  />
                <FooterStyle HorizontalAlign="Center" />
                <AlternatingRowStyle BackColor="#D9EDF7" Height="20px" />
               
                <PagerStyle CssClass="alignCenterText"  />
                
                <Columns>
                    <asp:TemplateField HeaderText="ID" Visible="False">
                        <ItemTemplate>
                            <asp:Label ID="lblempId" runat="server" Text='<%# Eval("empId") %>'></asp:Label>
                        </ItemTemplate>

                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Firstname">
                        <ItemTemplate>
                            <asp:Label ID="lblFirstname" runat="server" Text='<%# Eval("empFirstname") %>'></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtfname" runat="server" Text='<%# Eval("empFirstname") %>'>></asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Middlename">
                        <ItemTemplate>
                            <asp:Label ID="lblMiddlename" runat="server" Text='<%# Eval("empMiddlename") %>'></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtmname" runat="server" Text='<%# Eval("empMiddlename") %>'></asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Lastname">
                        <ItemTemplate>
                            <asp:Label ID="lblLastname" runat="server" Text='<%# Eval("empLastname") %>'></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtlname" runat="server" Text='<%# Eval("empLastname") %>'></asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Gender">
                        <ItemTemplate>
                            <asp:Label ID="lblGender" runat="server" Text='<%# Eval("empGender") %>'></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:DropDownList ID="ddlgender" runat="server">
                                <asp:ListItem Text="Male" Value="1"></asp:ListItem>
                                <asp:ListItem Text="Female" Value="2"></asp:ListItem>
                            </asp:DropDownList></td>
                        </EditItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Contactno">
                        <ItemTemplate>
                            <asp:Label ID="lblContactno" runat="server" Text='<%# Eval("empContactno") %>'></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtcontactno" runat="server" Text='<%# Eval("empContactno") %>'></asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="City">
                        <ItemTemplate>
                            <asp:Label ID="lblCity" runat="server" Text='<%# Eval("empCity") %>'></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtcity" runat="server" Text='<%# Eval("empCity") %>'></asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Description">
                        <ItemTemplate>
                            <asp:Label ID="lblDescription" runat="server" Text='<%# Eval("empDescription") %>'></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtdesc" runat="server" Text='<%# Eval("empDescription") %>'></asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Email">
                        <ItemTemplate>
                            <asp:Label ID="lblUsername" runat="server" Text='<%# Eval("empUsername") %>'></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtusername" runat="server" Text='<%# Eval("empUsername") %>'></asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Password" Visible="false">
                        <ItemTemplate>
                            <asp:Label ID="lblPassword" runat="server" Text='<%# Eval("empPassword") %>'></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtpasssword" runat="server" Text='<%# Eval("empPassword") %>'></asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Company">
                        <ItemTemplate>
                            <asp:Label ID="lblcompany" runat="server" Text='<%# Eval("name") %>'></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:DropDownList ID="eddlcompany" runat="server" DataTextField="name" DataValueField="companyId"></asp:DropDownList>
                        </EditItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Website">
                        <ItemTemplate>
                            <asp:Label ID="lblwebsite" runat="server" Text='<%# Eval("website") %>'></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtwebsite" runat="server" Text='<%# Eval("website") %>'></asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Description">
                        <ItemTemplate>
                            <asp:Label ID="lblcdesc" runat="server" Text='<%# Eval("description") %>'></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtcdesc" runat="server" Text='<%# Eval("description") %>'></asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Email">
                        <ItemTemplate>
                            <asp:Label ID="lblemail" runat="server" Text='<%# Eval("email") %>'></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtemail" runat="server" Text='<%# Eval("email") %>'></asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Contactno">
                        <ItemTemplate>
                            <asp:Label ID="lblccontactno" runat="server" Text='<%# Eval("contactno") %>'></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtccontactno" runat="server" Text='<%# Eval("contactno") %>'></asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Edit">
                        <ItemTemplate>
                        <asp:Button ID="btnEdit" runat="server" CausesValidation="False" CssClass="ClassButtonGreen" Text="Edit" OnClientClick='<%# string.Format("return showPopup({0}, \"{1}\",\"{2}\",\"{3}\", \"{4}\", \"{5}\", \"{6}\", \"{7}\", \"{8}\", \"{9}\", \"{10}\");", Eval("empId"), Eval("empFirstname"), Eval("empMiddlename"), Eval("empLastname"), Eval("empGender"), Eval("empContactno"), Eval("empcity"), Eval("empDescription"), Eval("empUsername"), Eval("empPassword"), Eval("companyId")) %>' />  
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Delete">
                        <ItemTemplate>
                            <asp:Button ID="btnDelete" runat="server" OnClientClick="return confirm('Are You sure to delete data')" Text="Delete" CommandName="Delete"  CssClass="ClassButtonGreen" CommandArgument="<%# ((GridViewRow) Container).RowIndex %>" CausesValidation="false" />
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
        </div>
        <div>

            <ajaxToolkit:ModalPopupExtender ID="addPopupModal"  PopupControlID="divAddData" TargetControlID="Add" runat="server" BackgroundCssClass="ClassModalpopupasp">
                <Animations>
                     <OnShown>
                            <FadeIn duration="0.15" Fps="100" />
                     </OnShown>
                </Animations>
            </ajaxToolkit:ModalPopupExtender>
            <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        </div>
    </form>

    <script>
        function clearFields() {
            $("#txtFirstname").val('');
            $("#txtMiddlename").val('');
            $("#txtLastname").val('');

            $("#txtContactno").val('');
            $("#txtCity").val('');
            $("#txtEmpDescription").val('');
            $("#txtUsername").val('');
            $("#txtPassword").val('');
            $("#txtConfirmPassword").val('');
            return false;
        } 
       
        function showPopup(empId, empFirstname, empMiddlename, empLastname, empGender, empContactno, empcity, empDescription, empUsername, empPassword, companyId)
        {
            //debugger;
            $("#txtFirstname").val(empFirstname);
            $("#txtMiddlename").val(empMiddlename);
            $("#txtLastname").val(empLastname);
            if (empGender == 'Male')
                $("#ddlGender").val(1);
            else
                $("#ddlGender").val(2);
            $("#txtContactno").val(empContactno);
            $("#txtCity").val(empcity);
            $("#txtEmpDescription").val(empDescription);
            $("#txtUsername").val(empUsername);
            $("#txtPassword").val(empPassword);
            $("#txtConfirmPassword").val(empPassword);
            //$('id$="lblId"').val(empId);            
            $("#hdnid").val(empId);

            //alert($("#hdnid").text());
            showUpdate();
            HideSumbit();
            var showpopup = $find("addPopupModal");           
            showpopup.show();
            return true;           
        }
        function showPopupAdd() {
          
            clearFields();
            HideUpdate();
            //ShowSumbit();
            $("#ddlGender").val(0)
            var showpopup = $find("addPopupModal");
            showpopup.show();
            return false;
        }
        function HideSumbit()
        {
            $("#btnAdd").hide();
        }
        function showUpdate()
        {
            $("#btnUpdate").show();
        }
        function ShowSumbit() {
            $("#btnAdd").show();
        }
        function HideUpdate() {
            $("#btnUpdate").hide();
        }
        
       
    </script>
</body>
</html>
