package pages;

import java.io.IOException;
import java.util.ArrayList;
import java.util.stream.Collectors;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Student;

public class Home extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession(true);
        if (session.getAttribute("userName") == null) {
            response.sendRedirect("./login");
            return;
        }
        String search = request.getParameter("search");
        ArrayList<Student> students = Student.getStudents();
        if (search != null && !search.isEmpty()) {
            students = (ArrayList<Student>) students.stream()
                    .filter(student -> student.getName().contains(search) || student.getId().contains(search) || student.getEmail().contains(search))
                    .collect(Collectors.toList());
        }
        request.setAttribute("students", students);
        RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/home.jsp");
        dispatcher.forward(request, response);
    }
}
