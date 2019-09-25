package br.com.contadores.dao;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import br.com.contadores.model.Imovel;

@Repository("DaoImovel")
@Transactional
public class DaoImovel implements Dao<Imovel>{

	@PersistenceContext
	public EntityManager manager;

	@Transactional(readOnly = false)
	@Override
	public void create(Imovel tipo) {
		manager.persist(tipo);
	}
	
	@Transactional(readOnly = true)
	@Override
	public Imovel find(Imovel tipo) {
		return manager.find(Imovel.class, tipo);
	}
	
}
