CREATE DATABASE kupca_proizvodi_narudzbe13;

USE kupca_proizvodi_narudzbe13;

--Kreiranje tabele Grad--
CREATE TABLE GRAD(
GradID INTEGER PRIMARY KEY,
Grad VARCHAR(25) NOT NULL,
Pozivni_broj VARCHAR(20) NOT NULL,
Postanski_broj VARCHAR(10) NOT NULL,
Broj_stanovnika INTEGER);

--PUNJENJE TABELE--
INSERT INTO GRAD(GradID,Grad,Pozivni_broj,Postanski_broj,Broj_stanovnika)
VALUES(1,'Bijeljina','+38755','76300',170000);
INSERT INTO GRAD(GradID,Grad,Pozivni_broj,Postanski_broj,Broj_stanovnika)
VALUES(2,'Novi Sad','+38121','21000',335000);
INSERT INTO GRAD(GradID,Grad,Pozivni_broj,Postanski_broj,Broj_stanovnika)
VALUES(3,'Beograd','+38111','11000',1700000);
INSERT INTO GRAD(GradID,Grad,Pozivni_broj,Postanski_broj,Broj_stanovnika)
VALUES(4,'Doboj','+38753','74000',70000);
INSERT INTO GRAD(GradID,Grad,Pozivni_broj,Postanski_broj,Broj_stanovnika)
VALUES(5,'Banja Luka','+38751','78000',200000);
INSERT INTO GRAD(GradID,Grad,Pozivni_broj,Postanski_broj,Broj_stanovnika)
VALUES(6,'Niksic','+38240','81400',70000);
INSERT INTO GRAD(GradID,Grad,Pozivni_broj,Postanski_broj,Broj_stanovnika)
VALUES(7,'Podgorica','+38220','81000',20000);
INSERT INTO GRAD(GradID,Grad,Pozivni_broj,Postanski_broj,Broj_stanovnika)
VALUES(8,'Zadar','+38523','23000',75000);

--KREIRANJE TABELE KUPAC--
CREATE TABLE KUPAC(
KupacID  INTEGER PRIMARY KEY,
Ime VARCHAR(20) NOT NULL,
Prezime VARCHAR(20) NOT NULL,
Adresa VARCHAR(100) NOT NULL,
GradID INTEGER NOT NULL,
Email VARCHAR(30),
Telefon VARCHAR(15));

ALTER TABLE kupac ADD FOREIGN KEY (gradid) REFERENCES grad(gradid);

