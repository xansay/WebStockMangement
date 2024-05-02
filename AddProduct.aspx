<%@ Page Language="C#"  MasterPageFile="~/HomePage.Master" AutoEventWireup="true" CodeBehind="AddProduct.aspx.cs" Inherits="WebStockMangement.AddProduct" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
     <link rel="stylesheet" type="text/css" href="Content/SiteStyleSheet.css"> 
    <h2>AddFarmer Page</h2><br>    
    <div class="AddFarmer">    
    <form id="AddFarmer" method="get"  runat="server">    
         <label><b>PRODUCT NAME</b>    
        </label>   
        <br><br>
        <asp:TextBox ID="PrdctnameTxtBox" runat="server"></asp:TextBox>        
        <br><br>    
        <label><b>PRODUCT TYPE     
        </b>    
        </label>    
          <asp:DropDownList id="PrdTypeList"
                    
                    runat="server">

                  <asp:ListItem Value="FRUIT"> FRUIT </asp:ListItem>
                  <asp:ListItem Value="VEG"> VEG </asp:ListItem>
                  <asp:ListItem Value="LIVESTOCK"> LIVESTOCK </asp:ListItem>

               </asp:DropDownList>
        <br><br>  
        <label><b>DATE      
        </b>    
        </label>    
        <asp:Calendar ID="Calendar1" runat="server"></asp:Calendar>
        <br><br>
        <label><b>QUANTIY  
        </b>    
        </label>    
        <asp:TextBox ID="QnttyTxtBox" runat="server"></asp:TextBox>    
         <br><br>    
        <asp:Button ID="BttnAddPrdct" runat="server" Text="ADD PRODUCT" OnClick="BttnAddPrdct_Click" />    
        <br><br>  
    </form>     
</div> 
</asp:Content>