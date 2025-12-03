
-- Sample Data for Beauty Salon DB

INSERT INTO Klient (imie, nazwisko, telefon, email)
VALUES
('Anna', 'Kowalska', '555111222', 'anna@mail.com'),
('Maria', 'Nowak', '600111333', 'maria@mail.com'),
('Joanna', 'Zielinska', '511222333', 'joanna@mail.com'),
('Ewa', 'Jablonska', '500100200', 'ewa@mail.com');

INSERT INTO Pracownik (imie, nazwisko, specjalizacja, telefon)
VALUES
('Katarzyna', 'Maj', 'Kosmetolog', '700111222'),
('Julia', 'Lis', 'Fryzjer', '700222333'),
('Marta', 'Pawlak', 'Makijaż', '700333444');

INSERT INTO Usluga (nazwa, opis, cena, czas_trwania)
VALUES
('Manicure hybrydowy', 'Pełny manicure hybrydowy', 120, 60),
('Strzyżenie damskie', 'Strzyżenie + modelowanie', 150, 45),
('Makijaż dzienny', 'Delikatny makijaż', 180, 50),
('Pedicure SPA', 'Pełny pedicure relaksacyjny', 160, 70);

INSERT INTO Produkt (nazwa, cena, kategoria)
VALUES
('Szampon keratynowy', 45, 'Pielęgnacja'),
('Odżywka do włosów', 55, 'Pielęgnacja'),
('Lakier hybrydowy czerwony', 35, 'Stylizacja'),
('Krem do rąk', 25, 'Pielęgnacja');

INSERT INTO Wizyta (id_klienta, id_pracownika, data_wizyty, status)
VALUES
(1, 1, '2025-01-10 10:00', 'wykonana'),
(2, 2, '2025-01-11 12:00', 'wykonana'),
(3, 1, '2025-01-12 09:00', 'zaplanowana'),
(4, 3, '2025-01-13 11:00', 'wykonana');

INSERT INTO Wizyta_Uslugi (id_wizyty, id_uslugi, cena_uzgodniona)
VALUES
(1, 1, 120),
(2, 2, 150),
(3, 3, 180),
(4, 4, 160);

INSERT INTO Sprzedaz_Produktu (id_klienta, id_produktu, data_sprzedazy, ilosc, cena_jednostkowa)
VALUES
(1, 1, '2025-01-10 10:30', 1, 45),
(2, 2, '2025-01-11 12:30', 2, 55),
(3, 3, '2025-01-12 09:30', 1, 35),
(4, 4, '2025-01-13 11:30', 3, 25);