--PUNJENJE TABELE KUPAC --
INSERT INTO KUPAC(KupacID,Ime,Prezime,Adresa,GradID,Email,Telefon)
VALUES(1,'Marko','Markovic','Ulica Kralja Petra I Karađorđevića',1,'marko@gmail.com','+38766895541');
INSERT INTO KUPAC(KupacID,Ime,Prezime,Adresa,GradID,Email,Telefon)
VALUES(2,'Petar','Petrovic','Zmaj Jovina ulica',2,'petar@gmail.com','+38161895542');
INSERT INTO KUPAC(KupacID,Ime,Prezime,Adresa,GradID,Email,Telefon)
VALUES(3,'Ana','Ivanovic','Ulica Knez Mihailova ',3,'ana@gmail.com','+38162895543');
INSERT INTO KUPAC(KupacID,Ime,Prezime,Adresa,GradID,Email,Telefon)
VALUES(4,'Milos','Milosevic','Ulica Dositeja Obradovica',4,'milos@gmail.com','+38766895544');
INSERT INTO KUPAC(KupacID,Ime,Prezime,Adresa,GradID,Email,Telefon)
VALUES(5,'Milijan','Nikolic','Gospodska ulica',1,'milijan@gmail.com','+38766895545');
INSERT INTO KUPAC(KupacID,Ime,Prezime,Adresa,GradID,Email,Telefon)
VALUES(6,'Milenko','Bojic','Bulevar Oslobođenja',2,'milenko@gmail.com','+38162895546');
INSERT INTO KUPAC(KupacID,Ime,Prezime,Adresa,GradID,Email,Telefon)
VALUES(7,'Darko','Ilic','Bulevar Mihajla Pupina',2,'darko@gmail.com','+38161895547');
INSERT INTO KUPAC(KupacID,Ime,Prezime,Adresa,GradID,Email,Telefon)
VALUES(8,'Obrad','Aresnovic','Trg Kralja Tomislava 20',5,'obrad@gmail.com','+38766895548');
INSERT INTO KUPAC(KupacID,Ime,Prezime,Adresa,GradID,Email,Telefon)
VALUES(9,'Dragana','Djokic','Svetosavska ulica',1,'dragana@gmail.com','+38766895549');
INSERT INTO KUPAC(KupacID,Ime,Prezime,Adresa,GradID,Email,Telefon)
VALUES(10,'Svjetlana','Pajic','Ulica Nikole Tesle',6,'ceca@gmail.com','+38266895510');
INSERT INTO KUPAC(KupacID,Ime,Prezime,Adresa,GradID,Email,Telefon)
VALUES(11,'Bozidar','Mitrovic','Ulica Cara Dušana',4,'boki@gmail.com','+38766895511');
INSERT INTO KUPAC(KupacID,Ime,Prezime,Adresa,GradID,Email,Telefon)
VALUES(12,'Vukasin','Dimitrijevic','Bulevar Svetog Petra Cetinjskog',7,'vukasin@gmail.com','+38266895531');
INSERT INTO KUPAC(KupacID,Ime,Prezime,Adresa,GradID,Email,Telefon)
VALUES(13,'Miljan','Vukovic','Ulica Kralja Aleksandra I Karađorđevića',1,'miljan@gmail.com','+38766895561');
INSERT INTO KUPAC(KupacID,Ime,Prezime,Adresa,GradID,Email,Telefon)
VALUES(14, 'Miljan','Petkovic','Ulica Ante Starčevića',8,'petkovic@gmail.com','+38566892567');
INSERT INTO KUPAC(KupacID,Ime,Prezime,Adresa,GradID,Email,Telefon)
VALUES(15, 'Nebojsa','Cvetkovic','Ulica Marko Miljanovca',7,'cvetkovic.neb@gmail.com','+38262894517');
INSERT INTO KUPAC(KupacID,Ime,Prezime,Adresa,GradID,Email,Telefon)
VALUES(16, 'Stipe','Modric','Ulica neznanih junaka',8,'modric.stipe@gmail.com','+38563812547');
INSERT INTO KUPAC(KupacID,Ime,Prezime,Adresa,GradID,Email,Telefon)
VALUES(17, 'Nenad','Pavlovic','Ulica Mihajla Pupina',5,'pavlovic.nen@gmail.com','+38765822537');
INSERT INTO KUPAC(KupacID,Ime,Prezime,Adresa,GradID,Email,Telefon)
VALUES(18, 'Srdjan','Mandusic','Ulica ',6,'mandusic.srdjan@gmail.com','+38266492147');
INSERT INTO KUPAC(KupacID,Ime,Prezime,Adresa,GradID,Email,Telefon)
VALUES(19, 'Matej','Lazic','Ulica Toplice Milana',3,'matija456@gmail.com','+38161193547');
INSERT INTO KUPAC(KupacID,Ime,Prezime,Adresa,GradID,Email,Telefon)
VALUES(20, 'Milorad','Vukasinovic','Trg Mese Selimovica ',4,'vukasinovicm@gmail.com','+38777492167');

--KREIRANJE TABELE PORUDZBINA--
CREATE TABLE PORUDZBINA(
PorudzbinaID  INTEGER PRIMARY KEY,
Vreme_porucivanja TIMESTAMP  NOT NULL,
Datum_izvrsavanja DATE,
Beleske VARCHAR(20),
KupacID  INTEGER NOT NULL);

ALTER TABLE porudzbina ADD FOREIGN KEY (kupacid) REFERENCES kupac(kupacid);

