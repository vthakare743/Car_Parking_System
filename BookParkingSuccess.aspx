<%@ Page Language="C#" AutoEventWireup="true" CodeFile="BookParkingSuccess.aspx.cs" Inherits="StudentLogin" %>

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
    <style type="text/css">
        .auto-style1 {
            font-weight: normal;
            font-size: 12px;
            color: #FFFFFF;
            text-transform: uppercase;
            vertical-align: middle;
            background-color: #FFFFFF;
        }
    </style>
</head>
<body class="login-page authentication">

<div class="container">
    <div class="card-top"></div>
    <div class="card">
        <h1 class="title">Book Parking <asp:Image ID="Image1" Width="50px" ImageUrl="~/Images/parking.jpg" runat="server" /></h1>
        <div class="col-md-12">
            <form id="sign_in" runat="server" method="POST">
                
               
             <div class="input-group">
                <span class="input-group-addon">
                    <i class="zmdi zmdi-account"></i>
                </span>
             <div class="form-line">
              <asp:Label ID="lblParking" runat="server" Font-Size="Larger" ForeColor="Red" Text="-----"></asp:Label>
             </div>
                    </div>

               
               <div class="input-group">
                <span class="input-group-addon">
                    <i class="zmdi zmdi-account"></i>
                </span>
             <div class="form-line">
              <asp:Label ID="lblHalf" runat="server" Font-Size="Larger" ForeColor="Red" Text="Half Day : -"></asp:Label>
             </div>
                    </div>
                
                <div class="input-group">
                <span class="input-group-addon">
                    <i class="zmdi zmdi-account"></i>
                </span>
             <div class="form-line">
              <asp:Label ID="lblFull" runat="server" Font-Size="Larger" ForeColor="Red" Text="Full Day : -"></asp:Label>
             </div>
                    </div> 
           
                 <div class="input-group">
                <span class="input-group-addon">
                    <i class="zmdi zmdi-account"></i>
                </span>
             <div class="form-line">
                     <asp:DropDownList ID="ddlSlots" runat="server" Height="25px" Width="159px">
                    <asp:ListItem>Select Time Slots</asp:ListItem>
                         <asp:ListItem>Half Day</asp:ListItem>
                         <asp:ListItem>Full Day</asp:ListItem>
                    
                </asp:DropDownList>
                 <asp:HiddenField ID="hfhalf" runat="server" />
                 <asp:HiddenField ID="hffull" runat="server" />
                 <asp:HiddenField ID="hfslots" runat="server" />
             </div>
                    </div>


                  <div class="input-group">
                <span class="input-group-addon">
                    <i class="zmdi zmdi-account"></i>
                </span>
             <div class="form-line">
                 <asp:TextBox ID="txtCustomer"  class="form-control" placeholder="Enter Your Name" runat="server"></asp:TextBox>
                 <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                            ErrorMessage="RegularExpressionValidator" ControlToValidate="txtCustomer" 
                            ForeColor="#FF3300" SetFocusOnError="True" 
                            ValidationExpression="[a-z A-Z ]*$" Display="Dynamic">Enter name in proper format</asp:RegularExpressionValidator>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                            ErrorMessage="RequiredFieldValidator" ControlToValidate="txtCustomer" 
                            Display="Dynamic" ForeColor="#FF3300" SetFocusOnError="True">Enter the name</asp:RequiredFieldValidator><span class="error"></span>
             </div>
                    </div>


                  <div class="input-group">
                <span class="input-group-addon">
                    <i class="zmdi zmdi-account"></i>
                </span>
             <div class="form-line">
                 <asp:TextBox ID="txtCarNo"  class="form-control" placeholder="Enter Car No" runat="server"></asp:TextBox>
                  <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                      ErrorMessage="RegularExpressionValidator"  ControlToValidate="txtCarNo" ForeColor="#FF3300" SetFocusOnError="True" 
                        ValidationExpression="\d{4}" Display="Dynamic">Enter Car No in proper format</asp:RegularExpressionValidator>
               <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                            ErrorMessage="RequiredFieldValidator" ControlToValidate="txtCustomer" 
                            Display="Dynamic" ForeColor="#FF3300" SetFocusOnError="True">Enter the Car No</asp:RequiredFieldValidator><span class="error"></span>
                 </div>
                   
             </div>
                    


                <div>
                        <div class="text-center">
                        <%--<a href="Admin/AdminDefault.aspx" class="btn btn-raised waves-effect g-bg-cyan" type="submit">SIGN IN</a>--%>
                       <asp:Button ID="Button1" runat="server"  class="btn btn-raised g-bg-cyan waves-effect" Text="Book & Pay" OnClick="Button1_Click1"  />
                    </div>

                    <div class="text-center">
                        <%--<a href="Admin/AdminDefault.aspx" class="btn btn-raised waves-effect g-bg-cyan" type="submit">SIGN IN</a>--%><span class="auto-style1">p</span></div>
                    
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