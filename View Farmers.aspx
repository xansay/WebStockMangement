<%@ Page Language="C#"  MasterPageFile="~/EmployeMastePage.Master" AutoEventWireup="true" CodeBehind="View Farmers.aspx.cs" Inherits="WebStockMangement.View_Farmers" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
     <link rel="stylesheet" type="text/css" href="Content/SiteStyleSheet.css"> 
    <h2>ViewFarmers Page</h2><br>    
    <div class="ViewFarmer">    
        <form id="ViewFarmer" runat="server">
            <br>    
        <label><b>Farmer ID     
        </b>    
        </label>    
         <asp:TextBox ID="FRMIDTxtBox" runat="server" BorderColor="#5dc331" BorderStyle="Solid"></asp:TextBox>    
        <br><br>  
        <label><b>Date     
        </b>  
        <br>  
            STARTING DATE     
        
        </label>
             <asp:Calendar ID="Calendar1" runat="server"></asp:Calendar>
        <br><br>  
              <label>END DATE     
        </label> 
                   <asp:Calendar ID="Calendar2" runat="server"></asp:Calendar>
        <br><br>  
        <label><b>PRODUCT TYPE     
        </b>    
        </label>    
          <asp:DropDownList id="PrdTypeList"
                    
                    runat="server">
                    <asp:ListItem Value="">  </asp:ListItem>
                  <asp:ListItem Value="FRUIT"> FRUIT </asp:ListItem>
                  <asp:ListItem Value="VEG"> VEG </asp:ListItem>
                  <asp:ListItem Value="LIVESTOCK"> LIVESTOCK </asp:ListItem>

               </asp:DropDownList>
         
        <br> 
        <br>
            <asp:GridView ID="GridView1" runat="server">
                        </asp:GridView>
 

              <br>  <br>
         <asp:Button ID="BttnSrchID" runat="server" Text="SEARCH FARMER ID" OnClick="BttnSrch_Click" class="button"/>   
              <asp:Button ID="BttnDate" runat="server" Text="SEARCH DATE" OnClick="BttnDate_Click" class="button"/>  
              <asp:Button ID="BttnType" runat="server" Text="SEARCH TYPE" OnClick="BttnType_Click" class="button"/>  
        </form>
        </div> 
                 
</asp:Content>