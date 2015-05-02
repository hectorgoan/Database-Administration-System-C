/*Sentencias SQL para las funcionalidades del programa*/

/*Funcionalidad 1*/
select p.Cod_Pregunta as Pregunta, t.Titulo as Tema, a.Nombre as Asignatura 
from Pregunta p, Tema t, Asignatura a, Formada_Por fp,  Evalua e 
where p.Cod_Pregunta = e.Cod_Pregunta and t.Cod_Tema = e.Cod_Tema and t.Cod_Tema = fp.Cod_Tema and a.Codigo = fp.Cod_Asign;

/*Funcionalidad 2*/
/*
	El nuevo código de pregunta se añade automáticamente, por tanto tenemos que hacer operaciones dentro del programa
	X es el nuevo código, que el programa ha de obtener automáticamente
*/
select max(Cod_Pregunta) from pregunta;

insert into Pregunta values (X, enunciado, 0);

/*Funcionalidad 3*/
/*
	A partir del código de la pregunta (podemos dar el máximo y decir del 1 al max)
	mostrar los datos de la pregunta incluyendo enunciado, listado de sus opciones, 
	y los exámenes en los que se ha usado.
*/

select p.Enunciado as Enunciado, o.Texto as Opcion, o.Respuesta as Respuesta, e.Cod_Examen as Examen
from Pregunta p, Opcion o, Compuesta_Por cp, Examen e
where p.Cod_Pregunta = cp.Cod_Pregunta and p.Cod_Pregunta = o.Cod_Pregunta and e.Cod_Examen = cp.Cod_Examen;

/*Funcionalidad 4*/
/*
	Asignar una pregunta del 1 al MAX a un tema de los listados de las asignatura de las listadas
*/

select a.Codigo as Cod_Asign, a.Nombre as Nom_Asign, t.Cod_Tema as Cod_Tema, t.Titulo as Nom_Tema
from Asignatura a, Formada_Por fp, Tema t
where a.Codigo = fp.Cod_Asign and t.Cod_Tema = fp.Cod_Tema;

	/*Ahora escaneamos codigo de la pregunta (PREG) y cod tema (TEM)*/
insert into Evalua values (PREG, TEM);