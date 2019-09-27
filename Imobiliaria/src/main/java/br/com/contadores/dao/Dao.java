package br.com.contadores.dao;

import java.io.Serializable;
import java.util.List;

public interface Dao<Tipo> extends Serializable{

	void create(Tipo tipo);
	Tipo find(Tipo tipo);
	List<Tipo> findAll();
}
