package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.QuizDAO;
import dto.Quiz;

/**
 * Servlet implementation class registedServlet
 */
@WebServlet("/registedServlet")
public class registedServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public registedServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String question = request.getParameter("question");
		String answer = request.getParameter("answer");
		
		//ここにバリデーションチェックを入れてみよう下に例を書くよ
		//こんな感じで変数の中身が{空、記号、文字数とかで判定させるのをバリデーションチェックと言います。}
		if(question.isEnpty() == true || answer.isEnpty() == true){
			system.out.println("問題か回答が空文字です。");
			String view ="WEB-INF/view/error.jsp";
			RequestDispatcher dispatcher = request.getRequestDispatcher(view);
			dispatcher.forward(request, response);
		}
		

		Quiz quiz = new Quiz(question, answer);
		QuizDAO.registerQuiz(quiz);
		
		String view ="WEB-INF/view/registed.jsp";
		RequestDispatcher dispatcher = request.getRequestDispatcher(view);
		dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
