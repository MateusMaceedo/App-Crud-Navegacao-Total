package servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.FabricanteDAO;
import VO.Fabricante;

/**
 * Servlet implementation class FabricanteDeletar
 */
public class FabricanteDeletar extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FabricanteDeletar() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String codigo = request.getParameter("codigo");
		Fabricante p = new Fabricante();
		FabricanteDAO dao = new FabricanteDAO();
		p.setCodigo(Integer.parseInt(codigo));
		dao.deleteFabricante(p);
		String msg="";
		msg="Fabricante Excluido com Sucesso";
		request.setAttribute("msg", msg);	
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
