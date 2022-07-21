use proyecto_integrador;

insert into careers (NAME, code_cohort, DESCRIPTION, image)
values ('Frontend', '2022-1', 'Consiste en la conversión de datos en una interfaz grafica, para que el usuario pueda ver e interactuar con la informacion de forma digital usando HTML, CSS Y JavaScrip', '.jpg'),
('Backend', '2022-1', 'Consiste en la parte del desarrollo web que se encarga de toda la logica de una pagina web funcione correctamente y se trata del conjunto de acciones que pasan en una web pero que no vemos como por ejemplo La comunicacion con el servidor', '.jpg'),
('FullStar', '2022-1', 'Consiste en desarrollar la habilidad informatica que controla el diseño Fronend y Backend de aplicaciones web, sofware y sitios web', '.jpg');

INSERT INTO cities (name)
values('Medellín'), ('Itagüí'), ('Bello'), ('Envigado'), ('Sabaneta'), ('Caldas'), ('Rionegro');

insert into modalities (name)
values('Presencial'), ('Virtual'), ('Mixta');

insert into modules (id,NAME, duration, DESCRIPTION)

VALUES (1, 'Nivelatorio', 4, 'Este modulo pretende poner a punto a todos los participantes del curso en habilidades de programacón'),
(2,'SQL', 5, 'En este modulo se van a dar a conocer los fundamentos basicos de Bases de Datos en SQL'),
(3,'HTML y CSS', 5, 'Este modulo se dara a conocer a los estudiantes los fundamentos basicos en estructuras de paginas web y en como darles un diseño agradable'),
(4, 'Mongo DB', 7, 'En este modulo se va a dar a conocer los fundamentos en sistemas de base de datos no SQL'),
(5, 'JavaScrip', 6, 'En este modulo se dara a conocer los detalles basicos del lenguaje de progaramación o secuencias de comando orientadas a paginas web');

insert into roles (NAME, description)
values('Estudiante', 'Integrante del proyecto que se encuentra en formacion, recibiendo habilidades en el area de programacion'),
 ('Formador', 'Integrante de los proyectos que da a conocer sus conocimietos en programacion, ingles, o softkills y tiene a su cargo un grupo de estudientes'), 
 ('Director', 'Persona encagada de coordinar todos los aspectos del proyecto'), 
 ('Psicologo', 'Persona encargada de promover las habilidades blandas y realizar seguminiento y acompañamiento a los integrantes del proyecto'), 
 ('Coordinador', 'Integrante del proyecto que evalua, coordina y realiza seguimiento a los diferentes aspectos del proyecto');

insert into schedules (inicio, fin)
values (6, 10), (17, 21), (6, 21);

insert into types_news (name)
values('Cientifica'), ('Politica'), ('Social'), ('Cultural'), ('Deportiva'), ('Economica'), ('Actualidad'), ('Tecnología');

insert into users (identification_number, comp_name, age, email, bith_date, contac_number, photo, description)
values('1134055678', 'Antonio Jose Martinez Casas',  30, 'Casasjose45@gmail.com', '1992-02-18', '3004773245', '.jpg', 'No aplica'),
('1123488943', 'Laura Fernanda Escobar Flores', 18, 'Floresfernanda65@gmail.com', '2003-07-27', '3214981133', '.jpg', 'No aplica'),
('9534569232','Helena Ferrero Galvis', 36, 'ferrante77@gmail.com', '1986-02-22', '3002113456', '.jpg',  'No aplica' ),
('4578923545', 'Ronaldo Felipe Carmona Gomez', 25, 'Carmona433@gmail.com', '1997-05-10', '3042623456', '.jpg' , 'No aplica' ),
('1123477834', 'Federico Lopez Correa', 40, 'Fede40@gmail.com', '1982-02-12', '340345871', '.jpg' , 'No aplica'),
('1123455644', 'Martina Darlina Perez Perea' , 27, 'Perezaperta69@gmail.com', '1995-07-23', '3215673300','.jpg', 'No aplica' ),
('1004140053', 'Camila Martinez Gutierrez',  22, 'quiensabequepaso3@gmail.com', '2000-03-12', '3000099021', '.jpg', 'No aplica');

insert into users_roles (user_id, rol_id)
values (1, 1),
(2, 1),
(3, 1),
(4, 2),
(5, 3),
(6, 4),
(7, 5),
( 8, 5);

