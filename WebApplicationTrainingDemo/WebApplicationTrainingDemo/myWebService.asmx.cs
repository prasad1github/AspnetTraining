using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using ATDClassLibrary;
using System.Data;
using Newtonsoft.Json;

namespace WebApplicationTrainingDemo
{
    /// <summary>
    /// Summary description for myWebService
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    [System.Web.Script.Services.ScriptService]
    public class myWebService : System.Web.Services.WebService
    {

        [WebMethod]
        public string HelloWorld()
        {
            return "Hello World";
        }

        [WebMethod]      
        public int webServiceloginCheckByUsernamePassword(tblLogin tblloginObj)
        {
            tblLogin log = new tblLogin();
            int res = log.loginCheckByUsernamePassword(tblloginObj);
            return res;
        }

        [WebMethod]
        //public tblEmployer[] webServiceGetEmployerData()\
        public string webServiceGetEmployerData()
        {
            tblEmployer employer = new tblEmployer();
            DataTable dt = employer.bindData();
            return JsonConvert.SerializeObject(dt);
        //    List<tblEmployer> empList=new List<tblEmployer>();
        //    foreach (DataRow dtrow in dt.Rows)
        //{
        //        tblEmployer emp= new tblEmployer();
        //        emp.empId=Convert.ToInt32(dtrow["empId"]);
        //        emp.empFirstname = dtrow["empFirstname"].ToString();
        //        emp.empMiddlename = dtrow["empMiddlename"].ToString();
        //        emp.empLastname =  dtrow["empLastname"].ToString();
        //        emp.empGender =  dtrow["empGender"].ToString();
        //        emp.empContactno =  dtrow["empContactno"].ToString();
        //        emp.empcity=dtrow["empcity"].ToString();
        //        emp.empDescription=dtrow["empDescription"].ToString();
        //        emp.empUsername=dtrow["empUsername"].ToString();
        //        emp.empPassword=dtrow["empPassword"].ToString();
        //        emp.empcid = Convert.ToInt32(dtrow["companyId"]);
                
                    

        //        empList.Add(emp);
        //}

        //    return empList.ToArray();
            
        }

        [WebMethod]
       
        public string webServiceGetCompanyData()
        {
            
            tblCompany company = new tblCompany();
            DataTable dt = company.bindDDL();
            return JsonConvert.SerializeObject(dt);
           

        }
        [WebMethod]
        
        public void webServiceupdateEmployerData(tblEmployer emp)
        {
            tblEmployer employer = new tblEmployer();
            employer.updateEmpData(emp);
        }

        [WebMethod]

        public void webServiceDeleteEmployerData(int eid)
        {
            tblEmployer employer = new tblEmployer();
            employer.deleteEmpData(eid);
        }
        [WebMethod]

        public void webServiceAddeEmployerData(tblEmployer emp)
        {
            tblEmployer employer = new tblEmployer();
            employer.addEmpData(emp);
        }
    }
}
