
-- Schema for Beauty Salon DB

CREATE TABLE Klient (
    id_klienta SERIAL PRIMARY KEY,
    imie VARCHAR(50),
    nazwisko VARCHAR(50),
    telefon VARCHAR(20),
    email VARCHAR(100),
    data_rejestracji DATE DEFAULT CURRENT_DATE
);

CREATE TABLE Pracownik (
    id_pracownika SERIAL PRIMARY KEY,
    imie VARCHAR(50),
    nazwisko VARCHAR(50),
    specjalizacja VARCHAR(100),
    telefon VARCHAR(20)
);

CREATE TABLE Usluga (
    id_uslugi SERIAL PRIMARY KEY,
    nazwa VARCHAR(100),
    opis TEXT,
    cena NUMERIC(10,2),
    czas_trwania INT
);

CREATE TABLE Wizyta (
    id_wizyty SERIAL PRIMARY KEY,
    id_klienta INT REFERENCES Klient(id_klienta),
    id_pracownika INT REFERENCES Pracownik(id_pracownika),
    data_wizyty TIMESTAMP,
    status VARCHAR(20)
);

CREATE TABLE Wizyta_Uslugi (
    id_wizyty INT REFERENCES Wizyta(id_wizyty),
    id_uslugi INT REFERENCES Usluga(id_uslugi),
    cena_uzgodniona NUMERIC(10,2),
    PRIMARY KEY(id_wizyty, id_uslugi)
);

CREATE TABLE Produkt (
    id_produktu SERIAL PRIMARY KEY,
    nazwa VARCHAR(100),
    cena NUMERIC(10,2),
    kategoria VARCHAR(50)
);

CREATE TABLE Sprzedaz_Produktu (
    id_sprzedazy SERIAL PRIMARY KEY,
    id_klienta INT REFERENCES Klient(id_klienta),
    id_produktu INT REFERENCES Produkt(id_produktu),
    data_sprzedazy TIMESTAMP,
    ilosc INT,
    cena_jednostkowa NUMERIC(10,2)
);
