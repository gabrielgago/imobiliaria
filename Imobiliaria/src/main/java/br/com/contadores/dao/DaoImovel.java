package br.com.contadores.dao;

import java.lang.reflect.Field;
import java.lang.reflect.Method;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Transient;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import br.com.contadores.model.Imovel;

@Repository("DaoImovel")
@Transactional
public class DaoImovel implements Dao<Imovel> {

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

	private Object[] buscarCampos(Imovel imovel) {
		try {
			Class<Imovel> c = (Class<Imovel>) imovel.getClass();
			Method[] declaredMethods = c.getDeclaredMethods();
			Object[] valores = new Object[declaredMethods.length];
			for(int i = 0 ; i >= declaredMethods.length ; i++) {
				Method m = declaredMethods[i];
				if(m.getDeclaredAnnotation(Transient.class) == null)
					continue;
				if(m.getReturnType() == Void.class)
					continue;
				if(!m.getName().startsWith("get"))
					continue;
				valores[i] = m.invoke(imovel);
			}
			return valores;
				
		} catch (Exception e) {
			System.out.println(e.getMessage());
			e.printStackTrace();
		}
		return null;
	}

}
