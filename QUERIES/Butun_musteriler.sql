SELECT Musteriler.AD, COUNT(Sifarisler.Sifaris_ID) AS Toplam_Sifaris
FROM Musteriler
JOIN Sifarisler ON Musteriler.Musteri_ID = Sifarisler.Musteri_ID
GROUP BY Musteriler.AD
ORDER BY Toplam_Sifaris DESC;
