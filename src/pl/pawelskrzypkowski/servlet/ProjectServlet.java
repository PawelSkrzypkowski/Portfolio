package pl.pawelskrzypkowski.servlet;

import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.LinkedList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import pl.pawelskrzypkowski.model.Project;

@WebServlet("/ProjectServlet")
public class ProjectServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try {
			LinkedList<Project> list = Project.getProjectsList();
			request.setAttribute("projects", list);
			request.getRequestDispatcher("project.jsp").forward(request, response);
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
