package br.com.contadores.model.anotations;

import static java.lang.annotation.ElementType.FIELD;
import static java.lang.annotation.ElementType.METHOD;
import static java.lang.annotation.RetentionPolicy.RUNTIME;

import java.lang.annotation.Retention;
import java.lang.annotation.Target;

@Retention(RUNTIME)
@Target({ FIELD, METHOD })
public @interface Input {

	boolean row() default false;

	boolean col() default false;

	int numberRow();

	int numberCol();

	String type() default "text";

	String[] classs() default {};

	String placeholder() default "";

	String id() default "";

	String name() default "";

	String value() default "";

}
