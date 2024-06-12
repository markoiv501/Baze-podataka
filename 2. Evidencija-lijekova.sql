CREATE DATABASE evidencija_lekova_mark;

USE evidencija_lekova_mark;

--Tabela 1: Proizvodjac
CREATE TABLE proizvodjac (
	pro_id INTEGER PRIMARY KEY,
	naziv VARCHAR(30) NOT NULL
);

INSERT INTO proizvodjac (pro_id, naziv)
VALUES 
(1, 'Hemofarm'),
(2, 'Krka'),
(3, 'Galenika'),
(4, 'Bosnalijek'),
(5, 'Pliva');

--Tabela 2: Grupa leka
CREATE TABLE grupa_leka (
	g_l_id INTEGER PRIMARY KEY,
	naziv_grupe VARCHAR (30) NOT NULL
);

INSERT INTO grupa_leka (g_l_id, naziv_grupe)
VALUES
(1, 'Analgetici'),
(2, 'Antibiotici'),
(3, 'Vitamini'),
(4, 'Diuretici'),
(5, 'Laksativi'),
(6, 'Antidepresiv'),
(7, 'Vitamini'),
(8, 'Bronhodilatatori'),
(9, 'Mukolitici'),
(10, 'Kortikosteroidi'),
(11, 'Lekovi za njegu koze'),
(12, 'Miorelaksanti');

--Tabela 3: Kontradikcija
CREATE TABLE kontradikcija (
	k_id INTEGER PRIMARY KEY,
	opis VARCHAR(200)
);