--PUNJENJE TABELE PORUDZBINA--
INSERT INTO PORUDZBINA(PorudzbinaID,Vreme_porucivanja,Datum_izvrsavanja,Beleske,KupacID)
VALUES(1,'2021-12-25 13:22','2021-12-25','ovo je porudzbina1',1);
INSERT INTO PORUDZBINA(PorudzbinaID,Vreme_porucivanja,Datum_izvrsavanja,Beleske,KupacID)
VALUES(2,'2023-06-06 12:25','2023-06-06', 'ovo je porudzbina2',1);
INSERT INTO PORUDZBINA(PorudzbinaID,Vreme_porucivanja,Datum_izvrsavanja,Beleske,KupacID)
VALUES(3,'2023-06-06 18:00','2023-06-06', 'ovo je porudzbina3',2);
INSERT INTO PORUDZBINA(PorudzbinaID,Vreme_porucivanja,Datum_izvrsavanja,Beleske,KupacID)
VALUES(4,'2023-06-06 13:00','2023-06-06', 'ovo je porudzbina4',2);
INSERT INTO PORUDZBINA(PorudzbinaID,Vreme_porucivanja,Datum_izvrsavanja,Beleske,KupacID)
VALUES(5,'2021-06-07 13:01','2021-06-08', 'ovo je porudzbina5',3);
INSERT INTO PORUDZBINA(PorudzbinaID,Vreme_porucivanja,Datum_izvrsavanja,Beleske,KupacID)
VALUES(6,'2021-05-07 13:45','2021-05-08', 'ovo je porudzbina6',3);
INSERT INTO PORUDZBINA(PorudzbinaID,Vreme_porucivanja,Datum_izvrsavanja,Beleske,KupacID)
VALUES(7,'2023-06-10 11:00','2023-06-11', 'ovo je porudzbina7',4);
INSERT INTO PORUDZBINA(PorudzbinaID,Vreme_porucivanja,Datum_izvrsavanja,Beleske,KupacID)
VALUES(8,'2021-08-08 10:01','2021-08-09', 'ovo je porudzbina8',4);
INSERT INTO PORUDZBINA(PorudzbinaID,Vreme_porucivanja,Datum_izvrsavanja,Beleske,KupacID)
VALUES(9,'2023-04-07 15:20','2023-04-08', 'ovo je porudzbina9',5);
INSERT INTO PORUDZBINA(PorudzbinaID,Vreme_porucivanja,Datum_izvrsavanja,Beleske,KupacID)
VALUES(10,'2021-06-07 13:01','2021-06-08', 'ovo je porudzbina10',6);
INSERT INTO PORUDZBINA(PorudzbinaID,Vreme_porucivanja,Datum_izvrsavanja,Beleske,KupacID)
VALUES(11,'2023-01-01 17:09','2023-01-01', 'ovo je porudzbina11',7);
INSERT INTO PORUDZBINA(PorudzbinaID,Vreme_porucivanja,Datum_izvrsavanja,Beleske,KupacID)
VALUES(12,'2023-02-02 18:04','2023-02-03', 'ovo je porudzbina12',8);
INSERT INTO PORUDZBINA(PorudzbinaID,Vreme_porucivanja,Datum_izvrsavanja,Beleske,KupacID)
VALUES(13,'2023-05-01 03:01','2023-05-03', 'ovo je porudzbina13',9);
INSERT INTO PORUDZBINA(PorudzbinaID,Vreme_porucivanja,Datum_izvrsavanja,Beleske,KupacID)
VALUES(14,'2023-09-08 14:45','2023-09-11', 'ovo je porudzbina14',10);
INSERT INTO PORUDZBINA(PorudzbinaID,Vreme_porucivanja,Datum_izvrsavanja,Beleske,KupacID)
VALUES(15,'2023-09-07 15:44','2023-09-08', 'ovo je porudzbina15',11);
INSERT INTO PORUDZBINA(PorudzbinaID,Vreme_porucivanja,Datum_izvrsavanja,Beleske,KupacID)
VALUES(16,'2023-10-07 15:54','2023-10-08', 'ovo je porudzbina16',12);
INSERT INTO PORUDZBINA(PorudzbinaID,Vreme_porucivanja,Datum_izvrsavanja,Beleske,KupacID)
VALUES(17,'2021-10-08 12:10','2021-10-09', 'ovo je porudzbina17',13);
INSERT INTO PORUDZBINA(PorudzbinaID,Vreme_porucivanja,Datum_izvrsavanja,Beleske,KupacID)
VALUES(18,'2021-11-08 12:55','2021-11-09', 'ovo je porudzbina18',11);
INSERT INTO PORUDZBINA(PorudzbinaID,Vreme_porucivanja,Datum_izvrsavanja,Beleske,KupacID)
VALUES(19,'2021-12-08 13:37','2021-12-09', 'ovo je porudzbina19',4);
INSERT INTO PORUDZBINA(PorudzbinaID,Vreme_porucivanja,Datum_izvrsavanja,Beleske,KupacID)
VALUES(20,'2021-12-11 13:54','2021-12-12', 'ovo je porudzbina20',2);
INSERT INTO PORUDZBINA(PorudzbinaID,Vreme_porucivanja,Datum_izvrsavanja,Beleske,KupacID)
VALUES(21,'2022-12-11 10:54','2022-12-12', 'ovo je porudzbina21',14);
INSERT INTO PORUDZBINA(PorudzbinaID,Vreme_porucivanja,Datum_izvrsavanja,Beleske,KupacID)
VALUES(22,'2022-10-17 12:12','2022-10-18', 'ovo je porudzbina22',15);
INSERT INTO PORUDZBINA(PorudzbinaID,Vreme_porucivanja,Datum_izvrsavanja,Beleske,KupacID)
VALUES(23,'2022-08-11 15:52','2022-08-12', 'ovo je porudzbina23',16);
INSERT INTO PORUDZBINA(PorudzbinaID,Vreme_porucivanja,Datum_izvrsavanja,Beleske,KupacID)
VALUES(24,'2022-07-23 11:32','2022-07-23', 'ovo je porudzbina24',17);
INSERT INTO PORUDZBINA(PorudzbinaID,Vreme_porucivanja,Datum_izvrsavanja,Beleske,KupacID)
VALUES(25,'2023-08-19 09:35','2023-08-19', 'ovo je porudzbina25',18);
INSERT INTO PORUDZBINA(PorudzbinaID,Vreme_porucivanja,Datum_izvrsavanja,Beleske,KupacID)
VALUES(26,'2023-01-25 13:44','2023-01-25', 'ovo je porudzbina26',19);
INSERT INTO PORUDZBINA(PorudzbinaID,Vreme_porucivanja,Datum_izvrsavanja,Beleske,KupacID)
VALUES(27,'2023-02-25 12:25','2023-02-25', 'ovo je porudzbina27',20);

