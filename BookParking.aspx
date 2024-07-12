<%@ Page Language="C#" AutoEventWireup="true" CodeFile="BookParking.aspx.cs" Inherits="StudentLogin" %>

<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=Edge">
<meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
<title>Parking</title>
<!-- Favicon-->
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet" type="text/css">
<link rel="icon" href="favicon.ico" type="image/x-icon">
<!-- Custom Css -->
<link href="assets/css/main.css" rel="stylesheet">
<link href="assets/css/login.css" rel="stylesheet">

<!-- Swift Themes. You can choose a theme from css/themes instead of get all themes -->
<link href="assets/css/themes/all-themes.css" rel="stylesheet" />
</head>
<body class="login-page authentication">

<div class="container">
    <div class="card-top"></div>
    <div class="card">
        <h1 class="title">Book Parking <asp:Image ID="Image1" Width="50px" ImageUrl="~/Images/parking.jpg" runat="server" /></h1>
        <div class="col-md-12">
            <form id="sign_in" runat="server" method="POST">
                
                <div>
                    <div class="form-line">
                        <asp:Image ID="Image2" Height="150px" Width="100%" ImageUrl ="~/Images/BookPark.png" runat="server" />
                    </div>
                </div>
                <br />
             <div class="input-group">
                <span class="input-group-addon">
                    <i class="zmdi zmdi-account"></i>
                </span>
             <div class="form-line">

                    <asp:DropDownList ID="ddlArea" runat="server" AutoPostBack="true" Height="25px" Width="100%" >
                    <asp:ListItem>Select Your Area</asp:ListItem>
                    <asp:ListItem>Shegaon Naka</asp:ListItem>
                    <asp:ListItem>Kathora Naka</asp:ListItem>
                    <asp:ListItem>Panchawati</asp:ListItem>
                        <asp:ListItem>Rathi Nagar</asp:ListItem>
                    <asp:ListItem>Irwin Square</asp:ListItem>
                    <asp:ListItem>Rajapeth</asp:ListItem>
                    <asp:ListItem>Sai Nagar</asp:ListItem>
                  
                </asp:DropDownList>
             </div>
                    </div>

                <div>
                    
                    <div class="text-center">
                        <%--<a href="Admin/AdminDefault.aspx" class="btn btn-raised waves-effect g-bg-cyan" type="submit">SIGN IN</a>--%>
                       <asp:Button ID="Button1" runat="server"  class="btn btn-raised g-bg-cyan waves-effect" Text="Check Slots" OnClick="Button1_Click1"  />
                    </div>
                    
                    <div class="text-center"> <a href="Default.aspx">Home Page</a></div>
                </div>
            </form>
        </div>
    </div>    
</div>
<div class="theme-bg"></div>

<!-- Jquery Core Js --> 
<script src="assets/bundles/libscripts.bundle.js"></script> <!-- Lib Scripts Plugin Js --> 
<script src="assets/bundles/vendorscripts.bundle.js"></script> <!-- Lib Scripts Plugin Js -->

<script src="assets/bundles/mainscripts.bundle.js"></script><!-- Custom Js --> 
<script src="assets/js/pages/examples/sign-in.js"></script>
</body>

<!-- Mirrored from thememakker.com/swift/hospital/sign-in.html by HTTrack Website Copier/3.x [XR&CO'2014], Sun, 26 Feb 2017 17:11:01 GMT -->
</html>