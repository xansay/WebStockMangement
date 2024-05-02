using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;


namespace WebStockMangement
{
    public partial class View_Farmers : System.Web.UI.Page
    {
        // here in this class it is used to view the farmers
        private ProtoDatabaseEntities Entityhere = new ProtoDatabaseEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            //the first thing is laoded is all farmers by defualt 
            var def = from table in Entityhere.FARMER_PRODUCTS
                        select table;
            GridView1.DataSource = def.ToArray();
            GridView1.DataBind();

        }

        //this class is used to search using farmers ID
        protected void BttnSrch_Click(object sender, EventArgs e)
        {
      
            var queryFrmID = from table in Entityhere.FARMER_PRODUCTS where table.PRODUCT_NAME.Contains(FRMIDTxtBox.Text) select table;
            GridView1.DataSource = queryFrmID.ToArray();
            GridView1.DataBind();

        }

        //this class is used to search using the date range
        protected void BttnDate_Click(object sender, EventArgs e)
        {
            var querydate = Entityhere.FARMER_PRODUCTS.Where(t => t.PROD_DATE > Calendar1.SelectedDate && t.PROD_DATE < Calendar2.SelectedDate);

            GridView1.DataSource = querydate.ToArray();
            GridView1.DataBind();
        }

        //this class is used to search using type 
        protected void BttnType_Click(object sender, EventArgs e)
        {
            var queryType = from table in Entityhere.FARMER_PRODUCTS where table.PRODUCT_NAME.Contains(PrdTypeList.SelectedItem.Text) select table;

            GridView1.DataSource = queryType.ToArray();
            GridView1.DataBind();
        }
    }
}