--KREIRANJE TABELE DOBAVLJAC--
CREATE TABLE DOBAVLJAC(
DobavljacID  INTEGER PRIMARY KEY,
Naziv VARCHAR(20) NOT NULL,
Adresa VARCHAR(50) NOT NULL,
Telefon VARCHAR(15),
Faks VARCHAR(15),
Email VARCHAR(30),
GradID INTEGER NOT NULL);

ALTER TABLE dobavljac ADD FOREIGN KEY (gradid) REFERENCES grad(gradid);

INSERT INTO DOBAVLJAC(DobavljacID,Naziv,Adresa,Telefon,Faks,Email,GradID)
VALUES(1,'Agro Mix','Trg Kralja Petra I','111','123','abc@gmail.com',1);
INSERT INTO DOBAVLJAC(DobavljacID,Naziv,Adresa,Telefon,Faks,Email,GradID)
VALUES(2,'CDE','Trg herola','222','223','cde@gmail.com',2);
INSERT INTO DOBAVLJAC(DobavljacID,Naziv,Adresa,Telefon,Faks,Email,GradID)
VALUES(3,'EFG','adresa3','333','323','efg@gmail.com',3);
INSERT INTO DOBAVLJAC(DobavljacID,Naziv,Adresa,Telefon,Faks,Email,GradID)
VALUES(4,'HIJ','adresa4','444','423','hij@gmail.com',1);
INSERT INTO DOBAVLJAC(DobavljacID,Naziv,Adresa,Telefon,Faks,Email,GradID)
VALUES(5,'BNCkomp','adresa5','555','424','bnc@gmail.com',7);
INSERT INTO DOBAVLJAC(DobavljacID,Naziv,Adresa,Telefon,Faks,Email,GradID)
VALUES(6,'CPU','adresa6','666','425','cpu@gmail.com',1);
INSERT INTO DOBAVLJAC(DobavljacID,Naziv,Adresa,Telefon,Faks,Email,GradID)
VALUES(7,'Ekspres','Trg neznanih junaka','+38162743823','777','expressts@gmail.com',2);
INSERT INTO DOBAVLJAC(DobavljacID,Naziv,Adresa,Telefon,Faks,Email,GradID)
VALUES(8,'AtoB','adresa8','888','427','atob@gmail.com',2);
INSERT INTO DOBAVLJAC(DobavljacID,Naziv,Adresa,Telefon,Faks,Email,GradID)
VALUES(9,'HIRO','adresa9','+38765744813','999','herohero@gmail.com',4);
INSERT INTO DOBAVLJAC(DobavljacID,Naziv,Adresa,Telefon,Faks,Email,GradID)
VALUES(10,'Svetlost','adresa10','+38766744123','1010','hijsvetlost@gmail.com',5);
INSERT INTO DOBAVLJAC(DobavljacID,Naziv,Adresa,Telefon,Faks,Email,GradID)
VALUES(11,'Openworld','adresa11','1011','430','open@gmail.com',5);
INSERT INTO DOBAVLJAC(DobavljacID,Naziv,Adresa,Telefon,Faks,Email,GradID)
VALUES(12,'HelooSmile','adresa12','+38766893450','431','hello@gmail.com',8);

