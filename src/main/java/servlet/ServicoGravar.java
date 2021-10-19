package servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.ServicoDAO;
import VO.Servico;

/**
 * Servlet implementation class ServicoGravar
 */
public class ServicoGravar extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ServicoGravar() {
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
		// TODO Auto-generated method stub
		String codigo = request.getParameter("codigo");
		String data = request.getParameter("data");
		String descricao = request.getParameter("descricao");
		String profissional = request.getParameter("profissional");
		Servico p= new Servico();
		String msg="";
		//p.setCodigo(codigo);
		p.setData(data);
		p.setDescricao(descricao);	
		p.setProfissional(profissional);
		
		
		ServicoDAO dao = new ServicoDAO();
		if(codigo=="" || codigo==null) {
			msg="Servico Incluído com Sucesso";
			dao.newServico(p);
		}else {
			msg="Servico Alterado com Sucesso";
			p.setCodigo(Integer.parseInt(codigo));
			dao.editServico(p);
		}
		request.setAttribute("msg", msg);	
		request.getRequestDispatcher("/Veiculo/Index.jsp").forward(request, response);
	}

}
