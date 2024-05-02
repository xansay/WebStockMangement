using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebStockMangement
{
    public partial class AddProduct : System.Web.UI.Page
    {       
        //Entityhere is a variable that holds database informtation
        private ProtoDatabaseEntities Entityhere = new ProtoDatabaseEntities();

        public static String UserID = LoginPage.user_id;
        protected void Page_Load(object sender, EventArgs e)
        {

        }
      


        public void AddProctEntry()
        {
            using (ProtoDatabaseEntities Entityhere = new ProtoDatabaseEntities())
            {
               

                // when creating a new product it will be storeds within two tables

                //the first is product which stores the name and type of product
                PRODUCT products = new PRODUCT();
                products.PRODUCT_NAME = PrdctnameTxtBox.Text;
                products.PRODUCT_TYPE = PrdTypeList.Text;

                // the second is FARMER_PRODUCTS this table store spefically which farmer the product belongs too
                FARMER_PRODUCTS FarmersPs = new FARMER_PRODUCTS();
                FarmersPs.FARMER_ID = UserID;
                FarmersPs.PRODUCT_NAME = PrdctnameTxtBox.Text;
                FarmersPs.PRODUCT_TYPE = PrdTypeList.Text;
                FarmersPs.PROD_DATE = Calendar1.SelectedDate;
                FarmersPs.QUANTIY = int.Parse(QnttyTxtBox.Text);

                Entityhere.FARMER_PRODUCTS.Add(FarmersPs);
                Entityhere.PRODUCTS.Add(products);
                Entityhere.SaveChanges();

            }
        }

        protected void BttnAddPrdct_Click(object sender, EventArgs e)
        {
            try
            {
                AddProctEntry();
            }
            catch (Exception ex)
            {

                ScriptManager.RegisterClientScriptBlock(Page, typeof(Page), "ClientScript", "alert('PLEASE TYPE IN THE CORRECT FORMAT')", true);
            }
           
        }
    }
}