--KREIRANJE TABELE JEDINICA MERE--
CREATE TABLE JEDINICA_MERE(
JedinicaID  INTEGER PRIMARY KEY,
Jedinica VARCHAR(15) NOT NULL);

--PUNJENE TABELE JEDINICA MJERE--
INSERT INTO JEDINICA_MERE(JedinicaID,Jedinica)
VALUES(1,'gram');
INSERT INTO JEDINICA_MERE(JedinicaID,Jedinica)
VALUES(2,'metar');
INSERT INTO JEDINICA_MERE(JedinicaID,Jedinica)
VALUES(3,'tona');
INSERT INTO JEDINICA_MERE(JedinicaID,Jedinica)
VALUES(4,'litar');
INSERT INTO JEDINICA_MERE(JedinicaID,Jedinica)
VALUES(5,'kilogram');

--KREIRANJE TABELE PROIZVOD--
CREATE TABLE PROIZVOD(
ProizvodID  INTEGER PRIMARY KEY,
Proizvod VARCHAR(20) NOT NULL,
Na_stanju VARCHAR(5) NOT NULL,
Nabavna_cena DECIMAL(10,2),
Prodajna_cena DECIMAL(10,2),
JedinicaID INTEGER NOT NULL, 
DobavljacID INTEGER );

ALTER TABLE proizvod ADD FOREIGN KEY (jedinicaid) REFERENCES jedinica_mere(jedinicaid);
ALTER TABLE proizvod ADD FOREIGN KEY (dobavljacid) REFERENCES dobavljac(dobavljacid);

--PUNJENJE TABELE PROIZVOD--
INSERT INTO PROIZVOD(ProizvodID,Proizvod,Na_stanju,Nabavna_cena,Prodajna_cena,JedinicaID,DobavljacID)
VALUES(1,'Kafa','ima',4,7,1,1);
INSERT INTO PROIZVOD(ProizvodID,Proizvod,Na_stanju,Nabavna_cena,Prodajna_cena,JedinicaID,DobavljacID)
VALUES(2,'Papir','ima',20,50,2,2);
INSERT INTO PROIZVOD(ProizvodID,Proizvod,Na_stanju,Nabavna_cena,Prodajna_cena,JedinicaID,DobavljacID)
VALUES(3,'Ugalj','ima',150,220,3,3);
INSERT INTO PROIZVOD(ProizvodID,Proizvod,Na_stanju,Nabavna_cena,Prodajna_cena,JedinicaID,DobavljacID)
VALUES(4,'Pivo','ima',10,15,4,4);
INSERT INTO PROIZVOD(ProizvodID,Proizvod,Na_stanju,Nabavna_cena,Prodajna_cena,JedinicaID,DobavljacID)
VALUES(5,'Mlijeko','nema',1,2,4,5);
INSERT INTO PROIZVOD(ProizvodID,Proizvod,Na_stanju,Nabavna_cena,Prodajna_cena,JedinicaID,DobavljacID)
VALUES(6,'Platno','ima',10,22,2,6);
INSERT INTO PROIZVOD(ProizvodID,Proizvod,Na_stanju,Nabavna_cena,Prodajna_cena,JedinicaID,DobavljacID)
VALUES(7,'Gvozdje','nema',1000,1500,5,7);
INSERT INTO PROIZVOD(ProizvodID,Proizvod,Na_stanju,Nabavna_cena,Prodajna_cena,JedinicaID,DobavljacID)
VALUES(8,'Kupus','ima',3,10,5,8);
INSERT INTO PROIZVOD(ProizvodID,Proizvod,Na_stanju,Nabavna_cena,Prodajna_cena,JedinicaID,DobavljacID)
VALUES(9,'Mandarina','nema',10,11,5,9);
INSERT INTO PROIZVOD(ProizvodID,Proizvod,Na_stanju,Nabavna_cena,Prodajna_cena,JedinicaID,DobavljacID)
VALUES(10,'Elektrode','nema',13,15,1,10);
INSERT INTO PROIZVOD(ProizvodID,Proizvod,Na_stanju,Nabavna_cena,Prodajna_cena,JedinicaID,DobavljacID)
VALUES(11,'Drva','nema',110,130,2,11);
INSERT INTO PROIZVOD(ProizvodID,Proizvod,Na_stanju,Nabavna_cena,Prodajna_cena,JedinicaID,DobavljacID)
VALUES(12,'Meso','nema',11,13,5,12);

