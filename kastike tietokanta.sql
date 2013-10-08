--Reseptitaulu

CREATE TABLE RESEPTI 
(
Resepti_tunnus int, -- uniikki tunnus
Resepti_nimi VARCHAR(160),
Lisays_pvm DATE,
Valmistus VARCHAR(2000),
Annosten_maara int,
Vaikeusaste int,
Esivalmistusaika int, --minuutteja
Kypsennysaika int, --minuutteja

--genien kommentti :D
--Ehdot ja keyt
CONSTRAINT tarkistaVaikeusaste  CHECK (Vaikeusaste BETWEEN 0 AND 5),

CONSTRAINT resepti_id PRIMARY KEY (Resepti_tunnus)
--PRIMARY KEY Resepti_tunnus,--PRIMARY KEY Resepti_tunnus,
--FOREIGN KEY (avainsana) REFERENCES Persons --Tämä on kytkentä 
)

-- Käyttötilannetaulu

CREATE TABLE Kayttotilanne
(
Tilanne VARCHAR(20)
FOREIGN KEY (Resepti_tunnus) REFERENCES RESEPTI
)

