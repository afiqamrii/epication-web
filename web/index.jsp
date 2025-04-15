<%-- 
    Document   : index
    Created on : 13 Jun 2024, 7:07:20 pm
    Author     : afiqa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="icon" type="image/x-icon" href="images/epicationLogo.svg">
        <title>Epication | Home</title>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">
        <link rel="stylesheet" href="css/home.css">
        <link rel="stylesheet" href="css/basicStyle.css">

    </head>
    <body>
        <jsp:include page="header.jsp"/>
 
        <!-- Content -->
        <div class="container">
            <div class="content">
                <p class="heading"><b><span>Looking</span> for Farid Dinn <span>Price</span> to Rent a Car</b></p>
                <p class="sub-heading">RentWise is your solution !</p>
                <div class="content-button">
                    <a href="tripForm.jsp" class="button">New Trip</a>
                    <a href="viewAllTrip" class="button">Get Trip</a>
                </div>        
            </div>
        </div>

        <jsp:include page="footer.jsp"/>

        <script src="script.js"></script>
    </body>
</html>
