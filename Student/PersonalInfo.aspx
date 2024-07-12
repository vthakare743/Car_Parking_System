<%@ Page Language="C#" AutoEventWireup="true" CodeFile="PersonalInfo.aspx.cs" Inherits="Registration" %>

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
<link href="../assets/css/main.css" rel="stylesheet">
<link href="../assets/css/login.css" rel="stylesheet">

<!-- Swift Themes. You can choose a theme from css/themes instead of get all themes -->
<link href="../assets/css/themes/all-themes.css" rel="stylesheet" />
</head>
<body class="login-page authentication">

<div class="container">
    <div class="card-top"></div>
    <div class="card">
        <h1 class="title"><span></span>Personal Info</h1>
        <div class="col-md-12">
            <form id="sign_up" runat="server">
            <div class="input-group">
                <span class="input-group-addon">
                    <i class="zmdi zmdi-account"></i>
                </span>
                <div class="form-line">
                    <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="100%" AutoGenerateRows="False" BackColor="Black" BorderColor="#DEDFDE" BorderWidth="1px" CellPadding="4" DataKeyNames="sid" DataSourceID="SqlDataSource1" Font-Size="Medium" ForeColor="Black" GridLines="Vertical" BorderStyle="None">
                        <AlternatingRowStyle BackColor="White" />
                        <EditRowStyle BackColor="#CE5D5A" ForeColor="Black" Font-Bold="True" />
                        <Fields>
                            <asp:BoundField DataField="sid" HeaderText="SID" SortExpression="sid" InsertVisible="False" ReadOnly="True" />
                            <asp:BoundField DataField="sname" HeaderText="Student" SortExpression="sname" />
                            <asp:BoundField DataField="email" HeaderText="Email" SortExpression="email" />
                           
                            <asp:BoundField DataField="year" HeaderText="Year" SortExpression="year" />
                            <asp:BoundField DataField="category" HeaderText="Category" SortExpression="category" />
                            <asp:BoundField DataField="username" HeaderText="USer Name" SortExpression="username" />
                            <asp:BoundField DataField="pwd" HeaderText="Password" SortExpression="pwd" />
                            <asp:CommandField ButtonType="Button" ShowEditButton="True" />
                        </Fields>
                        <FooterStyle BackColor="#CCCC99" />
                        <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                        <RowStyle BackColor="#F7F7DE" />
                    </asp:DetailsView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:StudentFeesDBConnectionString %>" SelectCommand="SELECT [sid], [sname], [email], [year], [sem], [category], [username], [pwd] FROM [StudentMaster] WHERE ([sid] = @sid)" DeleteCommand="DELETE FROM [StudentMaster] WHERE [sid] = @sid" InsertCommand="INSERT INTO [StudentMaster] ([sname], [email], [year], [sem], [category], [username], [pwd]) VALUES (@sname, @email, @year, @sem, @category, @username, @pwd)" UpdateCommand="UPDATE [StudentMaster] SET [sname] = @sname, [email] = @email, [year] = @year, [sem] = @sem, [category] = @category, [username] = @username, [pwd] = @pwd WHERE [sid] = @sid">
                        <DeleteParameters>
                            <asp:Parameter Name="sid" Type="Int32" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="sname" Type="String" />
                            <asp:Parameter Name="email" Type="String" />
                            <asp:Parameter Name="year" Type="String" />
                            <asp:Parameter Name="sem" Type="String" />
                            <asp:Parameter Name="category" Type="String" />
                            <asp:Parameter Name="username" Type="String" />
                            <asp:Parameter Name="pwd" Type="String" />
                        </InsertParameters>
                        <SelectParameters>
                            <asp:SessionParameter Name="sid" SessionField="sid" Type="Int32" />
                        </SelectParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="sname" Type="String" />
                            <asp:Parameter Name="email" Type="String" />
                            <asp:Parameter Name="year" Type="String" />
                            <asp:Parameter Name="sem" Type="String" />
                            <asp:Parameter Name="category" Type="String" />
                            <asp:Parameter Name="username" Type="String" />
                            <asp:Parameter Name="pwd" Type="String" />
                            <asp:Parameter Name="sid" Type="Int32" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                </div>
            </div>
          
           
            

            <div class="text-center">
                <asp:Button ID="Button1" runat="server"  class="btn btn-raised g-bg-cyan waves-effect" Text="Home Page" OnClick="Button1_Click" />
                <%--<input type="submit" runat="server" class="btn btn-raised g-bg-cyan waves-effect" value=" ADD "/>--%>
              <%--  <a href="RegistrationSuccess.aspx" class="btn btn-raised g-bg-cyan waves-effect" type="submit">SIGN UP</a>--%>
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