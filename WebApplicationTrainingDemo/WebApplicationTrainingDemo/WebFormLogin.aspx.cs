using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ATDClassLibrary;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace WebApplicationTrainingDemo
{
    public partial class WebFormLogin : System.Web.UI.Page
    {
        

        protected void Page_Load(object sender, EventArgs e)
        {
           
            
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            
            tblLogin log = new tblLogin();   
            log.username = txtUsername.Text;
            log.password = txtPassword.Text;
            int res = log.loginCheckByUsernamePassword(log);

            if (res > 0)
            {
                Response.Write("<script>alert('Login Successfully..');</script>");
            }
            else
            {
                Response.Write("<script>alert('Wrong Username or Password..');</script>");
            }


        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            clearControls();
        }

        public void clearControls()
        {
            txtUsername.Text = "";
            txtPassword.Text = "";
        }


    }
}