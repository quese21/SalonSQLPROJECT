DROP TABLE IF EXISTS Sprzedaz_Produktu CASCADE;
DROP TABLE IF EXISTS Wizyta_Uslugi CASCADE;
DROP TABLE IF EXISTS Wizyta CASCADE;
DROP TABLE IF EXISTS Produkt CASCADE;
DROP TABLE IF EXISTS Usluga CASCADE;
DROP TABLE IF EXISTS Pracownik CASCADE;
DROP TABLE IF EXISTS Klient CASCADE;

CREATE TABLE Klient (
    id_klienta SERIAL PRIMARY KEY,
    imie VARCHAR(50) NOT NULL,
    nazwisko VARCHAR(50) NOT NULL,
    telefon VARCHAR(20),
    email VARCHAR(100),
    data_rejestracji TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE Pracownik (
    id_pracownika SERIAL PRIMARY KEY,
    imie VARCHAR(50) NOT NULL,
    nazwisko VARCHAR(50) NOT NULL,
    specjalizacja VARCHAR(100),
    telefon VARCHAR(20),
    pensja NUMERIC(10,2) 
);

CREATE TABLE Usluga (
    id_uslugi SERIAL PRIMARY KEY,
    nazwa VARCHAR(100) NOT NULL,
    opis TEXT,
    cena NUMERIC(10,2) NOT NULL,
    czas_trwania INT 
);

CREATE TABLE Wizyta (
    id_wizyty SERIAL PRIMARY KEY,
    id_klienta INT REFERENCES Klient(id_klienta),
    id_pracownika INT REFERENCES Pracownik(id_pracownika),
    data_wizyty TIMESTAMP NOT NULL,
    status VARCHAR(20) CHECK (status IN ('zaplanowana', 'wykonana', 'odwolana'))
);

CREATE TABLE Wizyta_Uslugi (
    id_wizyty INT REFERENCES Wizyta(id_wizyty),
    id_uslugi INT REFERENCES Usluga(id_uslugi),
    cena_uzgodniona NUMERIC(10,2),
    PRIMARY KEY(id_wizyty, id_uslugi)
);

CREATE TABLE Produkt (
    id_produktu SERIAL PRIMARY KEY,
    nazwa VARCHAR(100) NOT NULL,
    cena NUMERIC(10,2) NOT NULL,
    kategoria VARCHAR(50)
);

CREATE TABLE Sprzedaz_Produktu (
    id_sprzedazy SERIAL PRIMARY KEY,
    id_klienta INT REFERENCES Klient(id_klienta),
    id_produktu INT REFERENCES Produkt(id_produktu),
    data_sprzedazy TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    ilosc INT DEFAULT 1,
    cena_jednostkowa NUMERIC(10,2)
);
