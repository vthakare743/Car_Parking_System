<%@ Page Language="C#" AutoEventWireup="true" CodeFile="EditProfile.aspx.cs" Inherits="Admin_EditProfile" %>

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
        <h1 class="title"><span></span>Edit Profile</h1>
        <div class="col-md-12">
            <form id="sign_up" class="col-xs-12" runat="server" action="#" method="post">            
           
              <div class="input-group">
                <span class="input-group-addon">
                    <i class="zmdi zmdi-account"></i>
                </span>
                <div class="form-line">
                    <asp:TextBox ID="txtPname"  class="form-control" placeholder="Enter Parking Name" runat="server"></asp:TextBox>
                    <%--<input type="text" class="form-control" name="txtCertification" placeholder="Certification Name" required="" autofocus>--%>
 <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="txtPname" Display="Dynamic" 
                         ErrorMessage="RequiredFieldValidator" ForeColor="#CC0000"  SetFocusOnError="True">Enter Parking Name !!!</asp:RequiredFieldValidator><span class="error"></span>

                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                                       ControlToValidate="txtPname" Display="Dynamic" 
                                        ErrorMessage="RegularExpressionValidator" ForeColor="Red" 
                                         SetFocusOnError="True" ValidationExpression="[a-zA-Z ]*$">Name Must be in alphabets!!!</asp:RegularExpressionValidator>

                </div>
            </div>


            <div class="input-group">
                <span class="input-group-addon">
                    <i class="zmdi zmdi-account"></i>
                </span>
             <div class="form-line">

                    <asp:DropDownList ID="ddlArea" runat="server" Height="25px" Width="129px">
                    <asp:ListItem>Select Area</asp:ListItem>
                    
                </asp:DropDownList>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="ddlArea" Display="Dynamic" 
                         ErrorMessage="RequiredFieldValidator" ForeColor="#CC0000"  SetFocusOnError="True"> Please Select The Area !!!</asp:RequiredFieldValidator><span class="error"></span>
             </div>
                    </div>
               

               <div class="input-group">
                <span class="input-group-addon">
                    <i class="zmdi zmdi-account"></i>
                </span>
                <div class="form-line">
                    <asp:TextBox ID="txtHalfDay"  class="form-control" placeholder="Enter Half Day Rate" runat="server"></asp:TextBox>
                    <%--<input type="text" class="form-control" name="txtCertification" placeholder="Certification Name" required="" autofocus>--%>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ControlToValidate="txtHalfDay" Display="Dynamic" 
                         ErrorMessage="RequiredFieldValidator" ForeColor="#CC0000"  SetFocusOnError="True"> Enter Your Half Day Rate !!!</asp:RequiredFieldValidator><span class="error"></span>
                </div>
            </div>

             <div class="input-group">
                <span class="input-group-addon">
                    <i class="zmdi zmdi-account"></i>
                </span>
                <div class="form-line">
                    <asp:TextBox ID="txtFullDayRate"  class="form-control" placeholder="Enter Full Day Rate" runat="server"></asp:TextBox>
                    <%--<input type="text" class="form-control" name="txtCertification" placeholder="Certification Name" required="" autofocus>--%>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                        ControlToValidate="txtFullDayRate" Display="Dynamic" 
                         ErrorMessage="RequiredFieldValidator" ForeColor="#CC0000"  SetFocusOnError="True"> Enter Your Full Day Rate !!!</asp:RequiredFieldValidator><span class="error"></span>
                </div>
            </div>
                  <div class="input-group">
                <span class="input-group-addon">
                    <i class="zmdi zmdi-account"></i>
                </span>
                <div class="form-line">
                    <asp:TextBox ID="txtslot"  class="form-control" placeholder="Total Slots" runat="server"></asp:TextBox>
                    <%--<input type="text" class="form-control" name="txtCertification" placeholder="Certification Name" required="" autofocus>--%>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                        ControlToValidate="txtslot" Display="Dynamic" 
                         ErrorMessage="RequiredFieldValidator" ForeColor="#CC0000"  SetFocusOnError="True"> Enter Your Slots !!!</asp:RequiredFieldValidator><span class="error"></span>
                </div>
            </div>


               <div class="input-group">
                <span class="input-group-addon">
                    <i class="zmdi zmdi-account"></i>
                </span>
                    <div class="form-line">
                        <asp:Label ID="lbltest" runat="server" Font-Size="Larger" ForeColor="Red" Text="Select Near By Parking:"></asp:Label>
                    </div>
                </div>

                
               <div class="input-group">
                
                    <div class="form-line">
                        <asp:CheckBoxList ID="chkArea" runat="server"></asp:CheckBoxList>
                    </div>
                </div>
            <div class="text-center">
                <asp:Button ID="Button1" runat="server"  class="btn btn-raised g-bg-cyan waves-effect" Text="Submit" OnClick="Button1_Click"  />
                <%--<input type="submit" runat="server" class="btn btn-raised g-bg-cyan waves-effect" value=" ADD "/>--%>
              <%--  <a href="RegistrationSuccess.aspx" class="btn btn-raised g-bg-cyan waves-effect" type="submit">SIGN UP</a>--%>
            </div>

                
           
          
            <div class="m-t-10 m-b--5 align-center">
                <a href="AdminDefault.aspx">Admin Home Page</a>
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