insert into addresses(address, city_id, user_id)
values ( 'Calle 4 sur # 43 - 98', 1, 1),
('Calle 23 # 45f - 12', 2, 2),
('Carrera56 # 45-90', 3, 5),
('Diagonal 1 # 54-78', 4, 4),
('Carrera 34 # 57-90', 5, 3),
('Calle 56 sur # 56-09', 6, 7),
('carrera 43 # 67-45', 7, 6),
('Calle 4 sur # 43 - 98', 8, 5);

insert into news(title, DESCRIPTION, picture, DATE, user_id, tipe_new)
values('¿Cuáles son las 20 marcas de tecnología y soluciones empresariales más valiosas del mundo?', ' En general, el valor de las 20 principales marcas tecnológicas B2B (business to business) es de más de dos billones de dólares en 2022 (2x1012, según la numeración argentina). En ese sentido, Microsoft conservó su título como la empresa más valiosa del sector (611.460 millones de dólares). El aumento de la demanda de tecnologías digitales, datos digitalizados y soluciones para trabajar desde casa también contribuyó a reforzar el valor de las marcas en un mercado que registró uno de los índices de crecimiento más acelerados de todas las categorías en los últimos tres años: de un 113% en total. Dentro de la lista de las 100 marcas más valiosas del mundo, las organizaciones de soluciones empresariales y tecnológicas representan casi una cuarta parte (23) de la clasificación.', '.jpg', '2022-07-07', 1, 8), 
('Usos de la tecnología blockchain más allá de las criptomonedas', 'Hablar de criptomonedas o tokens no fungibles (NFT) va de la mano con abordar la tecnología blockchain; sin embargo, a pesar de la estrecha relación que tiene este concepto con los criptoactivos, sus aplicaciones pueden extenderse más allá de estos.Primero un poco de historia: el sistema blockchain se presentó por primera vez en 2008 como una manera de registrar las transacciones e intercambios de bitcoin. Sin embargo, el creciente interés de las organizaciones y el público en general por entender y explorarel ecosistema cripto y los activos digitales hicieron que esta tecnología tomara cada vez más relevancia.Como su nombre lo indica, «blockchain» es una cadena de bloques que contiene información encriptada de cada transacción realizada en internet. Básicamente, funciona como una base de datos que mantiene un registro distribuido, descentralizado, sincronizado y seguro de la información del usuario en cualquier dispositivo digital.Una de las ventajas que tiene esta tecnología es que permite que cualquier actividad se realice de forma verificable, transparente e imposible de falsificar; es decir, genera una codificaciónúnica y segura para cada acción realizada en la red.De acuerdo con expertos de Chainalysis, existen al menos cuatro aplicaciones potenciales para el uso de esta tecnología. Contratos inteligentes y la consolidación del sistema DeFi, Aplicaciones en la cadena de suministro y logística, Gestión de la propiedad digital, Aplicaciones en el sector público y la gobernanza digital.', '.jpg', '2022-07-15', 2, 8), 
('Cambio climático, líderes ambientales y deforestación: esto hará Gustavo Petro', 'Colombia enfrenta una serie de retos ambientales que deberán ser clave en la agenda de Gustavo Petro, quien fue elegido como presidente de Colombia. Cinco organizaciones que trabajan estos temas, entre esas Gaia Amazonas y la Iniciativa Interreligiosa para la Protección de los Bosques Tropicales (IRI Colombia), ayudaron a El Espectador a analizar las propuestas ambientales que Petro presentó en su plan de gobierno antes de primera vuelta.', '.jpg', '2022-06-20', 3, 2),
('La Maratón Femenina de Nagoya ya tiene fecha', 'Los organizadores confirmaron que será el 12 de marzo de 2023. De la nueva edición participarán 22 mil atletas locales y 3.500 internacionales. Habrá un premio de 250.000 dólares para la ganadora.','.jpg', '2022-07-15', 3, 5);

insert into group_s
values (1, '2022-01', 1, 1, 1),
(2, '2022-02', 2, 1, 2),
(3, '2022-03', 3, 1, 3);

INSERT INTO careers_module(career_id, module_id)
VALUES(1, 1),
(1, 3),
(1, 5),
(2, 1),
(2, 2),
(2, 4),
(2, 5),
(3, 1),
(3, 2),
(3, 3),
(3, 4),
(3, 5);

INSERT INTO users_group_s(user_id, group_id)
VALUES (1, 2),
(2, 3),
(3, 2),
(4, 3),
(5, 1),
(6, 1),
(7, 2);



