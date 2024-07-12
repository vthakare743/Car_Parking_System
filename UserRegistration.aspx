<%@ Page Language="C#" AutoEventWireup="true" CodeFile="UserRegistration.aspx.cs" Inherits="UserRegistration" %>

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
        <h1 class="title"><span>User</span>Register <div class="msg">Register a new user</div></h1>
        <div class="col-md-12">
            <form id="sign_up" class="col-xs-12" runat="server" action="#" method="post">    
            <div class="input-group">
                <span class="input-group-addon">
                    <i class="zmdi zmdi-account"></i>
                </span>
                <div class="form-line">
                      <asp:TextBox ID="txtname"  class="form-control" placeholder="Enter Name" runat="server"></asp:TextBox>
                    <%--<input type="text" class="form-control" name="txtname" placeholder="Enter Name" required="" autofocus>--%>
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="please enter the name"
                 ForeColor="Red" ControlToValidate="txtname" Display="Dynamic" SetFocusOnError="True"></asp:RequiredFieldValidator>

               <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtname" Display="Dynamic" 
                 ForeColor="Red" SetFocusOnError="True" ValidationExpression="[a-z A-Z]*$" ErrorMessage="  Name must be alphabets">

               </asp:RegularExpressionValidator>
                </div>
            </div>
            <div class="input-group">
                <span class="input-group-addon">
                    <i class="zmdi zmdi-email"></i>
                </span>
                <div class="form-line">
                     <asp:TextBox ID="txtemail"   class="form-control" placeholder="Enter Email Address" runat="server"></asp:TextBox>
                  <%--  <input type="email" class="form-control" name="txtemail" placeholder="Email Address" required="">--%>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server"  Display="Dynamic" SetFocusOnError="True"
                   ForeColor="Red"  ControlToValidate="txtemail" ErrorMessage="please enter the email"></asp:RequiredFieldValidator>

                    <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" 
                      ErrorMessage="email must be proper format"  ControlToValidate="txtemail" Display="Dynamic" SetFocusOnError="True"
                      ForeColor="Red"  ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([.+]\w+)*"></asp:RegularExpressionValidator>
                </div>
            </div>
            <div class="input-group">
                <span class="input-group-addon">
                    <i class="zmdi zmdi-account"></i>
                </span>
                <div class="form-line">
                      <asp:TextBox ID="txtmob"  class="form-control" placeholder="Enter Mobile No" runat="server"></asp:TextBox>
                    <%--<input type="text" class="form-control" name="txtname" placeholder="Enter Name" required="" autofocus>--%>
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="please enter mobile no"
                        Display="Dynamic" ForeColor="Red" SetFocusOnError="True" ControlToValidate="txtmob"></asp:RequiredFieldValidator>

                   <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                      ErrorMessage="mobile no must be proper format"  ControlToValidate="txtmob" Display="Dynamic"
                       SetFocusOnError="True" ForeColor="Red"
                        ValidationExpression="\d{10}"></asp:RegularExpressionValidator>
                </div>
            </div>
            <div class="input-group">
                <span class="input-group-addon">
                    <i class="zmdi zmdi-account"></i>
                </span>
                <div class="form-line">
                      <asp:TextBox ID="txtcity"  class="form-control" placeholder="Enter City" runat="server"></asp:TextBox>
                    <%--<input type="text" class="form-control" name="txtname" placeholder="Enter Name" required="" autofocus>--%>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" Display="Dynamic" SetFocusOnError="True"
                     ForeColor="Red"  ControlToValidate="txtcity" ErrorMessage="please enter the city"></asp:RequiredFieldValidator>
           
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtcity" Display="Dynamic" 
                 ForeColor="Red" SetFocusOnError="True" ValidationExpression="[a-z A-Z]*$" ErrorMessage=" City  name must be alphabets">

               </asp:RegularExpressionValidator>
                </div>
            </div>
             
               
            <div class="input-group">
                <span class="input-group-addon">
                    <i class="zmdi zmdi-lock"></i>
                </span>
                <div class="form-line">
                      <asp:TextBox ID="txtUsername"   class="form-control" placeholder="Enter User Name" runat="server"></asp:TextBox>
                    <%--<input type="text" class="form-control" name="txtUsername" placeholder="Username" required="" autofocus>--%>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" SetFocusOnError="True" ForeColor="Red"
                     ControlToValidate="txtUsername" Display="Dynamic" ErrorMessage="please enter the userid"></asp:RequiredFieldValidator>
                </div>
            </div>
           <div class="input-group">
                <span class="input-group-addon">
                    <i class="zmdi zmdi-lock"></i>
                </span>
                <div class="form-line">
                      <asp:TextBox ID="txtpass"  class="form-control" placeholder="Enter Password" runat="server"></asp:TextBox>
                    <%--<input type="text" class="form-control" name="txtname" placeholder="Enter Name" required="" autofocus>--%>
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                        ControlToValidate="txtpass" Display="Dynamic" 
                         ErrorMessage="RequiredFieldValidator" ForeColor="#CC0000"  SetFocusOnError="True">Enter Your Password !!!</asp:RequiredFieldValidator><span class="error"></span>
                </div>
            </div>
            
            <div class="text-center">
                <asp:Button ID="Button1" runat="server"  class="btn btn-raised g-bg-cyan waves-effect" Text="Submit" OnClick="Button1_Click" />
                <%--<input type="submit" runat="server" class="btn btn-raised g-bg-cyan waves-effect" value="SIGN UP"/>--%>
              <%--  <a href="RegistrationSuccess.aspx" class="btn btn-raised g-bg-cyan waves-effect" type="submit">SIGN UP</a>--%>
            </div>
           <%-- <div class="m-t-10 m-b--5 align-center">
                <a href="StudentLogin.aspx">You already have a registration?</a>
            </div>--%>
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