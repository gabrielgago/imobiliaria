package br.com.contadores.model.anotations;

import static java.lang.annotation.ElementType.TYPE;
import static java.lang.annotation.RetentionPolicy.CLASS;

import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

@Retention(RetentionPolicy.RUNTIME)
@Target(TYPE)
public @interface Title {
	String name() default "";
	String formAction() default "#";
	String formTarger() default "#";
	String formMethod() default "POST";
}
