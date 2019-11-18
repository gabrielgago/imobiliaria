package br.com.contadores.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import br.com.contadores.model.Imovel;

@Repository("imovelRepository")
public interface ImovelRepository extends JpaRepository<Imovel, Integer>{

}
