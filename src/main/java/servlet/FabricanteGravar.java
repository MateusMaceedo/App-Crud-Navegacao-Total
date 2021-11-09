package servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import DAO.FabricanteDAO;
import VO.Fabricante;

/**
 * Servlet implementation class FabricanteGravar
 */
public class FabricanteGravar extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public FabricanteGravar() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String nome = request.getParameter("nome");
		String codigo = request.getParameter("codigo");
		Fabricante p= new Fabricante();
		String msg="";
		p.setNome(nome);
		FabricanteDAO dao = new FabricanteDAO();
		if(codigo=="" || codigo==null) {
			msg="Fabricante Incluído com Sucesso";
			dao.newFabricante(p);
		}else {
			msg="Fabricante Alterado com Sucesso";
			p.setCodigo(Integer.parseInt(codigo));
			dao.editFabricante(p);
		}
		request.setAttribute("msg", msg);
		request.getRequestDispatcher("/Fabricante/Index.jsp").forward(request, response);
	}
}
