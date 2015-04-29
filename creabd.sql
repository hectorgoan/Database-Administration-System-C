/*Lo primero que vamos a hacer es crear un usuario nuevo para la base de datos y así no trabajar directamente desde SYSTEM (esto es opcional)*/
create user exams identified by examspassword default tablespace users temporary tablespace temp;
grant connect, resource to exams;

/*Si utilizamos una base de datos ya existente, podemos consultar nuestras tablas
para comprobar que no entran en conflicto con ninguna de las que ya podamos tener*/
select owner, table_name from all_tables where owner='exams';

/*O bien podemos asegurarnos de que no exista ninguna tabla con el nombre*/
drop table Profesor;
drop table Asignatura;
drop table Imparte;
drop table Tema;
drop table Compuesta_por;
drop table Titulacion;
drop table Forma_Parte;
drop table Examen;
drop table Examina;
drop table Pregunta;
drop table Evalua;
drop table Compuesta_por;
drop table Opcion;

/*Nota*/
/*
Hemos optado por utilizar una mezcla entre la solución propuesta en Studium y la nuestra propia, para así corregir errorres, y poder aprovechar el script de relleno de la base de datos
*/

/*Código de creación de la Base de Datos*/

create table Profesor
(
	DNI VARCHAR(10) NOT NULL PRIMARY KEY,
	Nombre VARCHAR (50) NOT NULL,
	Area VARCHAR (50) NOT NULL
);

create table Asignatura
(
	CODIGO INTEGER NOT NULL PRIMARY KEY,
	Nombre VARCHAR (50) NOT NULL
);

create table Imparte
(
	DNI VARCHAR (10) NOT NULL REFERENCES PROFESOR,
	CODASIGNAT INTEGER NOT NULL REFERENCES ASIGNATURA,
	PRIMARY KEY (DNI, CODASIGNAT)
);

create table Tema
(
	Cod_Tema integer not null primary key, 
	Posicion_Num integer not null, 
	Titulo varchar(50) not null, 
	Descr varchar(250) not null
);

create table Formada_por
( 
	Cod_Asign integer not null references ASIGNATURA, 
	Cod_Tema integer not null references TEMA,
	primary key (Cod_Asign, Cod_Tema)	
);

create table Titulacion
(
	Cod_Titulacion integer not null primary key, 
	Nombre varchar(50) not null, 
	Creditos integer not null
);

create table Forma_Parte
(
	Cod_Titulacion integer not null references TITULACION, 
	Cod_Asign integer not null references ASIGNATURA, 
	primary key (Cod_Asign, Cod_Titulacion)
);

create table Examen
(
	Cod_Examen integer not null primary key, 
	Convocatoria integer not null
);

create table Examina
(
	Cod_Examen integer not null references Examen, 
	Cod_Asignatura integer not null references Asignatura,
	Cod_Tema integer not null references Tema, 
	primary key (Cod_Examen, Cod_Asignatura, Cod_Tema)
);

create table Pregunta 
(
	Cod_Pregunta INTEGER NOT NULL PRIMARY KEY,
	Enunciado VARCHAR (200) NOT NULL,
	Num_Exams INTEGER NOT NULL /*Este es el atributo derivado*/ 
);

create table Evalua
(
	Cod_Pregunta INTEGER NOT NULL REFERENCES Pregunta,
	Cod_Tema INTEGER NOT NULL REFERENCES Tema,
	PRIMARY KEY (Cod_Pregunta, Cod_Tema)
);

create table Compuesta_Por 
(
	Cod_Examen integer not null references EXAMEN, 
	Cod_Pregunta integer not null references PREGUNTA, 
	Num_Correctas integer not null, 
	Num_Incorrectas integer not null, 
	Num_NSNC integer not null,
	primary key (Cod_Examen, Cod_Pregunta)
);

create table Opcion
(
	Cod_Opción integer not null primary key, 
	Cod_Pregunta integer not null references PREGUNTA, 
	Posicion_Num integer not null, 
	Texto varchar(50) not null, 
	Respuesta varchar(2)
);

/*Vista*/
/*Nota
Al crear la vista nos daba un error de privilegios, los solucionamos con la siguiente sentencia:

grant all privileges to konstantin identified by konstantin1994

y podremos ver si los privilegios han sido aplicados correctamente con la
siguiente sentencia

select * from system_privilege_map;
*/

define login = '11496939' /*Importante desdefinirlo! undefine login*/
set verify off
drop view profesorconsulta;

create view profesorconsulta as select count(e.Cod_Pregunta) as preguntas from Imparte i, Formada_por f, Evalua e where i.CODASIGNAT = f.cod_asign and f.cod_tema = e.cod_tema and i.DNI = &login;

delete from profesorconsulta where i.DNI <> &login;

/*Triggers*//*Working On It*/

CREATE TRIGGER ADD_EXAM
AFTER INSERT ON Compuesta_por
FOR EACH ROW
WHEN (new.Cod_Pregunta is not null)
BEGIN
UPDATE Pregunta SET Num_Exams=Num_Exams+1 WHERE Cod_Pregunta=:new.Cod_Pregunta;
END;
/

CREATE TRIGGER RM_EXAM
AFTER DELETE ON Compuesta_por
FOR EACH ROW
WHEN (old.Cod_Pregunta is not null)
BEGIN
UPDATE Pregunta SET Num_Exams=Num_Exams-1 WHERE Cod_Pregunta=:old.Cod_Pregunta;
END;
/

CREATE TRIGGER UPD_EXAM
AFTER UPDATE OF Cod_Pregunta ON Compuesta_por
FOR EACH ROW
WHEN(new.Cod_Pregunta is not null or old.Cod_Pregunta is not null)
BEGIN
UPDATE Pregunta SET Num_Exams=Num_Exams+1 WHERE Cod_Pregunta=:new.Cod_Pregunta;
UPDATE Pregunta SET Num_Exams=Num_Exams-1 WHERE Cod_Pregunta=:old.Cod_Pregunta;
END;
/


/*Declaración de privilegios*/
grant all on  Profesor to public;
grant all on  Imparte to public;
grant all on  Tema to public;
grant all on  Compuesta_por to public;
grant all on  Titulacion to public;
grant all on  Forma_Parte to public;
grant all on  Examen to public;
grant all on  Pregunta to public;
grant all on  Evalua to public;
grant all on  Compuesta_por to public;
grant all on  Opcion to public;



