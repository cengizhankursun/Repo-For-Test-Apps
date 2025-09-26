CREATE TABLE Musterilerim (
    MusteriID INT PRIMARY KEY IDENTITY(1,1),
    MusteriAdi NVARCHAR(100) UNIQUE NOT NULL,
    Email NVARCHAR(150) NOT NULL,
    Telefon NVARCHAR(15) NULL
);

CREATE TABLE Siparislerim (
    SiparisID INT PRIMARY KEY IDENTITY(1,1),
    MusteriID INT NOT NULL,
    SiparisTarihi DATETIME NOT NULL,
    ToplamTutar DECIMAL(10,2) CHECK (ToplamTutar > 0) NOT NULL,
    FOREIGN KEY (MusteriID) REFERENCES Musterilerim(MusteriID)
);



INSERT INTO Musterilerim (MusteriAdi, Email, Telefon) VALUES
('Ali Veli', 'ali.veli@example.com', '5551234567'),
('Ayþe Yýlmaz', 'ayse.yilmaz@example.com', '5559876543'),
('Mehmet Demir', 'mehmet.demir@example.com', NULL),
('Fatma Kaya', 'fatma.kaya@example.com', '5551122334');


INSERT INTO Siparislerim (MusteriID, SiparisTarihi, ToplamTutar) VALUES
(1, '2025-05-01', 2500.50),
(2, '2025-05-03', 1800.00),
(3, '2025-05-10', 3200.00),
(1, '2025-05-15', 1500.00),
(4, '2025-05-20', 2200.00);

CREATE VIEW vw_SiparisDetaylari AS
SELECT 
    s.SiparisID,
    s.SiparisTarihi,
    s.ToplamTutar,
    m.MusteriAdi,
    m.Email
FROM Siparislerim s
JOIN Musterilerim m ON s.MusteriID = m.MusteriID;

CREATE PROCEDURE sp_MusteriAra
    @MusteriAdi NVARCHAR(100)
AS
BEGIN
    SELECT MusteriID, MusteriAdi, Email, Telefon
    FROM Musterilerim
    WHERE MusteriAdi LIKE '%' + @MusteriAdi + '%';
END;

EXEC sp_MusteriAra @MusteriAdi = 'Ali';

