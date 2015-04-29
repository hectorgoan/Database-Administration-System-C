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

/*Codigo, Nombre*/
insert into Asignatura values (001, 'Bases de Datos');
insert into Asignatura values (002, 'Psicología Infantil');
insert into Asignatura values (003, 'Programación');
insert into Asignatura values (004, 'Media, Mediana y Moda');
insert into Asignatura values (005, 'Macroeconomía');
insert into Asignatura values (006, 'Física Cuántica');
insert into Asignatura values (007, 'Microeconomía');
insert into Asignatura values (008, 'Computadores');
insert into Asignatura values (009, 'Electrónica');
insert into Asignatura values (010, 'Psicología Económica');

/*DNI, CODASIGNAT*/
insert into Imparte values ('73048485', 001);
insert into Imparte values ('73048485', 008);
insert into Imparte values ('11396243', 006);
insert into Imparte values ('11396243', 009);
insert into Imparte values ('11496939', 002);
insert into Imparte values ('11496939', 010);
insert into Imparte values ('11123361', 001);
insert into Imparte values ('73348485', 003);
insert into Imparte values ('73348485', 009);

/*Cod_titulacion, Nombre, Creditos*/
insert into Titulacion values (001,'Ingeniería Informática', 200);
insert into Titulacion values (002,'Ingeniería Física', 200);
insert into Titulacion values (003,'Estadística', 200);
insert into Titulacion values (004,'Psicología', 200);
insert into Titulacion values (005,'Economía', 200);

/*Cod_Titulacion, Cod_Asign*/
insert into Forma_Parte values (001, 001);
insert into Forma_Parte values (001, 003);
insert into Forma_Parte values (001, 008);
insert into Forma_Parte values (001, 009);
insert into Forma_Parte values (002, 006);
insert into Forma_Parte values (002, 009);
insert into Forma_Parte values (003, 004);
insert into Forma_Parte values (004, 002);
insert into Forma_Parte values (004, 010);
insert into Forma_Parte values (005, 007);
insert into Forma_Parte values (005, 005);
insert into Forma_Parte values (005, 010);

/*Cod_Tema, Posicion_Num, Titulo, Descr, Num_Preguntas*/
insert into Tema values (001, 01, 'El Modelo Relacional', 'Descr', 0);
insert into Tema values (002, 10, 'Introducción a SQL', 'Descr', 0);
insert into Tema values (003, 01, 'Media', 'Descr', 0);
insert into Tema values (004, 02, 'Mediana', 'Descr', 0);
insert into Tema values (005, 03, 'Moda', 'Descr', 0);
insert into Tema values (006, 01, 'Introducción a C', 'Descr', 0);
insert into Tema values (007, 03, 'Estructuras de Control', 'Descr', 0);
insert into Tema values (008, 01, 'Macroeconomía Americana', 'Descr', 0);
insert into Tema values (009, 02, 'Macroeconomía Europea', 'Descr', 0);
insert into Tema values (010, 03, 'Macroeconomía Asiática', 'Descr', 0);
insert into Tema values (011, 01, 'Instrucción AND', 'Descr', 0);
insert into Tema values (012, 02, 'Instrucción OR', 'Descr', 0);
insert into Tema values (013, 03, 'Instrucción NOT', 'Descr', 0);
insert into Tema values (014, 03, 'Resistencias', 'Descr', 0);
insert into Tema values (015, 01, 'Transistores', 'Descr', 0);
insert into Tema values (016, 10, 'LEDS', 'Descr', 0);
insert into Tema values (017, 01, 'Protones', 'Descr', 0);
insert into Tema values (018, 02, 'Neutrones', 'Descr', 0);
insert into Tema values (019, 01, 'La Economía y la Sociedad', 'Descr', 0);
insert into Tema values (020, 02, 'Psicología en la Economía', 'Descr', 0);
insert into Tema values (021, 01, 'Microeconomía Americana', 'Descr', 0);
insert into Tema values (022, 02, 'Microeconomía Europea', 'Descr', 0);
insert into Tema values (023, 03, 'Microeconomía Asiática', 'Descr', 0);
insert into Tema values (024, 02, 'Psicología en la Adolescencia', 'Descr', 0);
insert into Tema values (025, 03, 'Psicología del recién nacido', 'Descr', 0);

