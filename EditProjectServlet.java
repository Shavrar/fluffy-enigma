package NetWork_Final;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import NetWork_Final.Entities.Project;


public class EditProjectServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
                                    throws ServletException, IOException {
        try {
            
            
            if(req.getParameter("idP")!=null){
            	Integer id = Integer.parseInt(req.getParameter("idP"));	
            	Project project = Storage.readProjectById(id);
            
            	req.setAttribute("ProjectT", project);
            
            }
            else{
            	String name=req.getParameter("ClientName");	
            	req.setAttribute("ClientName", name);
            
            }
            
        } catch(NumberFormatException e) {

        } catch(SQLException e) {
            //throw new ServletException(e);

        }
            
        getServletContext().getRequestDispatcher("/WEB-INF/classes/NetWork_Final/jsp/editProject.jsp")
                                                      .forward(req, resp);
    }
}

