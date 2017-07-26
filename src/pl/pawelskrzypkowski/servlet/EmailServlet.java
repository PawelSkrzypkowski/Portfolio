package pl.pawelskrzypkowski.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import pl.pawelskrzypkowski.model.Email;

@WebServlet("/EmailServlet")
public class EmailServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String title = request.getParameter("title");
		String text = request.getParameter("text");
		try {
			Email mail = new Email(name, email, title, text);
			if (mail.checkCorrectness()) {
				mail.send();
				request.setAttribute("email",
						"Wiadomo�� zosta�a przekazana. Postaram si� na ni� odpowiedzie� jak najszybciej.");
			} else
				request.setAttribute("email", "Wiadomo�� nie zosta�a wyslana. Wypelnij poprawnie wymagane pola.");
			request.getRequestDispatcher("MeServlet").forward(request, response);
		} catch (Exception e) {
			response.sendError(403);
		}
	}

}
