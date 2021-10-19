package servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import DAO.VeiculoDAO;
import VO.Veiculo;

/**
 * Servlet implementation class VeiculoGravar
 */
public class VeiculoGravar extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public VeiculoGravar() {
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
		String codigo = request.getParameter("codigo");
		String marca = request.getParameter("marca");
		String nome = request.getParameter("nome");

		Veiculo p= new Veiculo();
		String msg="";
		//p.setCodigo(codigo);
		p.setMarca(marca);
		p.setNome(nome);	
		
		
		VeiculoDAO dao = new VeiculoDAO();
		if(codigo=="" || codigo==null) {
			msg="Veiculo Incluído com Sucesso";
			dao.newVeiculo(p);
		}else {
			msg="Veiculo Alterado com Sucesso";
			p.setCodigo(Integer.parseInt(codigo));
			dao.editVeiculo(p);
		}
		request.setAttribute("msg", msg);	
		request.getRequestDispatcher("/Veiculo/Index.jsp").forward(request, response);
	}

}