/*Cod_Asign, Cod_Tema*/
insert into Formada_por values (001, 001);
insert into Formada_por values (001, 002);
insert into Formada_por values (002, 024);
insert into Formada_por values (002, 025);
insert into Formada_por values (003, 006);
insert into Formada_por values (003, 007);
insert into Formada_por values (004, 003);
insert into Formada_por values (004, 004);
insert into Formada_por values (004, 005);
insert into Formada_por values (005, 008);
insert into Formada_por values (005, 009);
insert into Formada_por values (005, 010);
insert into Formada_por values (006, 017);
insert into Formada_por values (006, 018);
insert into Formada_por values (007, 021);
insert into Formada_por values (007, 022);
insert into Formada_por values (007, 023);
insert into Formada_por values (008, 011);
insert into Formada_por values (008, 012);
insert into Formada_por values (008, 013);
insert into Formada_por values (009, 014);
insert into Formada_por values (009, 015);
insert into Formada_por values (009, 016);

/*Cod_Examen, Convocatoria*/
	/*En un principio todos son de primera convocatoria*/
	/*Tendremos 10 exámenes Iniciales*/
insert into Examen values (001, 1);
insert into Examen values (002, 1);
insert into Examen values (003, 1);
insert into Examen values (004, 1);
insert into Examen values (005, 1);
insert into Examen values (006, 1);
insert into Examen values (007, 1);
insert into Examen values (008, 1);
insert into Examen values (009, 1);
insert into Examen values (010, 1);


/*Cod_Examen, Cod_Asign. Cod_Tema*/
insert into Examina values (001, 006, 017);
insert into Examina values (001, 006, 018);

insert into Examina values (002, 001, 001);
insert into Examina values (002, 001, 002);

insert into Examina values (003, 007, 021);
insert into Examina values (003, 007, 022);
insert into Examina values (003, 007, 023);

insert into Examina values (004, 003, 006);
insert into Examina values (004, 003, 007);

insert into Examina values (005, 002, 024);
insert into Examina values (005, 002, 025);

insert into Examina values (006, 008, 011);
insert into Examina values (006, 008, 012);
insert into Examina values (006, 008, 013);

insert into Examina values (007, 004, 003);
insert into Examina values (007, 004, 004);
insert into Examina values (007, 004, 005);

insert into Examina values (008, 005, 008);
insert into Examina values (008, 005, 009);
insert into Examina values (008, 005, 010);

insert into Examina values (009, 010, 019);
insert into Examina values (009, 010, 020);

insert into Examina values (010, 009, 014);
insert into Examina values (010, 009, 015);
insert into Examina values (010, 009, 016);

/*Cod_Pregunta, Enunciado, Num_Exams*/
insert into Pregunta values (001, 'Preg 1', 0);
insert into Pregunta values (002, 'Preg 2', 0);
insert into Pregunta values (003, 'Preg 3', 0);
insert into Pregunta values (004, 'Preg 4', 0);
insert into Pregunta values (005, 'Preg 5', 0);
insert into Pregunta values (006, 'Preg 6', 0);
insert into Pregunta values (007, 'Preg 7', 0);
insert into Pregunta values (008, 'Preg 8', 0);
insert into Pregunta values (009, 'Preg 9', 0);
insert into Pregunta values (010, 'Preg 10', 0);
insert into Pregunta values (011, 'Preg 11', 0);
insert into Pregunta values (012, 'Preg 12', 0);
insert into Pregunta values (013, 'Preg 13', 0);
insert into Pregunta values (014, 'Preg 14', 0);
insert into Pregunta values (015, 'Preg 15', 0);
insert into Pregunta values (016, 'Preg 16', 0);
insert into Pregunta values (017, 'Preg 17', 0);
insert into Pregunta values (018, 'Preg 18', 0);
insert into Pregunta values (019, 'Preg 19', 0);
insert into Pregunta values (020, 'Preg 20', 0);
insert into Pregunta values (021, 'Preg 21', 0);
insert into Pregunta values (022, 'Preg 22', 0);
insert into Pregunta values (023, 'Preg 23', 0);
insert into Pregunta values (024, 'Preg 24', 0);
insert into Pregunta values (025, 'Preg 25', 0);
insert into Pregunta values (026, 'Preg 26', 0);
insert into Pregunta values (027, 'Preg 27', 0);
insert into Pregunta values (028, 'Preg 28', 0);
insert into Pregunta values (029, 'Preg 29', 0);
insert into Pregunta values (030, 'Preg 30', 0);
insert into Pregunta values (031, 'Preg 31', 0);
insert into Pregunta values (032, 'Preg 32', 0);
insert into Pregunta values (033, 'Preg 33', 0);
insert into Pregunta values (034, 'Preg 34', 0);
insert into Pregunta values (035, 'Preg 35', 0);
insert into Pregunta values (036, 'Preg 36', 0);
insert into Pregunta values (037, 'Preg 37', 0);
insert into Pregunta values (038, 'Preg 38', 0);
insert into Pregunta values (039, 'Preg 39', 0);
insert into Pregunta values (040, 'Preg 40', 0);
insert into Pregunta values (041, 'Preg 41', 0);
insert into Pregunta values (042, 'Preg 42', 0);
insert into Pregunta values (043, 'Preg 43', 0);
insert into Pregunta values (044, 'Preg 44', 0);
insert into Pregunta values (045, 'Preg 45', 0);
insert into Pregunta values (046, 'Preg 46', 0);
insert into Pregunta values (047, 'Preg 47', 0);
insert into Pregunta values (048, 'Preg 48', 0);
insert into Pregunta values (049, 'Preg 49', 0);
insert into Pregunta values (050, 'Preg 50', 0);

