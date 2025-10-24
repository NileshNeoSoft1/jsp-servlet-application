
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
import jakarta.servlet.RequestDispatcher;

import org.json.JSONArray;
import org.json.JSONObject;
import org.json.JSONTokener;

import java.io.*;

@WebServlet("/validate")
public class LoginServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String username = request.getParameter("username");
        String password = request.getParameter("password");

      //login details file path
        String jsonPath = "C:/Users/Client/Desktop/Spring Security/users.json";
        File jsonFile = new File(jsonPath);

        boolean valid = false;

        try (FileReader reader = new FileReader(jsonFile)) {
            JSONTokener tokener = new JSONTokener(reader);
            JSONArray usersArray = new JSONArray(tokener);

            for (int i = 0; i < usersArray.length(); i++) {
                JSONObject user = usersArray.getJSONObject(i);
                String jsonUsername = user.getString("username");
                String jsonPassword = user.getString("password");

                if (username.equals(jsonUsername) && password.equals(jsonPassword)) {
                    valid = true;
                    break;
                }
            }
        } catch (Exception e) {
            throw new ServletException("Error reading users.json", e);
        }

        RequestDispatcher dispatcher = request.getRequestDispatcher(valid ? "welcome.jsp" : "error.jsp");
        dispatcher.forward(request, response);
    }
}
