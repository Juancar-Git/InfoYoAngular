-- DATA

--Resetear id a 1 tras vaciar la tabla
--DBCC CHECKIDENT ('schema.nombretabla', RESEED, 0);

-- Auser
INSERT INTO [auth].[AUser](Email, PasswordHash, Rol, Status, CreationDate) VALUES (
	'prueba@gmail.com', '1234', 'admin', 1, GETDATE()
);

INSERT INTO [org].[OPerson](Name, FirstSurname, SecondSurname, Birthdate, DocumentType, Gender, Country, PostCode, Province, Town, Address, MovilPhone,
LandlinePhone, ForeignPhone, PreferPhone, WebSite, OpenToWork, CreationDate, Closed, AUserId) VALUES ( 'Juan', 'Vega', 'Gonzalez', GETDATE(), 'DNI',
'Hombre', 'España', 03540, 'Alicante', 'Alicante', 'Calle Sargo 3', 684695874, null, null,'M', 'www.miweb.com', 0, GETDATE(), 0, 1) ;



-- WEB

-- NoLogHeader

-- HeadTitle no es necesario
-- Title no es necesario
-- Falta añadir el path del icono de InfoJobs
-- Falta Hint de Search Filter
-- Falta Hint de Location Filter
-- Falta Hover de Location Filter
-- Cambiar campo SeachFilterTitle por SearchFilterTitle
INSERT INTO [web].[WNoLogHeader](HeadTitle, Title, HeadBgImgPath, CompanyAccessBtn, CompanyAccessBtnUrl, CandidateAccessBtn, CandidateAccessBtnUrl,
BlockFilterTitle, SearchFilterTitle, LocationFilterTitle, SearchBtn, SearchBtnHoverDesc) VALUES ('InfoJobs', 'InfoJobs', 
'/assets/images/home/header/bg-home-full-tv.jpg', 'ACCESO EMPRESAS', '', 'ACCESO CANDIDATOS', '', 'Siempre a mejor', 'Busco ofertas de..',
'en..', 'BUSCAR', 'Buscar trabajo con mis preferencias');


-- WNoLogNavBarLink

INSERT INTO [web].[WNoLogNavBarLink](Name, LinkUrl) VALUES 
('Buscar empleo','/empleos'),
('Buscar empresas','/empresas'),
('Salarios','/salarios'),
('Formación','/formacion');


-- OPublicityData

-- No tengo claro si ponerlo en el schema org o web
INSERT INTO [org].[OPublicityData] (PublicityBgImgPath, LinkUrl) VALUES ('assets/images/home/publicity/talent-publicity.gif', 'https://empresas.infojobs.net/?stc=cs-infojobs-ijc_free_zonacan_bannerpublicagif-nonpaid_btb-publica&navOrigen=ijc_free_zonacan_bannerpublicagif,emCmpExt|ijc_free_zonacan_bannerpublicagif');


-- WNoLogCompanySection

-- Se puede cambiar nombre a Career e indicar que es del Home
INSERT INTO [web].[WNoLogCompanySection](Title, ShowMOreTextBtn, DefaultMiniIconImgPath, DefaultMiniImgPath, DefaultOffersQtyText) VALUES 
( 'Impulsa tu carrera trabajando en una empresa líder', 'MOSTRAR MAS EMPRESAS', 'assets/images/home/career/avatar1.png', 
'assets/images/home/career/career1.jpg', 'Saber más');


-- WNoLogCompanyItem

