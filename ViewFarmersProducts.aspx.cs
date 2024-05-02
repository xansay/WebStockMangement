using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebStockMangement
{
    public partial class ViewFarmersProducts : System.Web.UI.Page
    {
        //in this line the user Id is imported from the login page
        public static String UserID = LoginPage.user_id;
        private ProtoDatabaseEntities Entityhere = new ProtoDatabaseEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            //the first thing is laoded is all farmers products by defualt 
            var allprod = from table in Entityhere.FARMER_PRODUCTS where table.FARMER_ID.Contains(UserID) select table;

          

            GridView1.DataSource = allprod.ToArray();
            GridView1.DataBind();
        }

        protected void BttnSrch_Click(object sender, EventArgs e)
        {
            //this class is used to search using type 
            var queryType = from table in Entityhere.FARMER_PRODUCTS where table.PRODUCT_NAME.Contains(PrdTypeList.SelectedItem.Text) select table;
            GridView1.DataSource = queryType.ToArray();
            GridView1.DataBind();
        }
    }
}