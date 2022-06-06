import com.login.dao.LoginDao;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/Login")

public class Login extends HttpServlet {
    protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException{
        String uname = req.getParameter("username");
        String pass = req.getParameter("password");
        
        LoginDao dao = new LoginDao();
       if(dao.check(uname, pass)){
            HttpSession session = req.getSession();
            session.setAttribute("username", uname);
            res.sendRedirect("Dashboard.jsp");
       }else{
           res.sendRedirect("Login.jsp");
       }
        
    }
    
}
