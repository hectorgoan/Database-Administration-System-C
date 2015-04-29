/*Nos aseguramos de que las tablas estén vacías*/
delete from Profesor;
delete from Titulacion;
delete from Asignatura;
delete from Forma_Parte;
delete from Imparte;
delete from Tema;
delete from Pregunta;
delete from Opcion;
delete from Formada_por;
delete from Evalua;
delete from Examen;
delete from Compuesta_Por;
delete from Examina;

/*DNI, Nombre, Area*/
insert into Profesor values ('73048485', 'Pepe Sánchez Gómez', 'Informática');
insert into Profesor values ('11396243', 'Ana Gómez Pérez', 'Física');
insert into Profesor values ('11496939', 'Sandra Sánchez Martín', 'C.Sociales');
insert into Profesor values ('11123361', 'José Rubin Gómez', 'Matemáticas');
insert into Profesor values ('73348485', 'Juan Martín Martín', 'Informática');

/*Cod_titulacion, Nombre, Creditos*/
insert into Titulacion values (001,'Ingeniería Informática', 250);
insert into Titulacion values (002,'Ingeniería Física', 200);
insert into Titulacion values (003,'Estadística', 200);
insert into Titulacion values (004,'Ingeniería Social', 250);
insert into Titulacion values (005,'Psicología', 300);

/*Codigo, Nombre, Titulacion*/
insert into Asignatura values (001, 'Diseño de Bases de Datos');
insert into Asignatura values (002, 'Estadística 1');
insert into Asignatura values (003, 'Sociedades 2');
insert into Asignatura values (004, 'Física Cuántica');
insert into Asignatura values (005, 'Programación 3');

/*Cod_Titulacion, Cod_Asign*/
insert into Forma_Parte values (001, 001);
insert into Forma_Parte values (002, 005);
insert into Forma_Parte values (003, 004);
insert into Forma_Parte values (004, 002);
insert into Forma_Parte values (005, 003);

/*DNI, CODASIGNAT*/
insert into Imparte values ('11496939', 005);
insert into Imparte values ('73048485', 004);
insert into Imparte values ('73348485', 003);
insert into Imparte values ('11396243', 002);
insert into Imparte values ('11123361', 001);

/*Cod_Tema, Posicion_Num, Titulo, Descr*/
insert into Tema values (001, 03, 'El modelo relacional.', 'Descripción');
insert into Tema values (002, 01, 'Introducción a la F.C.', 'Descripción');
insert into Tema values (003, 04, 'Programación orientada a objetos.', 'Descripción');
insert into Tema values (004, 05, 'Media, Mediana y Moda.', 'Descripción');
insert into Tema values (005, 09, 'Sociedad Moderna', 'Descripción');

/*Cod_Pregunta, Enunciado, Num_Exams*/
insert into Pregunta values (001, 'Pregunta Media', 24);
insert into Pregunta values (002, 'Pregunta Modelo Relacional', 54);
insert into Pregunta values (003, 'Pregunta Física', 36);
insert into Pregunta values (004, 'Pregunta Java', 29);
insert into Pregunta values (005, 'Pregunta Sociedades', 12);

/*Cod_Opcion, Cod_Pregunta, Posicion_Num, Texto, Respuesta*/
insert into Opcion values (001, 003, 3, 'texto', 'Si');
insert into Opcion values (002, 005, 4, 'texto', 'Si');
insert into Opcion values (003, 004, 2, 'texto', 'No');
insert into Opcion values (004, 002, 4, 'texto', 'Si');
insert into Opcion values (005, 001, 1, 'texto', 'No');

/*Cod_Asign, Cod_Tema*/
insert into Formada_por values (001, 001);
insert into Formada_por values (002, 004);
insert into Formada_por values (003, 005);
insert into Formada_por values (004, 002);
insert into Formada_por values (005, 003);

/*Cod_Pregunta, Cod_Tema*/
insert into Evalua values (001, 002);
insert into Evalua values (002, 003);
insert into Evalua values (003, 004);
insert into Evalua values (004, 001);
insert into Evalua values (005, 005);

/*Cod_Examen, Convocatoria*/
insert into Examen values (001, 1);
insert into Examen values (002, 2);
insert into Examen values (003, 2);
insert into Examen values (004, 3);
insert into Examen values (005, 4);

/*Cod_Examen, Cod_Pregunta, Num_Correctas, Num_Incorrectas, Num_NSNC*/
insert into Compuesta_Por values (001, 004, 3, 2, 0);
insert into Compuesta_Por values (001, 005, 2, 6, 1);
insert into Compuesta_Por values (001, 003, 6, 9, 4);
insert into Compuesta_Por values (002, 001, 4, 9, 2);
insert into Compuesta_Por values (003, 003, 6, 0, 3);
insert into Compuesta_Por values (003, 004, 7, 6, 8);
insert into Compuesta_Por values (003, 005, 8, 9, 2);
insert into Compuesta_Por values (003, 001, 11, 7, 3);
insert into Compuesta_Por values (004, 002, 2, 4, 1);
insert into Compuesta_Por values (004, 005, 5, 4, 3);
insert into Compuesta_Por values (005, 005, 4, 2, 6);
insert into Compuesta_Por values (005, 004, 6, 7, 6);
insert into Compuesta_Por values (005, 003, 7, 0, 9);
insert into Compuesta_Por values (005, 002, 9, 8, 8);

/*Cod_Examen, Cod_Asign. Cod_Tema*/
insert into Examina values (001, 003, 005);
insert into Examina values (002, 002, 004);
insert into Examina values (003, 005, 003);
insert into Examina values (004, 001, 001);
insert into Examina values (005, 004, 002);
