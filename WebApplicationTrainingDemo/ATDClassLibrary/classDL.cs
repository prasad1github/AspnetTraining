using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace ATDClassLibrary
{

    public class tblLogin
    {
        public int loginId { get; set; }
        public string username { get; set; }
        public string password { get; set; }

        public int loginCheckByUsernamePassword(tblLogin tblloginObj)
        {

            using (SqlConnection sqlcon = new SqlConnection(ConfigurationManager.ConnectionStrings["sqlconname"].ConnectionString))
            {
                using (SqlCommand cmd = new SqlCommand("sptblLogincheckByUsername", sqlcon))
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@username", tblloginObj.username);
                    cmd.Parameters.AddWithValue("@password", tblloginObj.password);
                    sqlcon.Open();
                    int res = Convert.ToInt32(cmd.ExecuteScalar());
                    return res;
                }

            }
        }
    }



    public class tblEmployer
    {
        public int empId { get; set; }
        public string empFirstname { get; set; }
        public string empMiddlename { get; set; }
        public string empLastname { get; set; }
        public string empGender { get; set; }
        public string empContactno { get; set; }
        public string empcity { get; set; }
        public string empDescription { get; set; }
        public string empUsername { get; set; }
        public string empPassword { get; set; }
        public int empcid { get; set; }
        
        public DataTable bindData()
        {
            using (SqlConnection sqlcon = new SqlConnection(ConfigurationManager.ConnectionStrings["sqlconname"].ConnectionString))
            {
                SqlDataAdapter sda = new SqlDataAdapter("spGetEmployerData", sqlcon);
                sda.SelectCommand.CommandType = CommandType.StoredProcedure;
                DataTable dt = new DataTable();
                sda.Fill(dt);
                return dt;
            }
        }

        public void addEmpData(tblEmployer e)
        {
            using (SqlConnection sqlcon = new SqlConnection(ConfigurationManager.ConnectionStrings["sqlconname"].ConnectionString))
            {

                SqlCommand cmd = new SqlCommand("spAddEmployerData", sqlcon);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@empFirstname", e.empFirstname);
                cmd.Parameters.AddWithValue("@empMiddlename", e.empMiddlename);
                cmd.Parameters.AddWithValue("@empLastname", e.empLastname);
                cmd.Parameters.AddWithValue("@empGender", e.empGender);
                cmd.Parameters.AddWithValue("@empContactno", e.empContactno);
                cmd.Parameters.AddWithValue("@empcity", e.empcity);
                cmd.Parameters.AddWithValue("@empDescription", e.empDescription);
                cmd.Parameters.AddWithValue("@empUsername", e.empUsername);
                cmd.Parameters.AddWithValue("@empPassword", e.empPassword);
                cmd.Parameters.AddWithValue("@cid", e.empcid);
                sqlcon.Open();
                cmd.ExecuteNonQuery();
            }
        }

        public void updateEmpData(tblEmployer e)
        {
            using (SqlConnection sqlcon = new SqlConnection(ConfigurationManager.ConnectionStrings["sqlconname"].ConnectionString))
            {

                SqlCommand cmd = new SqlCommand("spupdateEmployerData", sqlcon);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@empId", e.empId);
                cmd.Parameters.AddWithValue("@empFirstname", e.empFirstname);
                cmd.Parameters.AddWithValue("@empMiddlename", e.empMiddlename);
                cmd.Parameters.AddWithValue("@empLastname", e.empLastname);
                cmd.Parameters.AddWithValue("@empGender", e.empGender);
                cmd.Parameters.AddWithValue("@empContactno", e.empContactno);
                cmd.Parameters.AddWithValue("@empcity", e.empcity);
                cmd.Parameters.AddWithValue("@empDescription", e.empDescription);
                cmd.Parameters.AddWithValue("@empUsername", e.empUsername);
                cmd.Parameters.AddWithValue("@empPassword", e.empPassword);
                cmd.Parameters.AddWithValue("@cid", e.empcid);
                sqlcon.Open();
                cmd.ExecuteNonQuery();
            }
        }

        public void deleteEmpData(int eid)
        {
            using (SqlConnection sqlcon = new SqlConnection(ConfigurationManager.ConnectionStrings["sqlconname"].ConnectionString))
            {

                SqlCommand cmd = new SqlCommand("spdeleteEmployerData", sqlcon);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@empId", eid);
                sqlcon.Open();
                cmd.ExecuteNonQuery();
            }
        }
     }



    public class tblCompany
    {
        public int cid { get; set; }
        public string cname { get; set; }
        public string cwebsite { get; set; }
        public string cdesc { get; set; }
        public string cemail{ get; set; }
        public string ccontactno { get; set; }

        public DataTable bindDDL()
        {
            using (SqlConnection sqlcon = new SqlConnection(ConfigurationManager.ConnectionStrings["sqlconname"].ConnectionString))
            {
                SqlDataAdapter sda = new SqlDataAdapter("spGetCompanyData", sqlcon);
                sda.SelectCommand.CommandType = CommandType.StoredProcedure;
                DataTable dt = new DataTable();
                sda.Fill(dt);
                return dt;
            }
        }

    }
}
