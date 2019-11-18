package br.com.contadores.services;

import java.util.List;

import br.com.contadores.model.Imovel;

public interface ImovelService {

	public List<Imovel> getImoveis();

	public void saveImovel(Imovel theCustomer);

	public Imovel getImovel(int theId) /* throws ResourceNotFoundException */;

	public void deleteImovel(int theId) /* throws ResourceNotFoundException */;

}
