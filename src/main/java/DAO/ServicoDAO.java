package DAO;

import java.util.ArrayList;


import VO.Servico;

public class ServicoDAO {
	public ArrayList<Servico> getServicos(){		
		ArrayList <Servico> lst = new ArrayList();
		Servico p= new Servico();
		p.setCodigo(0);
		p.setData("19/02/2021");
		p.setDescricao("serico na companhia do serve");
		p.setProfissional("Fernando");
		lst.add(p);
		
		Servico p2= new Servico();
		p2.setCodigo(1);
		p2.setDescricao("Teste 2");		
		p2.setData("19/02/2022");

		lst.add(p2);
		
		Servico p3= new Servico();
		p3.setCodigo(3);
		p.setData("19/02/2021");
		p3.setDescricao("Teste 3");	
		p3.setProfissional("Fernando");
		
		Servico p4= new Servico();
		p4.setCodigo(3);
		p4.setData("19/02/200");
		p4.setDescricao("Teste 4");	
		p4.setProfissional("Fernando");
		lst.add(p4);
		return lst;
	}
	public ArrayList<Servico> findServico(String nome){
		
		ArrayList <Servico> lst = new ArrayList();
		Servico p= new Servico();
		p.setCodigo(0);
		p.setData("19/02/2021");
		p.setDescricao("serico na companhia do serve");
		p.setProfissional("Fernando");
		lst.add(p);		
		return lst;
	}
	public void newServico(Servico p){
		
		
	}
	public void editServico(Servico p){
		
		
	}
	public void deleteServico(Servico p){
		
		
	}
	public Servico findByIdServico(int id){
		Servico p = new Servico();
		p.setCodigo(id);
		p.setDescricao("Teste 3");		
		p.setProfissional("leandro");	
		p.setData("19-09-2021");	
		return p;
	}
}
