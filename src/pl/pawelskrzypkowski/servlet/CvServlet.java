package pl.pawelskrzypkowski.servlet;

import java.io.FileNotFoundException;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import pl.pawelskrzypkowski.model.Cv;

@WebServlet("/CvServlet")
public class CvServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try {
			Cv cv = Cv.getInstance();
			request.setAttribute("cv", cv);
			request.getRequestDispatcher("cv.jsp").forward(request, response);
		} catch (FileNotFoundException e) {
			System.out.println(e.toString());
			response.sendError(403);
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
