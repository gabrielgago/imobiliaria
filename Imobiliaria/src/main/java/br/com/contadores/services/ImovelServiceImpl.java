package br.com.contadores.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import br.com.contadores.model.Imovel;
import br.com.contadores.repository.ImovelRepository;

@Service
public class ImovelServiceImpl implements ImovelService {

	@Autowired
	private ImovelRepository imovelRepository;

	@Transactional
	public List<Imovel> getImoveis() {
		return imovelRepository.findAll();
	}

	@Transactional
	public void saveImovel(Imovel imovel) {
		imovelRepository.save(imovel);
	}

	@Transactional
	public Imovel getImovel(int id)/* throws ResourceNotFoundException */ {
		return imovelRepository.findById(id)
				.orElseThrow(() -> /* new ResourceNotFoundException(id) */ new RuntimeException(""));
	}

	@Transactional
	public void deleteImovel(int theId) {
		imovelRepository.deleteById(theId);
	}

}
