
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

@WebServlet(name = "editImage", urlPatterns = {"/editImage"})
@MultipartConfig(maxFileSize = 161772162)//15mb
public class editImage extends HttpServlet {

    PrintWriter out;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        out = response.getWriter();
        int result = 0;
        Part part = request.getPart("tripImage");
        int id = Integer.parseInt(request.getParameter("tripID"));
        if (part != null) {
            try {
                Connection con = EpicationDAO.getConnection();
                PreparedStatement ps = con.prepareStatement("UPDATE trip SET tripImage = ? WHERE tripID = ?;");
                InputStream is = part.getInputStream();
                ps.setBlob(1, is);
                ps.setInt(2, id);
                result = ps.executeUpdate();
                if (result > 0) {
                    //Boleh tambah alert gambar added kat sini
                    response.sendRedirect("viewAllTrips");
                } else {
                    response.sendRedirect("index.jsp?message=Some+Error+Occurred");
                }
            } catch (Exception e) {
                out.println(e);
            }
        }
    }

}