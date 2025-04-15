/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Fareed Dinn
 */
public class editTrip extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

        PrintWriter out = response.getWriter();
        int tripID = Integer.parseInt(request.getParameter("tripID"));
        String tripName = request.getParameter("tripName");
        String tripDesc = request.getParameter("tripDesc");
        String departureLocation = request.getParameter("departureLocation");
        String price = request.getParameter("tripPrice");
        int pax = Integer.parseInt(request.getParameter("tripPax"));
        String contactInfo = request.getParameter("contactInfo");

        Trip trip = EpicationDAO.getSelectedTrip(tripID);
        trip.setTripName(tripName);
        trip.setTripDesc(tripDesc);
        trip.setDepartureLocation(departureLocation);
        trip.setTripPrice(price);
        trip.setContactInfo(contactInfo);
        trip.setTripPax(pax);
        
        int status = EpicationDAO.updateTrip(trip);
        if(status>0){
//            response.sendRedirect("editImageRet?tripID="+tripID);
            response.sendRedirect("viewAllTrips");
        }

//        int status = TripDAO.addTrip(trip);

    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
