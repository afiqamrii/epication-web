<%-- 
    Document   : editImage
    Created on : 16 Jun 2024, 10:21:14 pm
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
        <title>Epication | Image Form</title>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">
        <link rel="stylesheet" href="css/home.css">
        <link rel="stylesheet" href="css/basicStyle.css">
        <link rel="stylesheet" href="css/trip.css">
    </head>
    <body>
        
        <div class="trip-content">
            <div class="trip-form">
                <div class="trip-detail">
                    <form action="uploadImages" method="post" enctype="multipart/form-data">
                        <p style="font-size:1.9vw">Add Image Trip</p>
                        <a href="tripForm.jsp">Balik ke add trip</a>
                        <table>
                            <tr>
                                <td> </td>
                                <td><input type="hidden" name="tripID" value="${trip.getTripID()}"></td>
                            </tr>
                            <tr>
                                <td>Current Image</td>
                                <c:if test="${not empty trip.getTripImage()}">
                                    <td><img src="data:image/jpeg;base64,${trip.getTripPicString()}" class="gambar-display" name="tripImage"></td>
                                    </c:if>
                                    <c:if test="${empty trip.getTripImage()}">
                                    <td><img src="images/imagePlaceholder.jpg" class="gambar-display"></td>
                                    </c:if>
                            </tr>
                            <tr>
                                <td><label>Update Image</label></td>
                                <td><input type="file" name="tripImage" required placeholder="Enter trip Image" class="trip-input2"></td>
                            </tr>
                        </table>
                        <div class="btn">
                            <button type="submit" class="trip-btnsub">Submit</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </body>
</html>