--KREIRANJE TABELE STAVKE PODRUDZBINE--
CREATE TABLE STAVKE_PORUDZBINE(
PorudzbinaID INTEGER NOT NULL,
ProizvodID INTEGER NOT NULL,
Kolicina INTEGER,
PRIMARY KEY (PorudzbinaID, ProizvodID));

ALTER TABLE stavke_porudzbine ADD FOREIGN KEY (PorudzbinaID) REFERENCES PORUDZBINA(PorudzbinaID);
ALTER TABLE stavke_porudzbine ADD FOREIGN KEY (ProizvodID) REFERENCES PROIZVOD(ProizvodID);

INSERT INTO STAVKE_PORUDZBINE(PorudzbinaID,ProizvodID,Kolicina)
VALUES(1,1,'6');
INSERT INTO STAVKE_PORUDZBINE(PorudzbinaID,ProizvodID,Kolicina)
VALUES(2,2,'50');
INSERT INTO STAVKE_PORUDZBINE(PorudzbinaID,ProizvodID,Kolicina)
VALUES(3,3,'20');
INSERT INTO STAVKE_PORUDZBINE(PorudzbinaID,ProizvodID,Kolicina)
VALUES(4,4,'6');
INSERT INTO STAVKE_PORUDZBINE(PorudzbinaID,ProizvodID,Kolicina)
VALUES(5,5,'10');
INSERT INTO STAVKE_PORUDZBINE(PorudzbinaID,ProizvodID,Kolicina)
VALUES(6,6,'45');
INSERT INTO STAVKE_PORUDZBINE(PorudzbinaID,ProizvodID,Kolicina)
VALUES(7,7,'3');
INSERT INTO STAVKE_PORUDZBINE(PorudzbinaID,ProizvodID,Kolicina)
VALUES(8,8,'4');
INSERT INTO STAVKE_PORUDZBINE(PorudzbinaID,ProizvodID,Kolicina)
VALUES(9,9,'12');
INSERT INTO STAVKE_PORUDZBINE(PorudzbinaID,ProizvodID,Kolicina)
VALUES(10,10,'22');
INSERT INTO STAVKE_PORUDZBINE(PorudzbinaID,ProizvodID,Kolicina)
VALUES(11,11,'19');
INSERT INTO STAVKE_PORUDZBINE(PorudzbinaID,ProizvodID,Kolicina)
VALUES(12,12,'1');
INSERT INTO STAVKE_PORUDZBINE(PorudzbinaID,ProizvodID,Kolicina)
VALUES(13,5,'17');
INSERT INTO STAVKE_PORUDZBINE(PorudzbinaID,ProizvodID,Kolicina)
VALUES(14,11,'16');
INSERT INTO STAVKE_PORUDZBINE(PorudzbinaID,ProizvodID,Kolicina)
VALUES(15,1,'250');
INSERT INTO STAVKE_PORUDZBINE(PorudzbinaID,ProizvodID,Kolicina)
VALUES(16,2,'10');
INSERT INTO STAVKE_PORUDZBINE(PorudzbinaID,ProizvodID,Kolicina)
VALUES(17,1,'7');
INSERT INTO STAVKE_PORUDZBINE(PorudzbinaID,ProizvodID,Kolicina)
VALUES(18,2,'6');
INSERT INTO STAVKE_PORUDZBINE(PorudzbinaID,ProizvodID,Kolicina)
VALUES(19,3,'170');
INSERT INTO STAVKE_PORUDZBINE(PorudzbinaID,ProizvodID,Kolicina)
VALUES(20,3,'400');
INSERT INTO STAVKE_PORUDZBINE(PorudzbinaID,ProizvodID,Kolicina)
VALUES(21,1,'500');
INSERT INTO STAVKE_PORUDZBINE(PorudzbinaID,ProizvodID,Kolicina)
VALUES(22,2,'20');
INSERT INTO STAVKE_PORUDZBINE(PorudzbinaID,ProizvodID,Kolicina)
VALUES(23,5,'20');
INSERT INTO STAVKE_PORUDZBINE(PorudzbinaID,ProizvodID,Kolicina)
VALUES(24,8,'150');
INSERT INTO STAVKE_PORUDZBINE(PorudzbinaID,ProizvodID,Kolicina)
VALUES(25,11,'10');
INSERT INTO STAVKE_PORUDZBINE(PorudzbinaID,ProizvodID,Kolicina)
VALUES(26,3,'20');
INSERT INTO STAVKE_PORUDZBINE(PorudzbinaID,ProizvodID,Kolicina)
VALUES(27,4,'50');

