-- data.sql

INSERT INTO Klient (imie, nazwisko, telefon, email, data_rejestracji) VALUES
('Anna', 'Kowalska', '555111222', 'anna.k@mail.com', '2024-12-01 10:00'),
('Maria', 'Nowak', '600111333', 'maria.n@mail.com', '2024-12-05 11:30'),
('Joanna', 'Zielinska', '511222333', 'joanna.z@mail.com', '2024-12-10 14:00'),
('Ewa', 'Jablonska', '500100200', 'ewa.j@mail.com', '2025-01-02 09:00'),
('Piotr', 'Wisniewski', '666777888', 'piotr.w@mail.com', '2025-01-05 16:20'),
('Krzysztof', 'Wojcik', '777888999', 'krzysztof.w@mail.com', '2025-01-07 10:00'),
('Agnieszka', 'Kozlowska', '888999000', 'aga.koz@mail.com', '2025-01-08 12:00'),
('Tomasz', 'Jankowski', '601201301', 'tomasz.j@mail.com', '2025-01-09 11:00'),
('Magdalena', 'Mazur', '602302402', 'magda.m@mail.com', '2025-01-10 13:00'),
('Monika', 'Krawczyk', '603403503', 'monika.k@mail.com', '2025-01-11 15:00'),
('Michal', 'Piotrowski', '604504604', 'michal.p@mail.com', '2025-01-12 09:30'),
('Karolina', 'Grabowska', '605605705', 'karolina.g@mail.com', '2025-01-12 10:00'),
('Barbara', 'Pawlowska', '606706806', 'basia.p@mail.com', '2025-01-12 11:00'),
('Pawel', 'Michalski', '607807907', 'pawel.m@mail.com', '2025-01-13 12:00'),
('Zofia', 'Krol', '608908008', 'zosia.k@mail.com', '2025-01-13 14:00'),
('Jakub', 'Wieczorek', '609009109', 'jakub.w@mail.com', '2025-01-14 09:00'),
('Aleksandra', 'Wrobel', '501102203', 'ola.w@mail.com', '2025-01-14 10:30'),
('Kamil', 'Sikora', '502203304', 'kamil.s@mail.com', '2025-01-15 16:00'),
('Natalia', 'Walczak', '503304405', 'natalia.w@mail.com', '2025-01-15 17:00'),
('Marcin', 'Baran', '504405506', 'marcin.b@mail.com', '2025-01-16 11:00');

INSERT INTO Pracownik (imie, nazwisko, specjalizacja, telefon, pensja) VALUES
('Katarzyna', 'Maj', 'Kosmetolog', '700111222', 6000.00),
('Julia', 'Lis', 'Fryzjer', '700222333', 8000.00),
('Marta', 'Pawlak', 'Makijażystka', '700333444', 7000.00),
('Robert', 'Czarnecki', 'Masażysta', '700444555', 6500.00),
('Patrycja', 'Duda', 'Stylistka Paznokci', '700555666', 5500.00);

INSERT INTO Usluga (nazwa, opis, cena, czas_trwania) VALUES
('Manicure hybrydowy', 'Pełny manicure z malowaniem', 120.00, 60),
('Strzyżenie damskie', 'Mycie, strzyżenie i modelowanie', 150.00, 45),
('Makijaż dzienny', 'Lekki makijaż podkreślający urodę', 180.00, 50),
('Pedicure SPA', 'Kąpiel stóp, peeling, malowanie', 160.00, 70),
('Strzyżenie męskie', 'Strzyżenie maszynką i nożyczkami', 80.00, 30),
('Koloryzacja włosów', 'Farbowanie jeden kolor + modelowanie', 250.00, 120),
('Masaż relaksacyjny', 'Masaż całego ciała olejkami', 200.00, 60),
('Regulacja brwi', 'Regulacja woskiem lub pęsetą', 40.00, 15);

INSERT INTO Produkt (nazwa, cena, kategoria) VALUES
('Szampon keratynowy', 45.00, 'Włosy'),
('Odżywka nawilżająca', 55.00, 'Włosy'),
('Lakier hybrydowy Czerwony', 35.00, 'Paznokcie'),
('Krem do rąk', 25.00, 'Ciało'),
('Olejek do brody', 40.00, 'Włosy'),
('Maskara pogrubiająca', 60.00, 'Makijaż');


INSERT INTO Wizyta (id_klienta, id_pracownika, data_wizyty, status) VALUES
(1, 5, '2025-01-10 10:00', 'wykonana'), -- Manicure
(2, 2, '2025-01-11 12:00', 'wykonana'), -- Strzyżenie
(3, 3, '2025-01-12 09:00', 'wykonana'), -- Makijaż
(4, 1, '2025-01-13 11:00', 'wykonana'), -- Kosmetolog
(5, 4, '2025-01-14 15:00', 'wykonana'), -- Masaż
(6, 2, '2025-01-14 16:00', 'wykonana'), -- Fryzjer
(7, 5, '2025-01-15 10:00', 'wykonana'),
(8, 2, '2025-01-15 11:00', 'wykonana'),
(9, 3, '2025-01-16 12:00', 'zaplanowana'),
(10, 4, '2025-01-16 14:00', 'zaplanowana'),
(11, 2, '2025-01-17 09:00', 'zaplanowana'),
(12, 1, '2025-01-17 10:30', 'zaplanowana'),
(13, 5, '2025-01-17 12:00', 'zaplanowana'),
(14, 2, '2025-01-18 10:00', 'zaplanowana'),
(15, 3, '2025-01-18 13:00', 'zaplanowana'),
(1, 2, '2025-01-20 10:00', 'zaplanowana'),
(2, 5, '2025-01-20 12:00', 'zaplanowana');


INSERT INTO Wizyta_Uslugi (id_wizyty, id_uslugi, cena_uzgodniona) VALUES
(1, 1, 120.00), -- Wizyta 1: Manicure
(2, 2, 150.00), -- Wizyta 2: Strzyżenie
(3, 3, 180.00), -- Wizyta 3: Makijaż
(4, 8, 40.00),  -- Wizyta 4: Regulacja brwi
(5, 7, 200.00), -- Wizyta 5: Masaż
(6, 5, 80.00),  -- Wizyta 6: Strzyżenie męskie
(7, 4, 160.00), -- Wizyta 7: Pedicure
(8, 6, 250.00), -- Wizyta 8: Koloryzacja
(9, 3, 180.00),
(10, 7, 200.00),
(11, 2, 150.00),
(12, 8, 40.00),
(13, 1, 110.00), -- Скидка 10zl
(14, 6, 250.00),
(15, 3, 180.00),
(16, 2, 150.00),
(17, 1, 120.00);

INSERT INTO Sprzedaz_Produktu (id_klienta, id_produktu, data_sprzedazy, ilosc, cena_jednostkowa) VALUES
(1, 1, '2025-01-10 10:30', 1, 45.00), -- Szampon
(2, 2, '2025-01-11 12:30', 2, 55.00), -- Odżywka x2
(3, 3, '2025-01-12 09:30', 1, 35.00), -- Lakier
(4, 4, '2025-01-13 11:30', 3, 25.00), -- Krem x3
(5, 5, '2025-01-14 15:10', 1, 40.00), -- Olejek
(6, 1, '2025-01-14 16:45', 1, 45.00),
(8, 6, '2025-01-15 11:45', 1, 60.00),
(10, 4, '2025-01-16 14:10', 2, 25.00);
