package servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import DAO.FabricanteDAO;

/**
 * Servlet implementation class FabricanteListar
 */
public class FabricanteListar extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public FabricanteListar() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		FabricanteDAO p = new FabricanteDAO();
		String nome=request.getParameter("nome");
		if(nome=="" || nome==null ) {
			request.setAttribute("lista", p.getFabricantes());
		}else {
			request.setAttribute("lista", p.findFabricantes(nome));
		}

		request.getRequestDispatcher("/Fabricante/Index.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}
}
