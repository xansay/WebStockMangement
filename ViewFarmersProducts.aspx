<%@ Page Language="C#"  MasterPageFile="~/HomePage.Master" AutoEventWireup="true" CodeBehind="ViewFarmersProducts.aspx.cs" Inherits="WebStockMangement.ViewFarmersProducts" %>


<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
     <link rel="stylesheet" type="text/css" href="Content/SiteStyleSheet.css"> 
    <h2>View Products Page</h2><br>    
    <div class="ViewFarmer">    
        <form id="ViewFarmer" runat="server">
       
          <asp:DropDownList id="PrdTypeList"
                    
                    runat="server">

                  <asp:ListItem Value="White"> FRUIT </asp:ListItem>
                  <asp:ListItem Value="White"> VEG </asp:ListItem>
                  <asp:ListItem Value="White"> LIVESTOCK </asp:ListItem>

               </asp:DropDownList>
         
        <br>
            <asp:GridView ID="GridView1" runat="server">
                        </asp:GridView>
 


         <asp:Button ID="BttnSrch" runat="server" Text="SEARCH" OnClick="BttnSrch_Click"  />   

        </form>
        </div> 
                 
</asp:Content>