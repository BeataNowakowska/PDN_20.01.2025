-- Tabela Bohater
CREATE TABLE Bohater (
    BohaterID INT PRIMARY KEY,
    Imie VARCHAR(50) NOT NULL,
    Rasa VARCHAR(50),
    Klasa VARCHAR(50)
);

-- Tabela Sprzęt
CREATE TABLE Sprzet (
    SprzetID INT PRIMARY KEY,
    Nazwa VARCHAR(50) NOT NULL,
    Typ VARCHAR(50),
    BohaterID INT,
    FOREIGN KEY (BohaterID) REFERENCES Bohater(BohaterID) ON DELETE SET NULL
);

-- Tabela Misje
CREATE TABLE Misja (
    MisjaID INT PRIMARY KEY,
    Nazwa VARCHAR(100) NOT NULL,
    PoziomTrudnosci VARCHAR(50),
    BohaterID INT,
    FOREIGN KEY (BohaterID) REFERENCES Bohater(BohaterID) ON DELETE SET NULL
);

-- Wypełnianie tabel danymi
-- Bohaterowie
INSERT INTO Bohater (BohaterID, Imie, Rasa, Klasa) VALUES
(1, 'Arthas', 'Człowiek', 'Rycerz'),
(2, 'Legolas', 'Elf', 'Łucznik'),
(3, 'Gimli', 'Krasnolud', 'Wojownik'),
(4, 'Thranduil', 'Elf', 'Król'),
(5, 'Boromir', 'Człowiek', 'Kapitan'),
(6, 'Dwalin', 'Krasnolud', 'Wojownik'),
(7, 'Gandalf', 'Istota Wyższa', 'Mag');

-- Sprzęt
INSERT INTO Sprzet (SprzetID, Nazwa, Typ, BohaterID) VALUES
(1, 'Miecz Światła', 'Broń', 1),
(2, 'Tarcza Ochronna', 'Tarcza', 1),
(3, 'Łuk Elfów', 'Broń', 2),
(4, 'Topór Wojenny', 'Broń', 3),
(5, 'Zbroja Krasnoludzka', 'Pancerz', 3),
(6, 'Korona Lasu', 'Artefakt', 4),
(7, 'Róg Gondoru', 'Artefakt', 5),
(8, 'Laska Gandalfa', 'Broń', 7),
(9, 'Pierścień Władzy', 'Artefakt', 7);

-- Misje
INSERT INTO Misja (MisjaID, Nazwa, PoziomTrudnosci, BohaterID) VALUES
(1, 'Obrona Królestwa', 'Średni', 1),
(2, 'Wyprawa do Mordoru', 'Trudny', 2),
(3, 'Poszukiwanie Skarbu', 'Łatwy', 3),
(4, 'Walka z Smokiem', 'Bardzo Trudny', 3),
(5, 'Ochrona Króla Elfów', 'Średni', 4),
(6, 'Obrona Minas Tirith', 'Trudny', 5),
(7, 'Pokonanie Balroga', 'Bardzo Trudny', 7),
(8, 'Podróż przez Morię', 'Trudny', 3);
