<%-- 
    Document   : view
    Created on : 16 Jun 2024, 1:13:31 pm
    Author     : Fareed Dinn
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="icon" type="image/x-icon" href="images/epicationLogo.svg">
        <title>Epication | Display Trips</title>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">
        <link rel="stylesheet" href="css/home.css">
        <link rel="stylesheet" href="css/basicStyle.css">
        <link rel="stylesheet" href="css/trip.css">

    </head>
    <body>
        <jsp:include page="header.jsp"/>
        <section>
            <div class="display-trip">
                <h1 style="margin-left:60px;margin-top:30px">Available Trip</h1>
                <a href="tripForm.jsp" style="margin-left:60px">Balik ke add trip</a>
                <div class="table-wrapper">
                    <table style="margin-bottom:50px;max-width: 100%;">
                        <c:forEach var="item" items="${trips}">
                            <tr>
                                <c:if test="${not empty item.tripImage}">
                                    <td><img src="data:image/jpeg;base64,${item.tripPicString}" class="gambar-display"></td>
                                    </c:if>
                                    <c:if test="${empty item.tripImage}">
                                    <td><img src="images/imagePlaceholder.jpg" class="gambar-display"></td>
                                    </c:if>
                                <td style="width:45vw;">
                                    <p>Package : <strong>${item.tripName}</strong></p>
                                    <p>Description : ${item.tripDesc}</p>
                                    <p>Price : RM ${item.tripPrice}</p>
                                    <p>Pax : ${item.tripPax}</p>
                                    <p>Departure Location : ${item.departureLocation}</p>
                                    <p>Contact Information : ${item.contactInfo}</p>
                                    <p>View itinerary : <a href="https://wa.me/+6${item.contactInfo}?text=Itinerary%20for%20${item.tripName}"  style="text-decoration: none">Click here</a></p>
                                </td>
                                <td style="text-align: center">
                                    <a href="" class="btn-book-now">Book now</a>
                                </td>
                            </tr>
                            <tr>
                                <td></td>
                                <td><hr style="text-align: center; border-style: solid; border-width: 2px 0 0;"></td>
                                <td> </td>
                            </tr>
                        </c:forEach> 
                    </table>
                </div>
            </div>
        </section>

        <jsp:include page="footer.jsp"/>
        <script src="script.js"></script>
    </body>
</html>
