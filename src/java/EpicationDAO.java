
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
/**
 *
 * @author Fareed Dinn
 */
public class EpicationDAO {

    public static Connection getConnection() {
        Connection con = null;
        try {
            Class.forName("com.mysql.jdbc.Driver"); // Updated driver class name
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/epication", "root", "admin");
        } catch (Exception e) {
            e.printStackTrace();
        }
        return con;
    }

    public static int addTrip(Trip trip) {
        int status = 0;
        try {
            Connection con = TripDAO.getConnection();
            String query = "insert into trip(tripName, tripDesc, tripPrice, departureLocation, contactInfo, tripPax) values (?,?,?,?,?,?)";
            PreparedStatement ps = con.prepareStatement(query);
            ps.setString(1, trip.getTripName());
            ps.setString(2, trip.getTripDesc());
            ps.setString(3, trip.getTripPrice());
            ps.setString(4, trip.getDepartureLocation());
            ps.setString(5, trip.getContactInfo());
            ps.setInt(6, trip.getTripPax());
            status = ps.executeUpdate();
            con.close();

        } catch (SQLException ex) {
            ex.printStackTrace();
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return status;
    }

    public static Trip getTripID(String name) {
        Trip trip = new Trip();
        try {
            Connection con = TripDAO.getConnection();
            PreparedStatement ps = con.prepareStatement("select * where tripName=?");
            ps.setString(1, name);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                trip.setTripID(rs.getInt("tripID"));
            }

        } catch (SQLException ex) {
        }
        return trip;
    }

    public static List<Trip> getAllTrip() {
        List<Trip> trips = new ArrayList<Trip>();

        try {
            Connection con = TripDAO.getConnection();
            PreparedStatement ps = con.prepareStatement("select tripID,tripName,tripImage from trip");
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Trip trip = new Trip();
                trip.setTripID(rs.getInt("tripID"));
                trip.setTripName(rs.getString("tripName"));
                trip.setTripImage(rs.getBytes("tripImage"));
                trips.add(trip);
            }
        } catch (SQLException ex) {
        }
        return trips;
    }

    public static List<Trip> getAllTrips() {
        List<Trip> trips = new ArrayList<Trip>();

        try {
            Connection con = TripDAO.getConnection();
            PreparedStatement ps = con.prepareStatement("select * from trip");
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Trip trip = new Trip();
                trip.setTripID(rs.getInt("tripID"));
                trip.setTripName(rs.getString("tripName"));
                trip.setTripDesc(rs.getString("tripDesc"));
                trip.setTripPrice(rs.getString("tripPrice"));
                trip.setDepartureLocation(rs.getString("departureLocation"));
                trip.setContactInfo(rs.getString("contactInfo"));
                trip.setTripImage(rs.getBytes("tripImage"));
                trip.setTripPax(rs.getInt("tripPax"));
                trips.add(trip);
            }
        } catch (SQLException ex) {
        }
        return trips;
    }

    public static int deleteTrip(int id) {
        int status = 0;
        try {
            Connection con = TripDAO.getConnection();
            PreparedStatement ps = con.prepareStatement("delete from trip where tripID=?");
            ps.setInt(1, id);

            status = ps.executeUpdate();

            con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return status;
    }

    public static Trip getSelectedTrip(int id) {
        Trip trip = new Trip();
        try {
            Connection con = TripDAO.getConnection();
            PreparedStatement ps = con.prepareStatement("select * from trip where tripID=?");
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                trip.setTripID(rs.getInt("tripID"));
                trip.setTripName(rs.getString("tripName"));
                trip.setTripDesc(rs.getString("tripDesc"));
                trip.setTripPrice(rs.getString("tripPrice"));
                trip.setDepartureLocation(rs.getString("departureLocation"));
                trip.setContactInfo(rs.getString("contactInfo"));
                trip.setTripImage(rs.getBytes("tripImage"));
                trip.setTripPax(rs.getInt("tripPax"));
            }
            con.close();
        } catch (Exception exp) {
            exp.printStackTrace();
        }
        return trip;
    }

    public static int updateTrip(Trip trip) {
        int status = 0;
        try {
            Connection con = TripDAO.getConnection();
            PreparedStatement ps = con.prepareStatement("update trip set tripName=?,tripDesc=?,tripPrice=?,departureLocation=?, contactInfo=?, tripPax=? where tripID=?");
            ps.setString(1, trip.getTripName());
            ps.setString(2, trip.getTripDesc());
            ps.setString(3, trip.getTripPrice());
            ps.setString(4, trip.getDepartureLocation());
            ps.setString(5, trip.getContactInfo());
            ps.setInt(6, trip.getTripPax());
            ps.setInt(7, trip.getTripID());

            status = ps.executeUpdate();

            con.close();
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return status;
    }

}
