<%@ Page Title="Login"  Language="C#"  MasterPageFile="~/login.Master"AutoEventWireup="true" CodeBehind="LoginPage.aspx.cs" Inherits="WebStockMangement.LoginPage" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
     <link rel="stylesheet" type="text/css" href="Content/SiteStyleSheet.css">   
    <h2>Login Page</h2><br>    
    <div class="login">    
      <form id="login"  runat="server">    
        <label><b>Username     
        </b>    
        </label>    
        <asp:TextBox ID="usernameTxtBox" runat="server"></asp:TextBox> 
        <br><br>    
        <label><b>Password     
        </b>    
        </label>    
        <asp:TextBox ID="passwordTxtBox" runat="server"></asp:TextBox> 
        <br><br>    
        <asp:Button ID="BttnInsert" runat="server" Text="INSERT" OnClick="BttnInsert_Click" />    
        <br><br>    
    </form>
</div>    
</asp:Content>
   