INSERT INTO kontradikcija (k_id, opis)
VALUES
(1, 'Preosjetljivost na paracetamol ili druge analgetike/antipiretike.'),
(2, 'Osjetljivost na amoksicilin ili druge peniciline'),
(3, 'Reaktivnost na ibuprofen ili druge NSAID lijekove'),
(4, 'Pretjerana reakcija na diazepam ili druge benzodiazepine'),
(5, 'Osjetljivost na laktulozu ili druge sastojke lijeka.'),
(6, 'Reakcija na atorvastatin ili druge vrste istog lijeka'),
(7, 'Niska tolerancija na azitromicin, eritromicin ili druge makrolide'),
(8, 'Preosjetljivost na metamizol ili druge pirazolone'),
(9, 'Reakcija na sertralin ili druge selektivne inhibitore ponovne pohrane serotonina'),
(10, 'Intestinalna opstrukcija, crijevna perforacija, upala crijeva, teška upala slijepog crijeva, crijevna atonija, preosjetljivost na sena ili druge laksative stimulanse.'),
(11, 'Pretjerana reakcija na ibuprofen ili druge NSAID lijekove'),
(12, 'Osjetljivost na amoksicilin, klavulanat ili druge peniciline ili beta-laktamske antibiotike'),
(13, 'Niska tolerancija na paracetamol ili druge sastojke sirupa'),
(14, 'Reaktivnost na alprazolam ili druge benzodiazepine'),
(15, 'Netolerancija na bisakodil ili druge sastojke lijeka'),
(16, 'Senzitivnost na losartan ili druge blokatore receptora angiotenzina II'),
(17, 'Preosjetljivost na ciprofloksacin ili druge fluorokinolone'),
(18, 'Osjetljivost na naproksen ili druge NSAID lijekove'),
(19, 'Pretjerana reakcija na fluoksetin ili druge selektivne inhibitore ponovne pohrane serotonina'),
(20, 'Niska tolerancija`1
  na psilijum ili druge sastojke lijeka'),
(21, 'Preosjetljivost na omeprazol ili druge inhibitore protonske pumpe (PPI)'),
(22, 'Rijetka mogućnost individualne preosjetljivosti ili alergijske reakcije na simetikon ili pomoćne sastojke lijeka.'),
(23, 'Osobe s određenim zdravstvenim stanjima ili koji uzimaju određene lijekove trebaju se posavjetovati s liječnikom prije uzimanja multivitamina radi mogućih interakcija ili negativnih učinaka.'),
(24, 'Osobe koje su alergične na askorbinsku kiselinu treba da izbjegavaju njeno uzimanje.'),
(25, 'Osjetljivost ili alergijska reakcija na salbutamol ili sastojke lijeka.'),
(26, 'Senzitivnost ili alergijska reakcija na acetilcistein ili sastojke lijeka.'),
(27, 'Preosjetljivost na cistein.'),
(28, 'Aktivna infekcija, posebno sistemski gljivični ili virusni infekcije.'),
(29, 'Nema ozbiljnih kontraindikacija, osim ako ste alergični na neki od sastojaka..'),
(30, 'Nema posebnih kontraindikacija, ali izbjegavajte upotrebu na otvorenim ranama.'),
(31, 'Ne koristite ako imate alergiju na hidrokortizon ili druge kortikosteroide, infekciju kože, akne, rozaceu ili otvorene rane.'),
(32, 'Kontraindikovan je kod osoba koje su alergične na aspirin.'),
(33, 'Lijek je kontraindikovan je kod osoba s preosjetljivošću na mišićne relaksante.');

--Tabela 4: Bolest
CREATE TABLE bolest (
	b_id INTEGER PRIMARY KEY,
	naziv VARCHAR(30) NOT NULL
);

INSERT INTO bolest (b_id, naziv)
VALUES
(1, 'Bol'), 
(2, 'Bakterijske infekcije'),
(3, 'Upala'),
(4, 'Anksioznost'), 
(5, 'Konstipacija'),
(6, 'Hiperlipidemija'),
(7, 'Hipertenzija'),
(8, 'Bolovi u zelucu'),
(9, 'Bronhitis'),
(10, 'Kozne bolesti'),
(11, 'Glavobolja'),
(12, 'Bol u misicima');

--Tabela 5: Neželjeni efekti
CREATE TABLE nezeljeni_efekti (
	n_e_id INTEGER PRIMARY KEY,
	opis VARCHAR(300) 
);

INSERT INTO nezeljeni_efekti (n_e_id, opis)
VALUES
(1, 'Alergijske reakcije'),
(2, 'Mucnina'),
(3, 'Glavoobolja'),
(4, 'Nervoza'),
(5, 'Dijareja'),
(6, 'Oticanje'),
(7, 'Bol u stomaku'),
(8, 'Smanjenje crvenih krvnih zrnaca'),
(9, 'Pojava depresije'),
(10, 'Nadutost'),
(11, 'Peckanje'),
(12, 'Svrab'),
(13, 'Osip'),
(14, 'Pospanost'),
(15, 'Grcevi'),
(16, 'Kasalj'),
(17, 'Umor'),
(18, 'Zgaravica'),
(19, 'Depresivnost'),
(20, 'Stomacni problemi'),
(21, 'Peckanje u ocima'),
(22, 'Osip na kozi'),
(23, 'Povecan krvni pritisak'),
(24, 'Stanjivanje koze'),
(25, 'Iritacija koze');

--Tabela 6: Pakovanje
CREATE TABLE pakovanje (
	pak_id INTEGER PRIMARY KEY,
	sastav VARCHAR(100),
	o_pak VARCHAR(50),
	kolicina INTEGER
);

INSERT INTO pakovanje (pak_id, sastav, o_pak, kolicina)
VALUES
(1, 'tablete', 'Blister', 10),
(2, 'tablete', 'Blister', 20),
(3, 'kapsule', 'Kutijica', 30),
(4, 'sirup', 'Bocica', 60),
(5, 'krema', 'Tuba', 50),
(6, 'inhalator', 'Inhalator', 60);

--Tabela 7: Lek
CREATE TABLE lek (
	lek_id INTEGER PRIMARY KEY,
	pro_id INTEGER NOT NULL,
	naziv_leka VARCHAR(50),
	nezasticeno_ime VARCHAR(100),
	nac_kor VARCHAR(50),
	g_l_id INTEGER NOT NULL 
);

ALTER TABLE lek ADD FOREIGN KEY (pro_id) REFERENCES proizvodjac(pro_id);
ALTER TABLE lek ADD FOREIGN KEY (g_l_id) REFERENCES grupa_leka(g_l_id);

INSERT INTO lek (lek_id, pro_id, naziv_leka, nezasticeno_ime, nac_kor, g_l_id)
VALUES
(1, 1, 'Paracetamol', 'Acetaminophen', 'Oralno. Tri puta dnevno', 1),
(2, 2, 'Amoksicilin', 'Amoxicillin', 'Oralno. Tri puta dnevno', 2),
(3, 3, 'Ibuprofen', 'Ibuprofen', 'Oralno. Tri puta dnevno', 1),
(4, 4, 'Diazepam', 'Diazepam', 'Oralno. Pet puta dnevno', 6),
(5, 5, 'Laktuloza', 'Lactulose', 'Oralno. Dva puta dnevno', 5),
(6, 1, 'Atorvastatin', 'Atorvastatin', 'Oralno. Tri puta dnevno', 1),
(7, 2, 'Azitromicin', 'Azithromycin', 'Oralno. Tri puta dnevno', 2),
(8, 3, 'Metamizol', 'Metamizole', 'Oralno. Dva puta dnevno', 1),
(9, 4, 'Sertralin', 'Sertraline', 'Oralno. Dva puta dnevno', 6), 
(10, 5, 'Sena', 'Senna', 'Oralno Dva puta dnevno', 5),
(11, 1, 'Ibuprofen krema', 'Ibuprofen cream', 'Topikalno. Dva puta dnevno', 1),
(12, 2, 'Amoksicilijan/klavulanat', 'Amoxicillin/Clavulanate', 'Oralno. Dva puta dnevno', 2),
(13, 3, 'Paracetamol sirup', 'Acetaminophen syrup', 'Oralno. Dva puta dnevno', 1),
(14, 4, 'Alprazolam', 'Alprazolam', 'Oralno. Tri puta dnevno', 6),
(15, 5, 'Bisakodil', 'Bisacodyl', 'Oralno. Dva puta dnevno', 5),
(16, 1, 'Losartan', 'Losartan', 'Oralno. Pet puta dnevno', 4),
(17, 2, 'Ciprofloksacin', 'Ciprofloxacin', 'Oralno. Dva puta dnevno', 2),
(18, 3, 'Naproxen', 'Naproxen', 'Oralno. Dva puta dnevno', 1),
(19, 4, 'Fluoksetin', 'Fluoxetine', 'Oralno. Dva puta dnevno', 6),
(20, 5, 'Psilijum', 'Psyllium', 'Oralno. Dva puta dnevno', 5),
(21, 1, 'Omeprazol', 'Omeprazol', 'Oralno. Dva puta dnevno', 1),
(22, 2, 'Simetikon', 'Simeticon', 'Oralno. Tri puta dnevno', 1),
(23, 1, 'Vitamiks', 'Vitamix', 'Oralno. Tri puta dnevno', 7),
(24, 2, 'Vitamin Kompleks', 'Vitamin Complex', 'Oralno. Tri puta dnevno', 7),
(25, 3, 'Vitamin C', 'Vitamin C', 'Oralno. Tri puta dnevno', 7),
(26, 5, 'Salbutamol', 'Salbutamol', 'Inhaliti iz inhalatora. Po potrebi', 8),
(27, 1, 'Acetilcistein', 'Acetilcistein', 'Oralno. Dva puta dnevno', 9),
(28, 3, 'Prednizon', 'Prednizon', 'Inhaliti iz inhalatora. Tri puta dnevno', 10),
(29, 1, 'Nivea Soft', 'Nive Soft', 'Nanijeti na kozu. Po potrebi', 11),
(30, 5, 'Eucerin Akvafor', 'Eucerin Aquaphor', 'Nanijeti na kozu. Dva puta dnevno', 11),
(31, 4, 'Hidrokortizon krema', 'Hydrocortisone Cream', 'Nanijeti na kozu. Tri puta dnevno', 11),
(32, 2, 'Aspirin', 'Aspirin', 'Oralno. Po potrebi', 1),
(33, 3, 'Misicni Relaksant', 'Muscule Relaxant', 'Nanijeti na kozu. Po potrebi', 12);

--Tabela 8: Lek_kontradikcije
CREATE TABLE lek_kontradikcije (
	lek_id INTEGER NOT NULL, 
	k_id INTEGER NOT NULL 
);

ALTER TABLE lek_kontradikcije ADD FOREIGN KEY (lek_id) REFERENCES lek(lek_id);
ALTER TABLE lek_kontradikcije ADD FOREIGN KEY (k_id) REFERENCES kontradikcija(k_id);

INSERT INTO lek_kontradikcije (lek_id, k_id)
VALUES
(1,1),
(2,2),
(3,3),
(4,4),
(5,5),
(6,6),
(7,7),
(8,8),
(9,9),
(10,10),
(11,11),
(12,12),
(13,13),
(14,14),
(15,15),
(16,16),
(17,17),
(18,18),
(19,19),
(20,20),
(21,21),
(22,22),
(2,21),
(6,18),
(7,17),
(12,18),
(2,2),
(7,19),
(23,23),
(24,23),
(25,24),
(26,25),
(27,26),
(27,27),
(28,28),
(29,29),
(30,30),
(31,31),
(32,32),
(33,33);

--Tabela 9: Lek_bolest
CREATE TABLE lek_bolest (  
	lek_id INTEGER NOT NULL, 
	b_id INTEGER NOT NULL 
);

ALTER TABLE lek_bolest ADD FOREIGN KEY (lek_id) REFERENCES lek(lek_id);
ALTER TABLE lek_bolest ADD FOREIGN KEY (b_id) REFERENCES bolest(b_id);

INSERT INTO lek_bolest (lek_id, b_id)
VALUES
(1,1),       
(2,9),       
(3,11),       
(4,4),       
(5,5),       
(6,6),       
(7,2),       
(8,1),       
(9,4),       
(10,5),      
(11,1),      
(12,2),      
(13,1),      
(14,4),      
(15,5),      
(16,7),      
(17,2),      
(18,1),      
(19,4),      
(20,5),
(21,8),
(22,8),
(20,8),
(10,8),
(3,7),
(23,2),
(24,3),
(25,3),
(26,9),
(27,9),
(28,9),
(29,10),
(30,10),
(31,10),
(32,11),
(33,12);

--Tabela 10: Lek_efekat
CREATE TABLE lek_efekat (
	lek_id INTEGER NOT NULL, 
	n_e_id INTEGER NOT NULL 	
);

ALTER TABLE lek_efekat ADD FOREIGN KEY (lek_id) REFERENCES lek(lek_id);
ALTER TABLE lek_efekat ADD FOREIGN KEY (n_e_id) REFERENCES nezeljeni_efekti(n_e_id);

INSERT INTO lek_efekat (lek_id, n_e_id)
VALUES
(1,1),
(2,2),
(3,3),
(4,4),
(5,5),
(6,6),
(7,7),
(8,8),
(9,9),
(10,10),
(11,11),
(12,12),
(13,13),
(14,14),
(15,15),
(16,16),
(17,17),
(18,18),
(19,19),
(20,20),
(21,21),
(22,22),
(23,10),
(24,20),
(25,10),
(26,3),
(27,5),
(27,2),
(28,23),
(29,25),
(30,13),
(31,24),
(32,1),
(33,14);

--Tabela 11: Lek_pakovanje
CREATE TABLE lek_pakovanje (
	pak_id INTEGER NOT NULL, 
	lek_id INTEGER NOT NULL, 
	komentar VARCHAR(100)
);

ALTER TABLE lek_pakovanje ADD FOREIGN KEY (pak_id) REFERENCES pakovanje(pak_id);
ALTER TABLE lek_pakovanje ADD FOREIGN KEY (lek_id) REFERENCES lek(lek_id);

INSERT INTO lek_pakovanje (lek_id, pak_id)
VALUES
(1,1),
(2,2),
(3,4),
(4,2),
(5,4),
(6,4),
(7,3),
(8,4),
(9,4),
(10,3),
(11,5),
(12,4),
(13,4),
(14,4),
(15,2),
(16,2),
(17,4),
(18,1),
(19,4),
(20,2),
(21,2),
(22,3),
(23,4),
(24,4),
(25,3),
(26,6),
(27,3),
(28,6),
(29,5),
(30,5),
(31,5),
(32,1),
(33,5);

--01. Proizvodjaci koji proizvode lijekove za bolove u želucu
SELECT proizvodjac.naziv AS proizvodjac FROM lek
JOIN proizvodjac ON lek.pro_id = proizvodjac.pro_id
JOIN lek_bolest ON lek.lek_id=lek_bolest.lek_id
JOIN bolest ON bolest.b_id=lek_bolest.b_id
WHERE bolest.naziv = 'Bolovi u zelucu';

--02. Koliko razlicitih lijekova proizvodi svaki proizvođac?
SELECT proizvodjac.naziv AS proizvodjac, COUNT(lek_id) AS br_raz_lekova FROM proizvodjac
JOIN lek ON proizvodjac.pro_id=lek.pro_id
GROUP BY proizvodjac.naziv;

--03. Vitamini (kao grupa lekova) koji kao neželjeni efekat imaju nadutost
SELECT naziv_leka FROM lek
JOIN grupa_leka ON lek.g_l_id=grupa_leka.g_l_id
JOIN lek_efekat ON lek.lek_id=lek_efekat.lek_id
JOIN nezeljeni_efekti ON lek_efekat.n_e_id=nezeljeni_efekti.n_e_id
WHERE opis='Nadutost' AND naziv_grupe = 'Vitamini';

--04. Lijekovi koji se mogu koristiti za bar dvije bolesti
SELECT naziv_leka  FROM lek_bolest
JOIN lek ON lek_bolest.lek_id=lek.lek_id
JOIN bolest ON lek_bolest.b_id=bolest.b_id
GROUP BY naziv_leka 
HAVING COUNT(bolest.b_id) >=2;

--05. U kojim pakovanjima se prodaju lijekovi koji se ne koriste u slučaju glavobolje, niti u slučaju bolova u mišićima?
SELECT DISTINCT o_pak FROM lek 
JOIN lek_bolest ON lek.lek_id=lek_bolest.lek_id
JOIN bolest ON lek_bolest.b_id=bolest.b_id
JOIN lek_pakovanje ON lek.lek_id=lek_pakovanje.lek_id
JOIN pakovanje ON lek_pakovanje.pak_id=pakovanje.pak_id
WHERE naziv NOT IN ('Glavobolja', 'Bol u misicima');

--06. Prva tri proizvođača po proizvodnji lijekova
SELECT proizvodjac.naziv as proizvodjac, COUNT(lek_id) AS br_lekova FROM lek
   JOIN proizvodjac ON lek.pro_id=proizvodjac.pro_id
    GROUP BY proizvodjac.pro_id 
    ORDER BY br_lekova DESC
    LIMIT 3;

--07. Proizvođači koji proizvode lijekove iz grupe analgetika sortirani po abecedi
SELECT DISTINCT naziv AS proizvodjac FROM lek
JOIN proizvodjac ON lek.pro_id=proizvodjac.pro_id
JOIN grupa_leka ON lek.g_l_id=grupa_leka.g_l_id
WHERE grupa_leka.naziv_grupe= 'Analgetici'
ORDER BY naziv ASC;

--08. Bolesti zbog kojih se lijekovi upotrebavaju 3 puta dnevno
SELECT DISTINCT naziv AS bolest FROM lek
JOIN lek_bolest ON lek.lek_id=lek_bolest.lek_id
JOIN bolest ON lek_bolest.b_id=bolest.b_id
WHERE nac_kor LIKE '%Tri puta dnevno%';

--09. Kreirati pogled naziva Bronhitis koji sadrži lijekove, načine upotrebe, pakovanja i količinu, koji se koriste u slučaju pomenute bolesti
CREATE VIEW Bronhitis AS
SELECT naziv_leka, nac_kor, o_pak, kolicina FROM lek
JOIN lek_bolest ON lek.lek_id=lek_bolest.lek_id
JOIN bolest ON lek_bolest.b_id=bolest.b_id
JOIN lek_pakovanje ON lek.lek_id=lek_pakovanje.lek_id
JOIN pakovanje ON lek_pakovanje.pak_id=pakovanje.pak_id
WHERE bolest.naziv='Bronhitis';

SELECT * FROM Bronhitis;

--10. Nazivi lijekova i polje Tip u koje upisujemo "sirup" ako se lijek pakuje u bočici, "sprej", u slučaju pumpica, "krema", ako je pakovanje tuba i "ostalo" u svim drugim slučajevima (Izmjena: "prasak", u slucaju "inhalator")
SELECT naziv_leka,
CASE
	WHEN o_pak = 'Bocica' THEN 'Sirup'
	WHEN o_pak = 'Inhalator' THEN 'Prasak'
	WHEN o_pak = 'Tuba' THEN 'Krema'
	ELSE 'Ostalo'
	END AS Tip
FROM pakovanje
JOIN lek_pakovanje ON lek_pakovanje.pak_id=pakovanje.pak_id
JOIN lek ON lek_pakovanje.lek_id=lek.lek_id;

--11. Načini upotrebe lijekova koji se pakuju u najvećoj količini
SELECT DISTINCT nac_kor FROM lek_pakovanje
JOIN lek ON lek_pakovanje.lek_id=lek.lek_id
JOIN pakovanje ON lek_pakovanje.pak_id=pakovanje.pak_id
WHERE kolicina = (SELECT MAX(kolicina) FROM pakovanje);

--12. Koliko različitih kontraindikacija ima svaki od lijekova čiji naziv počinje na slovo A
SELECT DISTINCT naziv_leka, COUNT(kontradikcija.k_id) AS br_raz_kontrad FROM lek_kontradikcije
JOIN lek ON lek_kontradikcije.lek_id=lek.lek_id
JOIN kontradikcija ON lek_kontradikcije.k_id=kontradikcija.k_id
WHERE naziv_leka LIKE 'A%'
GROUP BY naziv_leka;




