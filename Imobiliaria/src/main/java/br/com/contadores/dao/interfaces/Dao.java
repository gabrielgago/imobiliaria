package br.com.contadores.dao.interfaces;

import java.io.Serializable;
import java.util.List;

public interface Dao<Tipo> extends Serializable{

	void create(Tipo tipo);
	void delete(int id);
	Tipo find(Tipo tipo);
	List<Tipo> findAll();
}
