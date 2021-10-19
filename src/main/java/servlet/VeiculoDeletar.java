package servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import DAO.VeiculoDAO;

import VO.Veiculo;

/**
 * Servlet implementation class VeiculoDeletar
 */
public class VeiculoDeletar extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public VeiculoDeletar() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String codigo = request.getParameter("codigo");
		Veiculo p = new Veiculo();
		VeiculoDAO dao = new VeiculoDAO();
		p.setCodigo(Integer.parseInt(codigo));
		dao.deleteVeiculo(p);
		String msg="";
		msg="Veiculo Excluido com Sucesso";
		request.setAttribute("msg", msg);	
		request.getRequestDispatcher("/Veiculo/Index.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
