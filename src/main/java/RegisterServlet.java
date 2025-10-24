

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
import jakarta.servlet.RequestDispatcher;

import org.json.JSONArray;
import org.json.JSONObject;
import org.json.JSONTokener;

import java.io.*;

@WebServlet("/register")
public class RegisterServlet extends HttpServlet {

    private String jsonPath;

    @Override
    public void init() throws ServletException {

        jsonPath = "C:/Users/Client/Desktop/Spring Security/users.json";
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        response.setHeader("Cache-Control", "public, max-age=300");
        response.setHeader("Pragma", "");
        response.setDateHeader("Expires", System.currentTimeMillis() + 300 * 1000);

        String username = request.getParameter("username");
        String password = request.getParameter("password");

        File jsonFile = new File(jsonPath);
        JSONArray usersArray;

        try {

            if (!jsonFile.exists()) {
                jsonFile.getParentFile().mkdirs();
                jsonFile.createNewFile();
                try (FileWriter writer = new FileWriter(jsonFile)) {
                    writer.write("[]"); // initialize empty array
                }
            }


            try (FileReader reader = new FileReader(jsonFile)) {
                JSONTokener tokener = new JSONTokener(reader);
                usersArray = new JSONArray(tokener);
            }


            for (int i = 0; i < usersArray.length(); i++) {
                JSONObject user = usersArray.getJSONObject(i);
                if (user.getString("username").equals(username)) {
                    request.setAttribute("message", "Username already exists! Please try another one.");
                    request.getRequestDispatcher("signup.jsp").forward(request, response);
                    return;
                }
            }
// added for adding new users
            JSONObject newUser = new JSONObject();
            newUser.put("username", username);
            newUser.put("password", password);
            usersArray.put(newUser);

           // save updated json
            try (FileWriter writer = new FileWriter(jsonFile)) {
                writer.write(usersArray.toString(4)); // pretty print
            }

            request.setAttribute("message", "Registration successful! Please log in.");
            RequestDispatcher dispatcher = request.getRequestDispatcher("welcome.jsp");
            dispatcher.forward(request, response);

        } catch (Exception e) {
            throw new ServletException("Error updating users.json", e);
        }
    }
}