--01. Прва 3 купца из Бијељине поредани по презимену
SELECT prva_tri.prezime,prva_tri.ime 
FROM (SELECT kupac.kupacid, kupac.prezime, kupac.ime, MIN(vreme_porucivanja) FROM kupac
JOIN grad ON kupac.gradid = grad.gradid
JOIN porudzbina ON kupac.kupacid = porudzbina.kupacid
WHERE grad = 'Bijeljina'
GROUP BY kupac.kupacid, kupac.prezime, kupac.ime
ORDER BY MIN(Vreme_porucivanja) ASC
LIMIT 3) AS prva_tri
ORDER BY prva_tri.prezime;

--02. Добављачи чији се производи достављају у Бијељину
SELECT DISTINCT dobavljac.naziv AS dobavljac FROM porudzbina
JOIN stavke_porudzbine ON porudzbina.porudzbinaid=stavke_porudzbine.porudzbinaid
JOIN proizvod ON stavke_porudzbine.proizvodid=proizvod.proizvodid
JOIN dobavljac ON proizvod.dobavljacid=dobavljac.dobavljacid
JOIN kupac ON porudzbina.kupacid=kupac.kupacid
WHERE kupac.gradid = 1;

--03. Сабрати све количине производа по јединицама мјере
SELECT jedinica, SUM(kolicina) AS suma FROM proizvod
JOIN jedinica_mere ON proizvod.jedinicaid=jedinica_mere.jedinicaid
JOIN stavke_porudzbine ON proizvod.proizvodid=stavke_porudzbine.proizvodid
GROUP BY jedinica;

--04. Производи са својим добављачима сортирани по разлици између набавне и продајне цијене
SELECT proizvod, naziv AS dobavljac, prodajna_cena - nabavna_cena AS razlika FROM proizvod
JOIN dobavljac ON proizvod.dobavljacid=dobavljac.dobavljacid
ORDER BY prodajna_cena - nabavna_cena;

--05. Подаци о најстаријој наруџбини. Ко је наручио, шта и гдје то иде?
SELECT ime, prezime, proizvod,grad FROM porudzbina
JOIN kupac ON porudzbina.kupacid = kupac.kupacid
JOIN stavke_porudzbine ON porudzbina.porudzbinaid= stavke_porudzbine.porudzbinaid
JOIN proizvod ON stavke_porudzbine.proizvodid=proizvod.proizvodid
JOIN grad ON kupac.gradid = grad.gradid
WHERE vreme_porucivanja = (SELECT MIN (vreme_porucivanja) FROM porudzbina)
LIMIT 1;

--06. Купци са укупним бројем наруџбина. Име и презиме купца обавезно спојити у једно поље
SELECT CONCAT(ime, ' ', prezime) AS kupac, COUNT(porudzbinaid) AS broj_narudzbi FROM kupac
JOIN porudzbina ON kupac.kupacid=porudzbina.kupacid
GROUP BY CONCAT(ime, ' ', prezime);

--07. Сви градови у којима имамо адресе које почињу са „Трг...“
SELECT DISTINCT grad FROM grad
JOIN dobavljac ON grad.gradid=dobavljac.gradid
JOIN kupac ON grad.gradid=kupac.gradid
WHERE kupac.adresa LIKE 'Trg%' OR dobavljac.adresa LIKE 'Trg%';

