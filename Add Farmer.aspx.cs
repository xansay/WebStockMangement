using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace WebStockMangement
{
    public partial class Add_Farmer : System.Web.UI.Page
    {
        //Entityhere is a variable that holds database informtation
        private ProtoDatabaseEntities Entityhere = new ProtoDatabaseEntities();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

       
    
public void AddFarmerRecord()
        {

            using (ProtoDatabaseEntities Entityhere = new ProtoDatabaseEntities())
            {
                //When creating the new user the password will be convert into binary 
                Encoding unicode = Encoding.Unicode;
                byte[] PsswrdByte = unicode.GetBytes(PsswrdTxtBox.Text);
                
                //the new d=farmers informtation is stored within two tables
                //farmers which is a table that stores the basic informtation
                FARMER farmers = new FARMER();
                farmers.FARMER_ID = FRMIDTxtBox.Text;
                farmers.FIRST_NAME = FarmernameTxtBox.Text;
                farmers.SURNAME = FarmerSurnameTxtbox.Text;
                farmers.COMPANY = CMPTxtbox.Text;

                //users table stores all data refering to the login credentials 
                USER users = new USER();
                users.FIRST_NAME = FarmernameTxtBox.Text;
                users.SURNAME = FarmerSurnameTxtbox.Text;
                users.FARMER_ID = FRMIDTxtBox.Text;
                users.USER_ROLES = "FARMER";
                users.PasswordHash = PsswrdByte;
                users.EMAIL = EmailTxtBox.Text;

                Entityhere.USERS.Add(users);
                Entityhere.FARMERS.Add(farmers);
                Entityhere.SaveChanges();

            }
        }

        protected void BttnAddFrmr_Click(object sender, EventArgs e)
        {
            try
            {
                AddFarmerRecord();
            }
            catch (Exception ex)
            {

                ScriptManager.RegisterClientScriptBlock(Page, typeof(Page), "ClientScript", "alert('PLEASE TYPE IN THE CORRECT FORMAT')", true);
            }
            
        }
    }
}
