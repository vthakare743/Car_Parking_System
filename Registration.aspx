<%@ Page Language="C#" AutoEventWireup="true" EnableEventValidation="true" CodeFile="Registration.aspx.cs" Inherits="Registration" %>

<!DOCTYPE html>
<html>


<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=Edge">
<meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
<title>Student</title>
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
        <h1 class="title"><span>Student</span>Register <div class="msg">Register a new Student</div></h1>
        <div class="col-md-12">
            <form id="sign_up" class="col-xs-12" runat="server" action="#" method="post">    
            <div class="input-group">
                <span class="input-group-addon">
                    <i class="zmdi zmdi-account"></i>
                </span>
                <div class="form-line">
                      <asp:TextBox ID="txtname"  class="form-control" placeholder="Enter Name" runat="server"></asp:TextBox>
                    <%--<input type="text" class="form-control" name="txtname" placeholder="Enter Name" required="" autofocus>--%>
                </div>
            </div>
            <div class="input-group">
                <span class="input-group-addon">
                    <i class="zmdi zmdi-email"></i>
                </span>
                <div class="form-line">
                     <asp:TextBox ID="txtemail"   class="form-control" placeholder="Enter Email Address" runat="server"></asp:TextBox>
                  <%--  <input type="email" class="form-control" name="txtemail" placeholder="Email Address" required="">--%>
                </div>
            </div>
            
            <div class="input-group">
                <span class="input-group-addon">
                    <i class="zmdi zmdi-account"></i>
                </span>
             <div class="form-line">

                    <asp:DropDownList ID="ddlYear" runat="server" AutoPostBack="true" Height="25px" Width="129px" OnSelectedIndexChanged="ddlYear_SelectedIndexChanged">
                    <asp:ListItem>Select Year</asp:ListItem>
                    <asp:ListItem>1st Year</asp:ListItem>
                    <asp:ListItem>2nd Year</asp:ListItem>
                    <asp:ListItem>3rd Year</asp:ListItem>
                    <asp:ListItem>4th Year</asp:ListItem>
                  
                </asp:DropDownList>
             </div>
                    </div>

                <div class="input-group">
                <span class="input-group-addon">
                    <i class="zmdi zmdi-account"></i>
                </span>
             <div class="form-line">

                    <asp:DropDownList ID="ddlSem" runat="server" Height="25px" Width="129px">
                    <asp:ListItem>Select Sem</asp:ListItem>
                  
                </asp:DropDownList>
             </div>
                    </div>
            

                <div class="input-group">
                <span class="input-group-addon">
                    <i class="zmdi zmdi-account"></i>
                </span>
             <div class="form-line">

                    <asp:DropDownList ID="ddlCategory" runat="server" Height="25px" Width="129px">
                    <asp:ListItem>Select Category</asp:ListItem>
                    <asp:ListItem>OBC</asp:ListItem>
                    <asp:ListItem>SC</asp:ListItem>
                    <asp:ListItem>ST</asp:ListItem>
                    <asp:ListItem>4th Year</asp:ListItem>
                  
                </asp:DropDownList>
             </div>
                    </div>


                
                <div class="input-group">
                <span class="input-group-addon">
                    <i class="zmdi zmdi-account"></i>
                </span>
             <div class="form-line">

                    <asp:DropDownList ID="ddlSch" runat="server" Height="25px" Width="129px">
                    <asp:ListItem>Scholership</asp:ListItem>
                        <asp:ListItem>Yes</asp:ListItem>
                        <asp:ListItem>No</asp:ListItem>
                  
                </asp:DropDownList>
             </div>
                    </div>



               
            <div class="input-group">
                <span class="input-group-addon">
                    <i class="zmdi zmdi-lock"></i>
                </span>
                <div class="form-line">
                      <asp:TextBox ID="txtUsername"   class="form-control" placeholder="Enter User Name" runat="server"></asp:TextBox>
                    <%--<input type="text" class="form-control" name="txtUsername" placeholder="Username" required="" autofocus>--%>
                </div>
            </div>
           
            
            <div class="text-center">
                <asp:Button ID="Button1" runat="server"  class="btn btn-raised g-bg-cyan waves-effect" Text="Submit" OnClick="Button1_Click" />
                <%--<input type="submit" runat="server" class="btn btn-raised g-bg-cyan waves-effect" value="SIGN UP"/>--%>
              <%--  <a href="RegistrationSuccess.aspx" class="btn btn-raised g-bg-cyan waves-effect" type="submit">SIGN UP</a>--%>
            </div>
            <div class="m-t-10 m-b--5 align-center">
                <a href="StudentLogin.aspx">You already have a registration?</a>
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

<!-- Mirrored from thememakker.com/swift/hospital/sign-up.html by HTTrack Website Copier/3.x [XR&CO'2014], Sun, 26 Feb 2017 17:11:49 GMT -->
</html>