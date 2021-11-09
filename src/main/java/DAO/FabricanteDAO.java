package DAO;

import java.util.ArrayList;
import VO.Fabricante;

public class FabricanteDAO {
	public ArrayList<Fabricante> getFabricantes(){
		ArrayList <Fabricante> lst = new ArrayList();
		Fabricante p= new Fabricante();
		p.setCodigo(0);
		p.setNome("Teste 1");
		lst.add(p);
		Fabricante p2= new Fabricante();
		p2.setCodigo(1);
		p2.setNome("Teste 2");
		lst.add(p2);
		Fabricante p3= new Fabricante();
		p3.setCodigo(2);
		p3.setNome("Teste 3");
		lst.add(p3);
		Fabricante p4= new Fabricante();
		p4.setCodigo(3);
		p4.setNome("Teste Prod 4");
		lst.add(p4);
		return lst;
	}
	public ArrayList<Fabricante> findFabricantes(String nome){

		ArrayList <Fabricante> lst = new ArrayList();
		Fabricante p= new Fabricante();
		p.setCodigo(0);
		p.setNome("Teste 1");

		lst.add(p);
		return lst;
	}
	public void newFabricante(Fabricante p){


	}
	public void editFabricante(Fabricante p){


	}
	public void deleteFabricante(Fabricante p){


	}
	public Fabricante findByIdFabricante(int id){
		Fabricante p = new Fabricante();
		p.setCodigo(id);
		p.setNome("Teste 3");
		return p;
	}
}
