<%-- 
    Document   : header
    Created on : 15 Jun 2024, 1:22:57 pm
    Author     : afiqa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/basicStyle.css">
        <title>JSP Page</title>
    </head>
    <body>
        <!-- Nav Bar -->
        <header>
            <nav>
                <img class="nav-logo" src="images/epicationLogo.svg" alt="">
                <div class="menu-toggle" id="mobile-menu">
                    <i class="fas fa-bars"></i>
                    <i class="fas fa-times"></i>
                </div>
                <ul class="nav-bar">
                    <li><a href="">Home</a></li>
                    <li><a href="tripForm.jsp">Add Trip</a></li>
                    <li><a href="viewAddImage">Add Image</a></li>
                    <li><a href="viewAllTrips">All Trips (Admin)</a></li>
                    <li><a href="viewAllTripUser">All Trips (User)</a></li>
                    <li><a href="signInUser.html" class="button" id="resp-btn-top">Sign In</a></li>
                </ul>        
            </nav>
            <div class="nav-button">
                <a href="signInUser.html" class="button" id="resp-btn" style="opacity: 0%">Sign In</a>
            </div>
        </header>
    </body>
    <script>
        document.addEventListener('DOMContentLoaded', function () {
            const menuToggle = document.getElementById('mobile-menu');
            const navBar = document.querySelector('.nav-bar');

            menuToggle.addEventListener('click', function () {
                menuToggle.classList.toggle('active');
                navBar.classList.toggle('active');
            });
        });
    </script>
    <script src="script.js"></script>
</html>
