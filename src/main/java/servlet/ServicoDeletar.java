package servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.ServicoDAO;
import VO.Servico;

/**
 * Servlet implementation class ServicoDeletar
 */
public class ServicoDeletar extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ServicoDeletar() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String codigo = request.getParameter("codigo");
		Servico p = new Servico();
		ServicoDAO dao = new ServicoDAO();
		p.setCodigo(Integer.parseInt(codigo));
		dao.deleteServico(p);
		String msg="";
		msg="Servico Excluido com Sucesso";
		request.setAttribute("msg", msg);	
		request.getRequestDispatcher("/Servico/Index.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
