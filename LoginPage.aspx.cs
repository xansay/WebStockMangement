using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Entity;
using System.Text;
using System.Text.RegularExpressions;

namespace WebStockMangement
{
    public partial class LoginPage : System.Web.UI.Page
    {
        public static string user_id; 
        private ProtoDatabaseEntities Entityhere = new ProtoDatabaseEntities();
        protected void Page_Load(object sender, EventArgs e)
        {

        }
       private void CredentialsCheck()
        {
            
            if (Entityhere.USERS.Any(x => x.EMPLOYEE_ID == usernameTxtBox.Text))
                {
                var EMPpss = (from EMP in Entityhere.USERS where EMP.EMPLOYEE_ID.Contains(usernameTxtBox.Text)select EMP.PasswordHash).First();
                string user = Encoding.UTF8.GetString(EMPpss).Trim();
                string result = Regex.Replace(user, @"[^\d]", "");
                
                if (result == passwordTxtBox.Text)
                {
                    user_id = user;
                    Response.Redirect("View Farmers.aspx");
                }

            }
            else if (Entityhere.USERS.Any(x => x.FARMER_ID == usernameTxtBox.Text))
                {
                var FRMpss = (from FRM in Entityhere.USERS where FRM.FARMER_ID.Contains(usernameTxtBox.Text) select FRM.PasswordHash).First();

                string user = Encoding.UTF8.GetString(FRMpss).Trim();
                string result = Regex.Replace(user, @"[^\d]", "");

                if (result == passwordTxtBox.Text)
                {
                    user_id = user;
                    Response.Redirect("ViewFarmersProducts.aspx");
                }
            }
           

 

        }

        protected void BttnInsert_Click(object sender, EventArgs e)
        {
            try
            {
                CredentialsCheck();
            }
            catch (Exception ex)
            {

                ScriptManager.RegisterClientScriptBlock(Page, typeof(Page), "ClientScript", "alert('INCORRECT ACCOUNT DETAIL. PLEASE TRY AGAIN')", true);
            }

     
        }
        

    }
}