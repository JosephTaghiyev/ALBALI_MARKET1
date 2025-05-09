SELECT TO_CHAR(Sifarisler.Sifaris_Tarix, 'YYYY-MM') AS Ay,
       SUM(Mehsullar.Qiymet * Sifaris_Melumatlari.Say) AS Toplam_Satis
FROM Sifarisler
JOIN Sifaris_Melumatlari ON Sifarisler.Sifaris_ID = Sifaris_Melumatlari.Sifaris_ID
JOIN Mehsullar ON Sifaris_Melumatlari.Mehsul_ID = Mehsullar.Mehsul_ID
GROUP BY TO_CHAR(Sifarisler.Sifaris_Tarix, 'YYYY-MM')
ORDER BY Ay;


SELECT Musteriler.AD AS Musteri_Adi,
       SUM(Mehsullar.Qiymet * Sifaris_Melumatlari.Say) AS Toplam_Xerc
FROM Musteriler
JOIN Sifarisler ON Musteriler.Musteri_ID = Sifarisler.Musteri_ID
JOIN Sifaris_Melumatlari ON Sifarisler.Sifaris_ID = Sifaris_Melumatlari.Sifaris_ID
JOIN Mehsullar ON Sifaris_Melumatlari.Mehsul_ID = Mehsullar.Mehsul_ID
GROUP BY Musteriler.AD
ORDER BY Toplam_Xerc DESC;
