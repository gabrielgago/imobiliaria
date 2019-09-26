package br.com.contadores.dao;

import java.io.Serializable;

public interface Dao<Tipo> extends Serializable{

	void create(Tipo tipo);
	Tipo find(Tipo tipo);
	
}
