<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Parking_Receipt.aspx.cs" Inherits="Parking_Receipt" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Parking Receipt</title>
    <script src="https://cdn.rawgit.com/davidshimjs/qrcodejs/gh-pages/qrcode.min.js"></script>
    <style>
        body {
            margin: 0;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #f0f0f0;
        }

        .receipt-container {
            display: flex;
            flex-wrap: wrap;
            align-items: center;
            justify-content: center;
            padding: 20px;
            box-sizing: border-box;
            background-color: #fff;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            max-width: 600px;
            margin: 50px auto;
        }

        h1 {
            text-align: center;
            color: #333;
            margin-bottom: 20px;
        }

        .left-section {
            margin-right: 20px;
        }

        .qrcode-container {
            width: 128px;
            height: 128px;
        }

        .receipt-details {
            display: flex;
            flex-direction: column;
            flex-grow: 1;
        }

        .detail {
            display: flex;
            justify-content: space-between;
            margin-bottom: 12px;
        }

        .label {
            font-weight: bold;
            color: #555;
            margin-right: 10px;
        }

        .value {
            color: #333;
        }

        @media screen and (max-width: 600px) {
            .receipt-container {
                margin: 20px;
            }
        }
    </style>
</head>
<body>

<div class="receipt-container">
    <div class="left-section">
        <!-- QR code container -->
        <div class="qrcode-container" id="qrcode"></div>
    </div>

    <div class="receipt-details">
        <h1>Parking Receipt</h1>

        <div class="detail">
            <span class="label"></span>
           
            <asp:Label ID="lblBookingID" runat="server" ></asp:Label>
        </div>

        <div class="detail">
            <span class="label">Parking Name:</span>
           <%-- <span class="value" id="lblParkingName">Sample Parking</span>--%>
            <asp:Label ID="lblParkingName" runat="server"></asp:Label>

        </div>
        <div class="detail">
            <span class="label">Customer Name:</span>
           <%-- <span class="value" id="lblParkingName">Sample Parking</span>--%>
            <asp:Label ID="lblCustomer" runat="server"></asp:Label>

        </div>


        <div class="detail">
            <span class="label">Mode:</span>
           <%-- <span class="value" id="lblMode">Some Mode</span>--%>
            <asp:Label ID="lblMode" runat="server" ></asp:Label>
        </div>

        <div class="detail">
            <span class="label">Amount:</span>
          <%--  <span class="value" id="lblAmount">$50.00</span>--%>
            <asp:Label ID="lblAmount" runat="server" ></asp:Label>
        </div>

        <div class="detail">
            <span class="label">Booking Date:</span>
            <%--<span class="value" id="lblBookingDate">2022-01-01</span>--%>
            <asp:Label ID="lblBookingDate" runat="server" ></asp:Label>
        </div>

        <%--<div class="detail">
            <span class="label">Valid Till Date:</span>--%>
            <%--<span class="value" id="lblValidTillDate">2022-01-08</span>--%>
           <%-- <asp:Label ID="lblValidTillDate" runat="server" ></asp:Label>
        </div>--%>
       <div class="detail">
    <span class="label">Valid Till Date:</span>
    <asp:Label ID="lblValidTillDate" runat="server"></asp:Label>
</div>
   

    </div>
</div>

<script src="https://cdn.rawgit.com/davidshimjs/qrcodejs/gh-pages/qrcode.min.js"></script>
<script>
    // Function to generate a QR code
    function generateQRCode(data) {
        var qrcode = new QRCode(document.getElementById("qrcode"), {
            text: data,
            width: 128,
            height: 128,
        });
    }

    // Retrieve values from server-side code
    var bookingID = '<%= lblBookingID.Text %>';
    var parkingName = '<%= lblParkingName.Text %>';
    var mode = '<%= lblMode.Text %>';
    var amount = '<%= lblAmount.Text %>';
    var bookingDate = '<%= lblBookingDate.Text %>';
    var validTillDate = '<%= lblValidTillDate.Text %>';

    // Format the data for QR code
    var qrData = `${bookingID},${parkingName},${mode},${amount},${bookingDate},${validTillDate}`;

    // Call the function to generate the QR code
    generateQRCode(qrData);
</script>
<center><div class="text-center"> <a href="Default.aspx">Home Page</a></div></center>
</body>
</html>