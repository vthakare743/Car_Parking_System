<%@ Page Language="C#" AutoEventWireup="true" CodeFile="MakePayment.aspx.cs" Inherits="Registration" %>

<!DOCTYPE html>
<html>

<head>  
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=Edge">
<meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
<title>Admin</title>
<!-- Favicon-->
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet" type="text/css">
<link rel="icon" href="favicon.ico" type="image/x-icon">
<!-- Custom Css -->
<link href="../assets/css/main.css" rel="stylesheet">
<link href="../assets/css/login.css" rel="stylesheet">

<!-- Swift Themes. You can choose a theme from css/themes instead of get all themes -->
<link href="../assets/css/themes/all-themes.css" rel="stylesheet" />
</head>
<body class="login-page authentication">

<div class="container">
    <div class="card-top"></div>
    <div class="card">
        <h1 class="title"><span></span>Make Payment</h1>
        <div class="col-md-12">
            <form id="sign_up" class="col-xs-12" runat="server" action="#" method="post">            
           

            <div class="input-group">
                <span class="input-group-addon">
                    <i class="zmdi zmdi-account"></i>
                </span>
                <div class="form-line">
                    <asp:Label ID="lblFees" ForeColor="Red" Font-Bold="true" runat="server" Text="Total Fees"></asp:Label>
                </div>
            </div>


            <div class="input-group">
                <span class="input-group-addon">
                    <i class="zmdi zmdi-account"></i>
                </span>
                <div class="form-line">
                     <asp:Label ID="lblmode" ForeColor="Red" Font-Bold="true" runat="server" Text="Total Mode"></asp:Label>
                </div>
            </div>


             <div class="input-group">
                <span class="input-group-addon">
                    <i class="zmdi zmdi-account"></i>
                </span>
                <div class="form-line">
                     <asp:Label ID="lblPaidFees" ForeColor="Red" Font-Bold="true" runat="server" Text="Paid Fees : 15000"></asp:Label>
                </div>
            </div>
                 <div class="input-group">
                <span class="input-group-addon">
                    <i class="zmdi zmdi-account"></i>
                </span>
                <div class="form-line">
                     <asp:Label ID="lblRemaining" ForeColor="Red" Font-Bold="true" runat="server" Text="Remaining Fees : 20000"></asp:Label>
                </div>
            </div>


                   <div class="input-group">
                <span class="input-group-addon">
                    <i class="zmdi zmdi-account"></i>
                </span>
             <div class="form-line">

              <asp:TextBox ID="txtPay"  class="form-control" placeholder="Enter Pay Amount" runat="server"></asp:TextBox>
             </div>
                    </div>
               
                

            <div class="input-group">
                <span class="input-group-addon">
                    <i class="zmdi zmdi-account"></i>
                </span>
             <div class="form-line">

                    <asp:DropDownList ID="ddlYear" runat="server" Height="25px" Width="129px">
                    <asp:ListItem>Select Bank</asp:ListItem>
                    <asp:ListItem>SBI Bank</asp:ListItem>
                    <asp:ListItem>ICICI Bank</asp:ListItem>
                    <asp:ListItem>BOI</asp:ListItem>
                    <asp:ListItem>Axis Bank</asp:ListItem>
                  
                </asp:DropDownList>
             </div>
                    </div>
               

             <div class="input-group">
                <span class="input-group-addon">
                    <i class="zmdi zmdi-account"></i>
                </span>
             <div class="form-line">

              <asp:TextBox ID="txtCardNo"  class="form-control" placeholder="Enter Card Details" runat="server"></asp:TextBox>
             </div>
                    </div>
               
                
                    <div class="input-group"> <span class="input-group-addon"> <i class="zmdi zmdi-lock"></i> </span>
                    <div class="form-line">
                            <asp:TextBox ID="txtCVVNo"  TextMode="Password" class="form-control" placeholder="Enter CVV No" runat="server"></asp:TextBox>
                            
                    </div>
                  </div>

           
               
               
               
        
              

            <div class="text-center">
                <asp:Button ID="Button1" runat="server"  class="btn btn-raised g-bg-cyan waves-effect" Text="Submit" OnClick="Button1_Click" />
                <%--<input type="submit" runat="server" class="btn btn-raised g-bg-cyan waves-effect" value=" ADD "/>--%>
              <%--  <a href="RegistrationSuccess.aspx" class="btn btn-raised g-bg-cyan waves-effect" type="submit">SIGN UP</a>--%>
            </div>

                
           
          
            <div class="m-t-10 m-b--5 align-center">
                <a href="StudentDefault.aspx">Student Home Page</a>
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