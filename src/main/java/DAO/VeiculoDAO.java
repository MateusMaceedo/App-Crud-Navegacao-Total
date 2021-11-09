package DAO;

import java.util.ArrayList;
import VO.Servico;
import VO.Veiculo;

public class VeiculoDAO {
	public ArrayList<Veiculo> getVeiculos(){
		ArrayList <Veiculo> lst = new ArrayList();
		Veiculo p= new Veiculo();
		p.setCodigo(0);
		p.setMarca("Renault");
		p.setNome("Kwid");
		lst.add(p);

		Veiculo p2= new Veiculo();
		p2.setCodigo(1);
		p2.setMarca("Testa");
		p2.setNome("Model S");

		lst.add(p2);

		Veiculo p3= new Veiculo();
		p3.setCodigo(2);
		p3.setMarca("Volkwagen");
		p3.setNome("Gol");

		Veiculo p4= new Veiculo();
		p4.setCodigo(4);
		p4.setMarca("Fiat");
		p4.setNome("UNo");

		lst.add(p4);
		return lst;
	}
	public ArrayList<Veiculo> findVeiculos(String nome){

		ArrayList <Veiculo> lst = new ArrayList();

		Veiculo p4= new Veiculo();
		p4.setCodigo(4);
		p4.setMarca("Fiat");
		p4.setNome("UNo");
		lst.add(p4);
		return lst;
	}
	public void newVeiculo(Veiculo p){


	}
	public void editVeiculo(Veiculo p){


	}
	public void deleteVeiculo(Veiculo p){


	}
	public Veiculo findByIdVeiculo(int id){
		Veiculo p2= new Veiculo();
		p2.setCodigo(1);
		p2.setMarca("Testa");
		p2.setNome("Model S");
		return p2;
	}
}