/*Cod_Examen, Cod_Pregunta, Num_Correctas, Num_Incorrectas, Num_NSNC*/
	/*En principio cada examen cuenta con 3 preguntas*/
	/*Aún nos quedarán preguntas para añadir en exámenes*/
insert into Compuesta_Por values (001, 044, 3, 2, 0);
insert into Compuesta_Por values (001, 019, 2, 6, 1);
insert into Compuesta_Por values (001, 021, 2, 6, 1);

insert into Compuesta_Por values (002, 003, 4, 7, 8);
insert into Compuesta_Por values (002, 005, 6, 7, 5);
insert into Compuesta_Por values (002, 004, 7, 4, 3);

insert into Compuesta_Por values (003, 017, 4, 6, 2);
insert into Compuesta_Por values (003, 028, 2, 3, 5);
insert into Compuesta_Por values (003, 033, 5, 2, 0);

insert into Compuesta_Por values (004, 041, 4, 3, 4);
insert into Compuesta_Por values (004, 047, 3, 2, 6);
insert into Compuesta_Por values (004, 042, 6, 7, 6);

insert into Compuesta_Por values (005, 025, 6, 4, 3);
insert into Compuesta_Por values (005, 027, 5, 6, 0);
insert into Compuesta_Por values (005, 026, 3, 7, 0);

insert into Compuesta_Por values (006, 014, 7, 6, 0);
insert into Compuesta_Por values (006, 009, 2, 5, 5);
insert into Compuesta_Por values (006, 010, 2, 3, 5);

insert into Compuesta_Por values (007, 001, 4, 3, 3);
insert into Compuesta_Por values (007, 006, 5, 2, 6);
insert into Compuesta_Por values (007, 038, 6, 5, 5);

insert into Compuesta_Por values (008, 050, 6, 3, 4);
insert into Compuesta_Por values (008, 008, 4, 7, 0);
insert into Compuesta_Por values (008, 015, 3, 5, 0);

insert into Compuesta_Por values (009, 030, 8, 7, 7);
insert into Compuesta_Por values (009, 031, 5, 3, 4);
insert into Compuesta_Por values (009, 018, 3, 2, 3);

insert into Compuesta_Por values (010, 034, 6, 6, 7);
insert into Compuesta_Por values (010, 011, 3, 4, 4);
insert into Compuesta_Por values (010, 022, 3, 2, 3);

