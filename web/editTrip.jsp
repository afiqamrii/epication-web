<%-- 
    Document   : editTrip
    Created on : 16 Jun 2024, 9:49:03 pm
    Author     : Fareed Dinn
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="icon" type="image/x-icon" href="images/epicationLogo.svg">
        <title>Epication | Edit Form</title>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">
        <link rel="stylesheet" href="css/home.css">
        <link rel="stylesheet" href="css/basicStyle.css">
        <link rel="stylesheet" href="css/trip.css">
    </head>
    <body>

        <div class="trip-content">
            <div class="trip-form">
                <div class="trip-detail">
                    <form action="editTrip" method="post">
                        <p style="font-size:1.9vw">Edit Trip</p>
                        <table>
                            <tr>
                                <td></td>
                                <td><input type="hidden" name="tripID" value="${trip.getTripID()}"></td>
                            </tr>
                            <tr>
                                <td><label>Trip Name</label></td>
                                <td><input type="text" name="tripName" required placeholder="Enter trip name" class="trip-input" value="${trip.getTripName()}"></td>
                            </tr>
                            <tr>
                                <td><label>Trip Description</label></td>
                                <td><input type="text" name="tripDesc" required placeholder="Enter trip description" class="trip-input" value="${trip.getTripDesc()}"></td>
                            </tr>
                            <tr>
                            <tr>
                                <td><label>Departure Location</label></td>
                                <td><input type="text" name="departureLocation" placeholder="Enter departure location" class="trip-input" value="${trip.getDepartureLocation()}"></td>
                            </tr> 
                            <tr>
                                <td><label>Price</label></td>
                                <td><input type="text" name="tripPrice" required placeholder="Enter price" class="trip-input" value="${trip.getTripPrice()}"></td>
                            </tr>
                            <tr>
                                <td><label>Pax</label></td>
                                <td><input type="number" name="tripPax" required placeholder="Enter pax" class="trip-input"></td>
                            </tr>
                            <tr>
                                <td><label>Contact Info</label></td>
                                <td><input type="text" name="contactInfo" required placeholder="Enter contact information" class="trip-input" value="${trip.getContactInfo()}"></td>
                            </tr>

                        </table>
                        <div style="text-align: center;margin-top:20px;">
                            <i style="text-align: center;font-size:15px;">Tap "Submit" if you're not updating the trip image.</i>
                        </div>
                        <div class="btn">
                            <button type="submit" class="trip-btnsub">Submit</button>
                            <a href="editImageRet?tripID=${trip.getTripID()}" class="trip-btnsub1" style="text-decoration: none">Edit Image</a>
                        </div>
                    </form>
                </div>
            </div>
        </div> 










    </body>
</html>
