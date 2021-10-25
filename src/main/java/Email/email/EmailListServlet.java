package Email.email;

import Email.bussiness.User;
import Email.data.UserDB;
import Email.data.UserIO;
import util.ServletUtil;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Date;

@WebServlet(name = "EmailListServlet", value = "/emailList")
public class EmailListServlet extends HttpServlet {


    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String url = "/Email/index.jsp";

        // get current action
        String action = request.getParameter("action");

        // get file path
        String path = getServletContext().getRealPath("/WEB-INF/EmailList.txt");
        // print action value to console AND log file
        System.out.println("EmailListServlet action: " + action);
        log("action=" + action);

        if (action == null) {
            action = "join";  // default action
        }

        // perform action and set URL to appropriate page
        if (action.equals("join")) {
            url = "/Email/index.jsp";    // the "join" page
        } else if (action.equals("add")) {
            // get parameters from the request
            String firstName = request.getParameter("firstName");
            String lastName = request.getParameter("lastName");
            String email = request.getParameter("email");

            // store data in User object and save User object in database
            User user = new User(firstName, lastName, email);

            /*// validate the parameters
            String message;
            if (firstName == null || lastName == null || email == null ||
                    firstName.isEmpty() || lastName.isEmpty() || email.isEmpty()) {
                message = "Please fill out all three text boxes.";
                url = "/Email/index.jsp";
            }
            else {
                message = "";
                url = "/Email/thanks.jsp";
                UserDB.insert(user);
            }*/

            // Add User
            UserIO.addRecord(user, path);
            System.out.println("Added user");
            // set User object in request object and set URL
            request.setAttribute("user", user);
            url = "/Email/thanks.jsp";   // the "thanks" page

        }

        // create the Date object and store it in the request
        Date currentDate = new Date();
        request.setAttribute("currentDate", currentDate);

        // create users list and store it in the session
        ArrayList<User> users = UserIO.getUsers(path);
        HttpSession session = request.getSession();

        session.setAttribute("users", users);

        // forward request and response objects to specified URL
        ServletUtil.forward(url, request, response);
    }

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        doPost(request, response);
    }

}