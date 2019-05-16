using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ATDClassLibrary;
using System.Data;

namespace WebApplicationTrainingDemo
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
          if (!IsPostBack)
            {
                bindGrid();

            }
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {

            tblEmployer emp = new tblEmployer();
            emp.empFirstname = txtFirstname.Text;
            emp.empMiddlename = txtMiddlename.Text;
            emp.empLastname = txtLastname.Text;
            emp.empGender = ddlGender.SelectedItem.Text;
            emp.empContactno = txtContactno.Text;
            emp.empcity = txtCity.Text;
            emp.empUsername = txtUsername.Text;
            emp.empPassword = txtPassword.Text;
            emp.empDescription = txtEmpDescription.Text;
            emp.empcid = Convert.ToInt32(ddlccname.SelectedItem.Value);
            emp.addEmpData(emp);
            bindGrid();
            clearControls();
        }

        public void bindGrid()
        {

            tblEmployer emp = new tblEmployer();
            DataTable dt = emp.bindData();
            GridViewEmp.DataSource = dt;
            GridViewEmp.DataBind();
            tblCompany company = new tblCompany();
            ddlccname.DataSource = company.bindDDL();
            ddlccname.DataBind();
        }


        protected void GridViewEmp_RowCommand(object sender, GridViewCommandEventArgs e)
        {


            if (e.CommandName == "Update")
            {
                tblEmployer emp = new tblEmployer();

                #region
                //int rx = Convert.ToInt32(e.CommandArgument);
                //emp.empId = Convert.ToInt32(((Label)GridViewEmp.Rows[rx].FindControl("lblempId")).Text);
                //emp.empFirstname = (((TextBox)GridViewEmp.Rows[rx].FindControl("txtfname")).Text);
                //emp.empMiddlename = (((TextBox)GridViewEmp.Rows[rx].FindControl("txtmname")).Text);
                //emp.empLastname = (((TextBox)GridViewEmp.Rows[rx].FindControl("txtlname")).Text);
                //emp.empGender = (((DropDownList)GridViewEmp.Rows[rx].FindControl("ddlgender")).SelectedItem.Text);
                //emp.empContactno = (((TextBox)GridViewEmp.Rows[rx].FindControl("txtcontactno")).Text);
                //emp.empcity = (((TextBox)GridViewEmp.Rows[rx].FindControl("txtcity")).Text);
                //emp.empDescription = (((TextBox)GridViewEmp.Rows[rx].FindControl("txtdesc")).Text);
                //emp.empUsername = (((TextBox)GridViewEmp.Rows[rx].FindControl("txtusername")).Text);
                //emp.empPassword = (((TextBox)GridViewEmp.Rows[rx].FindControl("txtpasssword")).Text);
                //emp.empcid = Convert.ToInt32((((DropDownList)GridViewEmp.Rows[rx].FindControl("eddlcompany")).SelectedItem.Value));
                #endregion

                emp.empFirstname = txtFirstname.Text;
                emp.empMiddlename = txtMiddlename.Text;
                emp.empLastname = txtLastname.Text;
                emp.empGender = ddlGender.SelectedItem.Text;
                emp.empContactno = txtContactno.Text;
                emp.empcity = txtCity.Text;
                emp.empDescription = txtEmpDescription.Text;
                emp.empUsername = txtUsername.Text;
                emp.empPassword = txtPassword.Text;
                emp.empcid = Convert.ToInt32(ddlccname.SelectedItem.Value);

                emp.updateEmpData(emp);
                //GridViewEmp.EditIndex = -1;
                bindGrid();

            }
            if (e.CommandName == "Delete")
            {
                int rx = Convert.ToInt32(e.CommandArgument);
                int eid = Convert.ToInt32(((Label)GridViewEmp.Rows[rx].FindControl("lblempId")).Text);

                tblEmployer emp = new tblEmployer();
                emp.deleteEmpData(eid);
                bindGrid();
            }
            if (e.CommandName == "Cancel")
            {
                GridViewEmp.EditIndex = -1;
                bindGrid();
            }

        }



        protected void btnClear_Click(object sender, EventArgs e)
        {
            clearControls();
        }
        public void clearControls()
        {
            txtFirstname.Text = "";
            txtMiddlename.Text = "";
            txtLastname.Text = "";
            ddlGender.SelectedIndex = -1;
            txtContactno.Text = "";
            txtCity.Text = "";
            txtEmpDescription.Text = "";
            txtUsername.Text = "";
            txtPassword.Text = "";
            txtConfirmPassword.Text = "";
        }

        protected void GridViewEmp_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridViewEmp.PageIndex = e.NewPageIndex;
            bindGrid();
        }

        protected void GridViewEmp_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {

        }


        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            tblEmployer emp = new tblEmployer();

            emp.empFirstname = txtFirstname.Text;
            emp.empMiddlename = txtMiddlename.Text;
            emp.empLastname = txtLastname.Text;
            emp.empGender = ddlGender.SelectedItem.Text;
            emp.empContactno = txtContactno.Text;
            emp.empcity = txtCity.Text;
            emp.empDescription = txtEmpDescription.Text;
            emp.empUsername = txtUsername.Text;
            emp.empPassword = txtPassword.Text;
            emp.empcid = Convert.ToInt32(ddlccname.SelectedItem.Value);
            emp.empId = Convert.ToInt32(hdnid.Value);
            emp.updateEmpData(emp);
            bindGrid();
        }
    }
}