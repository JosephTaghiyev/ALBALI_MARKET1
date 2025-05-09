create  table Musteriler(
    Musteri_ID int Primary key,
    AD varchar2(50),
    Email varchar2(50) unique
);

create table Mehsullar(
    Mehsul_ID int PRIMARY key,
    Mehsul_ADI VARCHAR2(50),
    Qiymet DECIMAL(10,2)
);

create table Sifarisler(
    Sifaris_ID int PRIMARY key,
    Musteri_ID int,
    Sifaris_tarix date,
    FOREIGN key (Musteri_ID) references Musteriler(Musteri_ID)
);

CREATE table Sifaris_Melumatlari(
SM_ID int PRIMARY key,
Sifaris_ID int,
Mehsul_ID int,
Say int,
FOREIGN KEY (Sifaris_ID) REFERENCES Sifarisler(Sifaris_ID),
FOREIGN key (Mehsul_ID) REFERENCES Mehsullar(Mehsul_ID)

);

