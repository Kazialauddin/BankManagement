<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="BankManagementSystem._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1>BANK MANAGEMENT SYSTEM</h1>
        <p class="lead">Here have shown a little part of Bank System. For better understand some steps have written below</p>
        
    </div>

    <div class="row">
        <div class="col-md-4">
            <h2>RULES #1</h2>
            <p>
            <a href="About.aspx">ADD BANK</a> ACCOUNT AND REMEMBER THE NAME    
            </p>
            <p>
                <a class="btn btn-default" href="/Secured/BankDetails.aspx">GO &raquo;</a>
            </p>
            
            
        </div>
        <div class="col-md-4">
            <h2>RULES #2</h2>
            <p>
               <a href="ClientInfo.aspx">ADD CLIENT INFO</a>  WITH ENTER THE NEW CREATED BANK'S AccountID.
            </p>
            <p>
                <a class="btn btn-default" href="/Secured/ClientInfo.aspx">GO &raquo;</a>
            </p>
            
        </div>
        <div class="col-md-4">
            <h2>RULES #3</h2>
            <p>
                Go TO THE <a href="/Secured/BankDetails.aspx">">Bank Details</a> PAGE AND CLICK SELECT IN BANK ID TO SEE WHO IS IT'S CLIENT.
            </p>
            <p>
                <a class="btn btn-default" href="/Secured/BankDetails.aspx">GO &raquo;</a>
            </p>
            
        </div>
    </div>

</asp:Content>
