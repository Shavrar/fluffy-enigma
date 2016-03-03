package NetWork_Final;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class DeleteProjectServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
                                    throws ServletException, IOException {
    	String temp=null;
        for(String id : req.getParameterValues("idProject")) {
            try {
            	temp=Storage.readProjectById(Integer.parseInt(id)).getClient();
                Storage.deleteProject(Integer.parseInt(id));
            } catch(NumberFormatException e) {

            } catch(SQLException e) {
                throw new ServletException(e);

            }
        }
        
        resp.sendRedirect(req.getContextPath() + "/projects.html?ClientName="+temp);
    }
}