-- ESTA TABLA ES PROVISIONAL - LOS DATOS DEBEN PROCEDER DE LAS EMPRESA
-- ESTA TABLA ES PROVISIONAL - LOS DATOS DEBEN PROCEDER DE LAS EMPRESA
-- Uso el campo itemBtn para el Icono
INSERT INTO [web].[WNoLogCompanyItem] (Title, Description, ItemBgImgPath, ItemBtn, ItemBtnUrl, EnabledItem) VALUES 
('MAPFRE', 'Multinacional de consultoría, outsourcing e integración de sistemas en TI', 'assets/images/home/career/career1.jpg', 'assets/images/home/career/avatar1.png', '/empresas', 1),
('Inetum', 'Multinacional de consultoría, outsourcing e integración de sistemas en TI', 'assets/images/home/career/career2.jpg', 'assets/images/home/career/avatar2.png', '/empresas', 1),
('Lidl', 'Multinacional de consultoría, outsourcing e integración de sistemas en TI', 'assets/images/home/career/career3.jpg', 'assets/images/home/career/avatar3.png', '/empresas', 1),
('Randstad Digital', 'Multinacional de consultoría, outsourcing e integración de sistemas en TI', 'assets/images/home/career/career4.jpg', 'assets/images/home/career/avatar4.png', '/empresas', 1),
('Teleperformance', 'Multinacional de consultoría, outsourcing e integración de sistemas en TI', 'assets/images/home/career/career5.jpg', 'assets/images/home/career/avatar5.png', '/empresas', 1),
('Securitas Direct', 'Multinacional de consultoría, outsourcing e integración de sistemas en TI', 'assets/images/home/career/career6.jpg', 'assets/images/home/career/avatar6.png', '/empresas', 1);


-- WNoLogCompanyPublicityItem


INSERT INTO [web].[WNoLogCompanyPublicityItem] (Title, Description, ItemBgImgPath, ItemBtn, ItemBtnUrl, EnabledItem) VALUES
('¿Necesitas un coach laboral?', 'Te damos consejos para mejorar tu carrera profesional', 'assets/images/home/career/learn1.png', 'IR AL BLOG', '/blogs', 1),
('Mejora tu perfil profesional', 'Adquiere nuevos conocimientos con nuestros cursos de formación', 'assets/images/home/career/learn2.png', 'VER CURSOS', '/cursos', 1);


-- WNoLogFiltersSection

INSERT INTO [web].[WNoLogFiltersSection] (Title, MoreFiltersBtn) VALUES ('Encuentra un trabajo de...', '+ filtros');


-- WNoLogFiltersItem

-- FilterName y FilterValue pueden ser útiles para hacer el calculo internamente y saber en que item me encuentro, pero no para usar los valores
INSERT INTO [web].[WNoLogFiltersItem] (Title, ItemBgImgPath, FilterName, FilterValue) VALUES 
('35.000€ o mas', 'assets/images/home/find/find1.jpg', 'salary', '35000'),
('Media jornada', 'assets/images/home/find/find2.jpg', 'workday', 'part time'),
('Teletrabajo', 'assets/images/home/find/find3.jpg', 'telecommuting', 'true'),
('Directivo', 'assets/images/home/find/find4.jpg', 'directive', 'true');


-- WNoLogCitiesSection

INSERT INTO [web].[WNoLogCitiesSection] (Title, MoreCitiesBtn) VALUES ('Trabaja desde casa', '+ ciudades');

INSERT INTO [web].[WNoLogCitiesItem] (Title, ItemBgImgPath, FilterName, FilterValue) VALUES
('Madrid', 'assets/images/home/place/place1.jpg', 'location', 'madrid'),
('Barcelona', 'assets/images/home/place/place2.jpg', 'location', 'barcelona'),
('Valencia', 'assets/images/home/place/place3.jpg', 'location', 'valencia'),
('Bilbao', 'assets/images/home/place/place4.jpg', 'location', 'bilbao');


-- WNoLogSectorSection

INSERT INTO [web].[WNoLogSectorSection] (Title, MoreSectorsBtn) VALUES ('Sectores con mas oportunidad', '+ sectores');

INSERT INTO [web].[WNoLogSectorItem] (Title, ItemBgImgPath, FilterName, FilterValue) VALUES
('Informática', 'assets/images/home/opportunity/oppor1.jpg', 'sector', 'informatica'),
('Sanidad y salud', 'assets/images/home/opportunity/oppor2.jpg', 'sector', 'sanidad'),
('Comercial y ventas', 'assets/images/home/opportunity/oppor3.jpg', 'sector', 'comercia'),
('Directivos', 'assets/images/home/opportunity/oppor4.jpg', 'sector', 'directivos');










