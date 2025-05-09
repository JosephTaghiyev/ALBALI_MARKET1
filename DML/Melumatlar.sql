-- 1. Musteriler
INSERT INTO Musteriler (Musteri_ID, AD, Email)
VALUES (1, 'Yusif Taghiyev', 'yusif@example.com');

INSERT INTO Musteriler (Musteri_ID, AD, Email)
VALUES (2, 'Sema Bayramli', 'sema@example.com');

-- 2. Mehsullar
INSERT INTO Mehsullar (Mehsul_ID, Mehsul_ADI, Qiymet)
VALUES (101, 'Telefon', 1500.00);

INSERT INTO Mehsullar (Mehsul_ID, Mehsul_ADI, Qiymet)
VALUES (102, 'Laptop', 3200.50);

-- 3. Sifarisler
INSERT INTO Sifarisler (Sifaris_ID, Musteri_ID,Sifaris_Tarix)
VALUES (1001, 1, TO_DATE('2024-05-01', 'YYYY-MM-DD'));

INSERT INTO Sifarisler (Sifaris_ID, Musteri_ID,Sifaris_Tarix)
VALUES (1002, 2, TO_DATE('2024-05-03', 'YYYY-MM-DD'));

-- 4. Sifaris_Melumatlari
INSERT INTO Sifaris_Melumatlari (SM_ID, Sifaris_ID, Mehsul_ID, Say)
VALUES (1, 1001, 101, 2);

INSERT INTO Sifaris_Melumatlari (SM_ID, Sifaris_ID, Mehsul_ID, Say)
VALUES (2, 1002, 102, 1);

INSERT INTO Musteriler (Musteri_ID, AD, Email)
VALUES (3, 'Elvin Mammadov', 'elvin@example.com');

INSERT INTO Musteriler (Musteri_ID, AD, Email)
VALUES (4, 'Nigar Qasimova', 'nigar@example.com');

INSERT INTO Mehsullar (Mehsul_ID, Mehsul_ADI, Qiymet)
VALUES (103, 'Planşet', 890.00);

INSERT INTO Mehsullar (Mehsul_ID, Mehsul_ADI, Qiymet)
VALUES (104, 'Qulaqciq', 120.99);

INSERT INTO Sifarisler (Sifaris_ID, Musteri_ID,SIFARIS_TARIX)
VALUES (1003, 3, TO_DATE('2024-05-05', 'YYYY-MM-DD'));

INSERT INTO Sifarisler (Sifaris_ID, Musteri_ID,SIFARIS_TARIX)
VALUES (1004, 4, TO_DATE('2024-05-06', 'YYYY-MM-DD'));


INSERT INTO Sifaris_Melumatlari (SM_ID, Sifaris_ID, Mehsul_ID, Say)
VALUES (3, 1003, 103, 1);

INSERT INTO Sifaris_Melumatlari (SM_ID, Sifaris_ID, Mehsul_ID, Say)
VALUES (4, 1003, 104, 2);

INSERT INTO Sifaris_Melumatlari (SM_ID, Sifaris_ID, Mehsul_ID, Say)
VALUES (5, 1004, 101, 1);


SELECT * from Mehsullar;

