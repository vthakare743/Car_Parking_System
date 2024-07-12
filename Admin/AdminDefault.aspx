<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="AdminDefault.aspx.cs" Inherits="Admin_AddminDefaultNew" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">




     <div class="container-fluid">
        <div class="block-header">
            <h3>Welcome To Admin Section</h3>
            
        </div>
        
        <div class="row clearfix">
            <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
                <div class="info-box-4 hover-zoom-effect">
                    <div class="icon"> <i class="zmdi"><asp:Image ID="Image3" Width="50px" ImageUrl="~/Images/CheckSlot.jpg" runat="server" /></i> </div>
                    <div class="content">
                        <h3><a href="NewParking.aspx">New Parking</a></h3>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
                <div class="info-box-4 hover-zoom-effect">
                    <div class="icon"> <i class="zmdi"><asp:Image ID="Image2" Width="50px" ImageUrl="~/Images/parking.jpg" runat="server" /></i> </div>
                    <%--<div class="icon"> <i class="zmdi zmdi-account col-green"></i> </div>--%>
                    <div class="content">
                         <h3><a href="ViewParking.aspx">View Parking</a></h3>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
                <div class="info-box-4 hover-zoom-effect">
                     <div class="icon"> <i class="zmdi"><asp:Image ID="Image1" Width="50px" ImageUrl="~/Images/CheckSlot.jpg" runat="server" /></i> </div>
                    <%--<div class="icon"> <i class="zmdi zmdi-bug col-blush"></i> </div>--%>
                    <div class="content">
                        <h3><a href="ViewBooking.aspx">View Booking</a></h3>
                    </div>
                </div>
            </div>
          
        </div>
        <div class="row clearfix">
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                <div class="card">
                    <div class="header">
                      
                        
                           
                            <!-- Start WOWSlider.com BODY section --> <!-- add to the <body> of your page -->
	<div id="wowslider-container1">
	<div class="ws_images"><ul>
		<li><img src="../data1/images/slide1.png" alt="3" title="3" id="wows1_0"/></li>
		<li><img src="../data1/images/slide 2.jpg" alt="1" title="1" id="wows1_1"/></li>
		<li><img src="../data1/images/slider 4.jpg" alt="bootstrap carousel" title="4" id="wows1_2"/></a></li>
		
	</div>

	<div class="ws_shadow"></div>
	</div>	
	<script type="text/javascript" src="../engine1/wowslider.js"></script>
	<script type="text/javascript" src="../engine1/script.js"></script>



                        </ul>
                    </div>
                    <div class="body">
                        <canvas id="line_chart" height="70"></canvas>
                    </div>
                </div>
            </div>
        </div>
       
	</div>




</asp:Content>

