<%-- 
    Document   : addImage
    Created on : 16 Jun 2024, 12:32:00 am
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
        <jsp:include page="header.jsp"/>

        <%--Content--%>

        <div class="trip-content">
            <div class="trip-form">
                <div class="trip-detail">
                    <form action="uploadImages" method="post" enctype="multipart/form-data">
                        <p style="font-size:1.9vw">Add Image Trip</p>
                        <a href="tripForm.jsp" style="">Balik ke add trip</a>
                        <table>
                            <tr>
                                <td><label>Trip ID - Name</label></td>
                                <td>
                                    <select class="trip-input" name="tripID">
                                        <c:forEach var="item" items="${trips}">
                                            <c:if test="${empty item.tripImage}">
                                                <option value="${item.tripID}">${item.tripID} - ${item.tripName}</option>
                                            </c:if>
                                        </c:forEach>                                    
                                    </select>
                                </td>
                            </tr>
                            <tr>
                                <td><label>Trip Image</label></td>
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
        <jsp:include page="footer.jsp"/>
        <script src="script.js"></script>
    </body>
</html>