/*Cod_Tema, Cod_Pregunta*/
insert into Evalua values (001, 002);
insert into Evalua values (001, 003);
insert into Evalua values (002, 004);
insert into Evalua values (002, 005);
insert into Evalua values (003, 001);
insert into Evalua values (003, 039);
insert into Evalua values (004, 040);
insert into Evalua values (004, 006);
insert into Evalua values (005, 007);
insert into Evalua values (005, 038);
insert into Evalua values (006, 041);
insert into Evalua values (006, 042);
insert into Evalua values (007, 049);
insert into Evalua values (007, 047);
insert into Evalua values (008, 050);
insert into Evalua values (008, 048);
insert into Evalua values (009, 008);
insert into Evalua values (009, 046);
insert into Evalua values (010, 045);
insert into Evalua values (010, 015);
insert into Evalua values (011, 014);
insert into Evalua values (011, 013);
insert into Evalua values (012, 037);
insert into Evalua values (012, 009);
insert into Evalua values (013, 010);
insert into Evalua values (013, 036);
insert into Evalua values (014, 034);
insert into Evalua values (014, 023);
insert into Evalua values (015, 035);
insert into Evalua values (015, 011);
insert into Evalua values (016, 012);
insert into Evalua values (016, 022);
insert into Evalua values (017, 044);
insert into Evalua values (017, 021);
insert into Evalua values (018, 020);
insert into Evalua values (018, 019);
insert into Evalua values (019, 030);
insert into Evalua values (019, 029);
insert into Evalua values (020, 031);
insert into Evalua values (020, 018);
insert into Evalua values (021, 016);
insert into Evalua values (021, 017);
insert into Evalua values (022, 032);
insert into Evalua values (022, 028);
insert into Evalua values (023, 033);
insert into Evalua values (023, 043);
insert into Evalua values (024, 025);
insert into Evalua values (024, 024);
insert into Evalua values (025, 026);
insert into Evalua values (025, 027);


/*Cod_Pregunta, Cod_Opcion, Posicion_Num, Texto, Respuesta*/
insert into Opcion values (001, 001, 1, 'texto', 'Si');
insert into Opcion values (001, 002, 2, 'texto', 'No');
insert into Opcion values (002, 003, 1, 'texto', 'Si');
insert into Opcion values (002, 004, 2, 'texto', 'No');
insert into Opcion values (003, 005, 1, 'texto', 'Si');
insert into Opcion values (003, 006, 2, 'texto', 'No');
insert into Opcion values (004, 007, 1, 'texto', 'Si');
insert into Opcion values (004, 008, 2, 'texto', 'No');
insert into Opcion values (005, 009, 1, 'texto', 'Si');
insert into Opcion values (005, 010, 2, 'texto', 'No');
insert into Opcion values (006, 011, 1, 'texto', 'Si');
insert into Opcion values (006, 012, 2, 'texto', 'No');
insert into Opcion values (007, 013, 1, 'texto', 'Si');
insert into Opcion values (007, 014, 2, 'texto', 'No');
insert into Opcion values (008, 015, 1, 'texto', 'Si');
insert into Opcion values (008, 016, 2, 'texto', 'No');
insert into Opcion values (009, 017, 1, 'texto', 'Si');
insert into Opcion values (009, 018, 2, 'texto', 'No');
insert into Opcion values (010, 019, 1, 'texto', 'Si');
insert into Opcion values (010, 020, 2, 'texto', 'No');

insert into Opcion values (011, 021, 1, 'texto', 'Si');
insert into Opcion values (011, 022, 2, 'texto', 'No');
insert into Opcion values (012, 023, 1, 'texto', 'Si');
insert into Opcion values (012, 024, 2, 'texto', 'No');
insert into Opcion values (013, 025, 1, 'texto', 'Si');
insert into Opcion values (013, 026, 2, 'texto', 'No');
insert into Opcion values (014, 027, 1, 'texto', 'Si');
insert into Opcion values (014, 028, 2, 'texto', 'No');
insert into Opcion values (015, 029, 1, 'texto', 'Si');
insert into Opcion values (015, 030, 2, 'texto', 'No');
insert into Opcion values (016, 031, 1, 'texto', 'Si');
insert into Opcion values (016, 032, 2, 'texto', 'No');
insert into Opcion values (017, 033, 1, 'texto', 'Si');
insert into Opcion values (017, 034, 2, 'texto', 'No');
insert into Opcion values (018, 035, 1, 'texto', 'Si');
insert into Opcion values (018, 036, 2, 'texto', 'No');
insert into Opcion values (019, 037, 1, 'texto', 'Si');
insert into Opcion values (019, 038, 2, 'texto', 'No');
insert into Opcion values (020, 039, 1, 'texto', 'Si');
insert into Opcion values (020, 040, 2, 'texto', 'No');

