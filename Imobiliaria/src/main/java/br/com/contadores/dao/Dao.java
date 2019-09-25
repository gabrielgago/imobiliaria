package br.com.contadores.dao;

public interface Dao<Tipo> {

	void create(Tipo tipo);
	Tipo find(Tipo tipo);
	
}
