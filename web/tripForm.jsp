<%--
Document : tripForm
Created on : 14 Jun 2024, 10:34:59 pm
Author : Fareed Dinn
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="icon" type="image/x-icon" href="images/epicationLogo.svg">
        <title>Epication | Trip Form</title>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">
        <link rel="stylesheet" href="css/home.css">
        <link rel="stylesheet" href="css/basicStyle.css">
        <link rel="stylesheet" href="css/trip.css">

    </head>
    <body>

        <jsp:include page="header.jsp"/>

        <%--Content--%>

        <div class="trip-content">
            <div class="trip-form">
                <div class="trip-detail">
                    <form action="addTripp" method="post">
                        <p style="font-size:1.9vw">Add Trip</p>
                        <table>
<!--                            <tr>
                                <td><label>Latest Added </label></td>
                            </tr>-->
                            <tr>
                                <td><label>Trip Name</label></td>
                                <td><input type="text" name="tripName" required placeholder="Enter trip name" class="trip-input"></td>
                            </tr>
                            <tr>
                                <td><label>Trip Description</label></td>
                                <td><input type="text" name="tripDesc" required placeholder="Enter trip description" class="trip-input"></td>
                            </tr>
                            <tr>
                            <tr>
                                <td><label>Departure Location</label></td>
                                <td><input type="text" name="departureLocation" placeholder="Enter departure location" class="trip-input"></td>
                            </tr> 
                            <tr>
                                <td><label>Price</label></td>
                                <td><input type="number" name="tripPrice" required placeholder="Enter price" class="trip-input"></td>
                            </tr>
                            <tr>
                                <td><label>Pax</label></td>
                                <td><input type="number" name="tripPax" required placeholder="Enter pax" class="trip-input"></td>
                            </tr>
                            <tr>
                                <td><label>Contact Info</label></td>
                                <td><input type="number" name="contactInfo" required placeholder="Enter contact Eg : 0134567898" class="trip-input"></td>
                            </tr>

                        </table>
                        <div class="btn">
                            <button type="submit" class="trip-btnsub">Submit</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>

        <jsp:include page="footer.jsp"/>
        <script src="script.js"></script>
    </body>
</html>