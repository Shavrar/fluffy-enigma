package NetWork_Final;

import java.io.IOException;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import NetWork_Final.Entities.Client;



public class EditClientServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
                                    throws ServletException, IOException {
        try {
            Integer id = Integer.parseInt(req.getParameter("id"));
            Client client = Storage.readClientById(id);
            req.setAttribute("client", client);
        } catch(NumberFormatException e) {

        } catch(SQLException e) {
            throw new ServletException(e);

        }
        getServletContext().getRequestDispatcher("/WEB-INF/classes/NetWork_Final/jsp/editClient.jsp")
                                                      .forward(req, resp);
    }
}