--08. Добављачи са бар двије наруџбине, а да им адреса није у Београду и Новом Саду
SELECT dobavljac.Naziv AS dobavljac
FROM dobavljac
JOIN proizvod ON dobavljac.DobavljacID = proizvod.DobavljacID
JOIN stavke_porudzbine ON proizvod.ProizvodID = stavke_porudzbine.ProizvodID
JOIN porudzbina ON stavke_porudzbine.PorudzbinaID = porudzbina.PorudzbinaID
JOIN grad ON dobavljac.GradID = grad.GradID
WHERE grad NOT IN ('Beograd', 'Novi Sad')
GROUP BY dobavljac.Naziv
HAVING COUNT(porudzbina.PorudzbinaID) >= 2;

--09. Укупан број наруџбина купаца из Бања Луке
SELECT COUNT(porudzbinaid) AS ukupan_broj FROM porudzbina
JOIN kupac ON porudzbina.kupacid = kupac.kupacid
JOIN grad ON kupac.gradid=grad.gradid
WHERE grad = 'Banja Luka'
GROUP BY grad;

--10. Колико је тона робе отишло у Београд?
SELECT SUM(kolicina) AS ukupno FROM porudzbina 
JOIN kupac ON porudzbina.kupacid=kupac.kupacid
JOIN stavke_porudzbine ON porudzbina.porudzbinaid=stavke_porudzbine.porudzbinaid
JOIN proizvod ON stavke_porudzbine.proizvodid=stavke_porudzbine.proizvodid
JOIN jedinica_mere ON proizvod.jedinicaid=jedinica_mere.jedinicaid
WHERE jedinica = 'tona' AND gradid=3;

--11. Бројеви телефона и градови добављача чије мејл адресе садрже више од 14 карактера
SELECT telefon, grad FROM dobavljac
JOIN grad ON grad.gradid=dobavljac.gradid
WHERE LENGTH(dobavljac.email) > 14;

--12. Наруџбине из 2021.године које су отишле у градове са преко 150 000 становника
SELECT porudzbinaid FROM kupac
JOIN grad ON kupac.gradid = grad.gradid
JOIN porudzbina ON kupac.kupacid = porudzbina.kupacid
WHERE EXTRACT(YEAR FROM datum_izvrsavanja) = 2021 AND grad.broj_stanovnika > 150000;

--13. Колико је укупно новца на наруџбине потрошио купац Марко Марковић(или неко друго име по жељи из ваше базе)?
SELECT CONCAT(ime, ' ', prezime) AS kupac, SUM(prodajna_cena) AS ukupno_novca FROM porudzbina
JOIN kupac ON porudzbina.kupacid=kupac.kupacid
JOIN stavke_porudzbine ON porudzbina.porudzbinaid=stavke_porudzbine.porudzbinaid
JOIN proizvod ON stavke_porudzbine.proizvodid=proizvod.proizvodid
WHERE ime = 'Marko' AND prezime = 'Markovic'
GROUP BY CONCAT(ime, ' ', prezime);

--14. Креирати поглед Bijeljina који се састоји од информација о свим наруџбинама које су стигле у тај град
CREATE VIEW bijeljina AS
SELECT porudzbina.porudzbinaid, proizvod, prodajna_cena AS cena, datum_izvrsavanja AS datum, CONCAT(ime,' ', prezime) AS kupac  FROM kupac
JOIN porudzbina ON kupac.kupacid=porudzbina.kupacid
JOIN stavke_porudzbine ON porudzbina.porudzbinaid=stavke_porudzbine.porudzbinaid
JOIN proizvod ON stavke_porudzbine.proizvodid=proizvod.proizvodid
WHERE kupac.gradid = 1;

SELECT * FROM bijeljina;

--15. Креирати упит који се састоји од свих градова из којих долазе добављачи и поља Дрзава у које уписујемо „Србија“, „БиХ“, „Црна Гора“ уколико су градови из тих земаља, а „остало“ уколико је град из неке друге државе
SELECT DISTINCT grad,
CASE WHEN (grad IN ('Bijeljina', 'Doboj','Banja Luka')) THEN 'BiH'
WHEN (grad IN ('Beograd','Novi Sad')) THEN 'Srbija'
WHEN (grad IN ('Niksic','Podgorica')) THEN 'Crna Gora'
ELSE 'Ostalo'
END AS drzava
FROM grad
JOIN dobavljac ON grad.gradid=dobavljac.gradid;



