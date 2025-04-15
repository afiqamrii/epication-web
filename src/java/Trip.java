


import java.util.Base64;
import java.util.Date;

/**
 *
 * @author Fareed Dinn
 */
public class Trip {
    
    private int tripID;
    private String tripName;
    private String tripDesc;
    private byte[] tripImage;
    private String departureLocation;
    private String tripPrice;
    private String contactInfo;
    private String tripPicString;
    private int tripPax;

    public int getTripID() {
        return tripID;
    }

    public void setTripID(int tripID) {
        this.tripID = tripID;
    }

    public String getTripName() {
        return tripName;
    }

    public void setTripName(String tripName) {
        this.tripName = tripName;
    }

    public String getTripDesc() {
        return tripDesc;
    }

    public void setTripDesc(String tripDesc) {
        this.tripDesc = tripDesc;
    }

    public byte[] getTripImage() {
        return tripImage;
    }

    public void setTripImage(byte[] tripImage) {
        this.tripImage = tripImage;
    }

    public String getDepartureLocation() {
        return departureLocation;
    }

    public void setDepartureLocation(String departureLocation) {
        this.departureLocation = departureLocation;
    }

    public String getTripPrice() {
        return tripPrice;
    }

    public void setTripPrice(String tripPrice) {
        this.tripPrice = tripPrice;
    }


    public String getContactInfo() {
        return contactInfo;
    }

    public void setContactInfo(String contactInfo) {
        this.contactInfo = contactInfo;
    }

    public String getTripPicString() {
        return Base64.getEncoder().encodeToString(this.tripImage);
    }

    public void setTripPicString(String tripPicString) {
        this.tripPicString = tripPicString;
    }

    public int getTripPax() {
        return tripPax;
    }

    public void setTripPax(int tripPax) {
        this.tripPax = tripPax;
    }
    
    
    
}
