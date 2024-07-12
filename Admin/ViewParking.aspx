<%@ Page Language="C#" AutoEventWireup="true" CodeFile="~/Admin/ViewParking.aspx.cs" Inherits="Registration" %>

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
    <div class="card-top">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </div>
    <div class="card">
        <h1 class="title"><span></span>View Parking</h1>
        <div class="col-md-12">
             <form id="sign_up" runat="server">
                 
            <div class="input-group">
                <span class="input-group-addon">
                    <i class="zmdi zmdi-account"></i>
                </span>
                <div class="form-line">
                   
                    <%--<input type="text" class="form-control" name="txtCertification" placeholder="Certification Name" required="" autofocus>--%>
                </div>
            </div>
          
                  <asp:Panel ID="Panel1" runat="server" ScrollBars="Both" Width="100%" Height="500px">
           <div class="input-group">
               
                <div class="form-line">
                  <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4"  DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Vertical" Width="100%" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                             <asp:CommandField  SelectText="&#9998;" ShowSelectButton="True" HeaderText="Edit" />
                              <asp:BoundField DataField="pid" HeaderText="PID"  ReadOnly="True" SortExpression="pid" />
                              <asp:BoundField DataField="pname" HeaderText="Parking Name" SortExpression="pname" />
                            
                             <asp:BoundField DataField="area" HeaderText="Area" SortExpression="area" />
                           
                              <asp:BoundField DataField="narea" HeaderText="Near area" SortExpression="narea" />
                              <asp:BoundField DataField="halfday" HeaderText="Halfday" SortExpression="halfday" />
                              <asp:BoundField DataField="fullday" HeaderText="Fullday" SortExpression="fullday" />
                              <asp:BoundField DataField="TotalSlots" HeaderText="Total Slots" SortExpression="TotalSlots" />
<%--                              <asp:BoundField DataField="RemainingSlots" HeaderText="RemainingSlots" SortExpression="RemainingSlots" />--%>
                           
                        </Columns>
                        <FooterStyle BackColor="#CCCC99" />
                        <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                        <RowStyle BackColor="#F7F7DE" />
                        <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#FBFBF2" />
                        <SortedAscendingHeaderStyle BackColor="#848384" />
                        <SortedDescendingCellStyle BackColor="#EAEAD3" />
                        <SortedDescendingHeaderStyle BackColor="#575357" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:StudentInfoDBConnectionString %>" DeleteCommand="DELETE FROM [ParkingMaster] WHERE [pid] = @pid" InsertCommand="INSERT INTO [ParkingMaster] ([pname], [area], [narea], [halfday], [fullday], [TotalSlots], [RemainingSlots]) VALUES (@pname, @area, @narea, @halfday, @fullday, @TotalSlots, @RemainingSlots)" SelectCommand="SELECT * FROM [ParkingMaster]" UpdateCommand="UPDATE [ParkingMaster] SET [pname] = @pname, [area] = @area, [narea] = @narea, [halfday] = @halfday, [fullday] = @fullday, [TotalSlots] = @TotalSlots, [RemainingSlots] = @RemainingSlots WHERE [pid] = @pid">
                        <DeleteParameters>
                            <asp:Parameter Name="pid" Type="Int32" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="pname" Type="String" />
                            <asp:Parameter Name="area" Type="String" />
                            <asp:Parameter Name="narea" Type="String" />
                            <asp:Parameter Name="halfday" Type="String" />
                            <asp:Parameter Name="fullday" Type="String" />
                            <asp:Parameter Name="TotalSlots" Type="String" />
                            <asp:Parameter Name="RemainingSlots" Type="String" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="pname" Type="String" />
                            <asp:Parameter Name="area" Type="String" />
                            <asp:Parameter Name="narea" Type="String" />
                            <asp:Parameter Name="halfday" Type="String" />
                            <asp:Parameter Name="fullday" Type="String" />
                            <asp:Parameter Name="TotalSlots" Type="String" />
                            <asp:Parameter Name="RemainingSlots" Type="String" />
                            <asp:Parameter Name="pid" Type="Int32" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ParkingAppDBConnectionString %>" SelectCommand="SELECT * FROM [ParkingMaster]" DeleteCommand="DELETE FROM [ParkingMaster] WHERE [pid] = @pid" InsertCommand="INSERT INTO [ParkingMaster] ([pname], [area], [narea], [halfday], [fullday], [TotalSlots], [RemainingSlots]) VALUES (@pname, @area, @narea, @halfday, @fullday, @TotalSlots, @RemainingSlots)" UpdateCommand="UPDATE [ParkingMaster] SET [pname] = @pname, [area] = @area, [narea] = @narea, [halfday] = @halfday, [fullday] = @fullday, [TotalSlots] = @TotalSlots, [RemainingSlots] = @RemainingSlots WHERE [pid] = @pid">
                        <DeleteParameters>
                            <asp:Parameter Name="pid" Type="Int32" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="pname" Type="String" />
                            <asp:Parameter Name="area" Type="String" />
                            <asp:Parameter Name="narea" Type="String" />
                            <asp:Parameter Name="halfday" Type="String" />
                            <asp:Parameter Name="fullday" Type="String" />
                            <asp:Parameter Name="TotalSlots" Type="String" />
                            <asp:Parameter Name="RemainingSlots" Type="String" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="pname" Type="String" />
                            <asp:Parameter Name="area" Type="String" />
                            <asp:Parameter Name="narea" Type="String" />
                            <asp:Parameter Name="halfday" Type="String" />
                            <asp:Parameter Name="fullday" Type="String" />
                            <asp:Parameter Name="TotalSlots" Type="String" />
                            <asp:Parameter Name="RemainingSlots" Type="String" />
                            <asp:Parameter Name="pid" Type="Int32" />
                        </UpdateParameters>
                            
                    </asp:SqlDataSource>
                    
                </div>
            </div>
             </asp:Panel>   
            

            <div class="text-center">
                <asp:Button ID="Button1" runat="server"  class="btn btn-raised g-bg-cyan waves-effect" Text="Home" OnClick="Button1_Click" />
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