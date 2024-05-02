<%@ Page Language="C#" MasterPageFile="~/EmployeMastePage.Master" AutoEventWireup="true" CodeBehind="Add Farmer.aspx.cs" Inherits="WebStockMangement.Add_Farmer" %>


<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
     <link rel="stylesheet" type="text/css" href="Content/SiteStyleSheet.css"> 
    <h2>Add Farmer </h2><br>    
    <div class="AddFarmer">    
    <form id="AddFarmer" method="get" runat="server">    
        
        <label><b>FARMER NAME</b>    
        </label>   
        <br><br>
        <asp:TextBox ID="FarmernameTxtBox" runat="server"></asp:TextBox>        
        <br><br>    
        <label><b>SURNAME     
        </b>    
        </label>    
         <asp:TextBox ID="FarmerSurnameTxtbox" runat="server"></asp:TextBox>
        <br><br>  
        <label><b>COMPANY      
        </b>    
        </label>    
        <asp:TextBox ID="CMPTxtbox" runat="server"></asp:TextBox>    
        <br><br>
        <label><b>FARMER ID      
        </b>    
        </label>    
        <asp:TextBox ID="FRMIDTxtBox" runat="server"></asp:TextBox>    
        <br><br> 
        <label><b>PASSWORD      
        </b>    
        </label>    
        <asp:TextBox ID="PsswrdTxtBox" runat="server"></asp:TextBox>    
        <br><br> 
          <label><b>EMAIL      
        </b>    
        </label>    
        <asp:TextBox ID="EmailTxtBox" runat="server"></asp:TextBox>    
        <br><br> 
        <br><br>    
        <asp:Button ID="BttnAddFrmr" runat="server" Text="ADD FARMER" OnClick="BttnAddFrmr_Click" />    
        <br><br> 
       
    </form>     
</div> 
</asp:Content>