insert into Opcion values (021, 041, 1, 'texto', 'Si');
insert into Opcion values (021, 042, 2, 'texto', 'No');
insert into Opcion values (022, 043, 1, 'texto', 'Si');
insert into Opcion values (022, 044, 2, 'texto', 'No');
insert into Opcion values (023, 045, 1, 'texto', 'Si');
insert into Opcion values (023, 046, 2, 'texto', 'No');
insert into Opcion values (024, 047, 1, 'texto', 'Si');
insert into Opcion values (024, 048, 2, 'texto', 'No');
insert into Opcion values (025, 049, 1, 'texto', 'Si');
insert into Opcion values (025, 050, 2, 'texto', 'No');
insert into Opcion values (026, 051, 1, 'texto', 'Si');
insert into Opcion values (026, 052, 2, 'texto', 'No');
insert into Opcion values (027, 053, 1, 'texto', 'Si');
insert into Opcion values (027, 054, 2, 'texto', 'No');
insert into Opcion values (028, 055, 1, 'texto', 'Si');
insert into Opcion values (028, 056, 2, 'texto', 'No');
insert into Opcion values (029, 057, 1, 'texto', 'Si');
insert into Opcion values (029, 058, 2, 'texto', 'No');
insert into Opcion values (030, 059, 1, 'texto', 'Si');
insert into Opcion values (030, 060, 2, 'texto', 'No');

insert into Opcion values (031, 061, 1, 'texto', 'Si');
insert into Opcion values (031, 062, 2, 'texto', 'No');
insert into Opcion values (032, 063, 1, 'texto', 'Si');
insert into Opcion values (032, 064, 2, 'texto', 'No');
insert into Opcion values (033, 065, 1, 'texto', 'Si');
insert into Opcion values (033, 066, 2, 'texto', 'No');
insert into Opcion values (034, 067, 1, 'texto', 'Si');
insert into Opcion values (034, 068, 2, 'texto', 'No');
insert into Opcion values (035, 069, 1, 'texto', 'Si');
insert into Opcion values (035, 070, 2, 'texto', 'No');
insert into Opcion values (036, 071, 1, 'texto', 'Si');
insert into Opcion values (036, 072, 2, 'texto', 'No');
insert into Opcion values (037, 073, 1, 'texto', 'Si');
insert into Opcion values (037, 074, 2, 'texto', 'No');
insert into Opcion values (038, 075, 1, 'texto', 'Si');
insert into Opcion values (038, 076, 2, 'texto', 'No');
insert into Opcion values (039, 077, 1, 'texto', 'Si');
insert into Opcion values (039, 078, 2, 'texto', 'No');
insert into Opcion values (040, 079, 1, 'texto', 'Si');
insert into Opcion values (040, 080, 2, 'texto', 'No');

insert into Opcion values (041, 081, 1, 'texto', 'Si');
insert into Opcion values (041, 082, 2, 'texto', 'No');
insert into Opcion values (042, 083, 1, 'texto', 'Si');
insert into Opcion values (042, 084, 2, 'texto', 'No');
insert into Opcion values (043, 085, 1, 'texto', 'Si');
insert into Opcion values (043, 086, 2, 'texto', 'No');
insert into Opcion values (044, 087, 1, 'texto', 'Si');
insert into Opcion values (044, 088, 2, 'texto', 'No');
insert into Opcion values (045, 089, 1, 'texto', 'Si');
insert into Opcion values (045, 090, 2, 'texto', 'No');
insert into Opcion values (046, 091, 1, 'texto', 'Si');
insert into Opcion values (046, 092, 2, 'texto', 'No');
insert into Opcion values (047, 093, 1, 'texto', 'Si');
insert into Opcion values (047, 094, 2, 'texto', 'No');
insert into Opcion values (048, 095, 1, 'texto', 'Si');
insert into Opcion values (048, 096, 2, 'texto', 'No');
insert into Opcion values (049, 097, 1, 'texto', 'Si');
insert into Opcion values (049, 098, 2, 'texto', 'No');
insert into Opcion values (050, 099, 1, 'texto', 'Si');
insert into Opcion values (050, 100, 2, 'texto', 'No');

/*
	DEBUG:
	define login = '11496939'
*/
drop view profesorconsulta;
set verify off;
create view profesorconsulta as select count(e.Cod_Pregunta) as preguntas from Imparte i, Formada_por f, Evalua e where i.CODASIGNAT = f.cod_asign and f.cod_tema = e.cod_tema and i.DNI = &login;


