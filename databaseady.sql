-- Chuyển sang làm việc trên database ady
USE ady;
GO

-- 1. Đếm tổng số lượng bệnh nhân có trong bảng
SELECT COUNT(*) AS [Tong_So_Benh_Nhan] 
FROM dbo.cleaned_cardio;
GO

-- 2. Xem 10 bệnh nhân đầu tiên (khớp với nút "Xem 10 bệnh nhân mẫu" trên web)
SELECT TOP 10 * 
FROM dbo.cleaned_cardio 
ORDER BY id ASC;
GO

-- 3. Tra cứu 1 bệnh nhân cụ thể theo ID (khớp với chức năng tìm kiếm trên web)
SELECT * 
FROM dbo.cleaned_cardio 
WHERE id = 0;
GO

--4. trâ cứu 10 bênh nhân cuối
SELECT TOP 10 * 
FROM dbo.cleaned_cardio 
ORDER BY id DESC;
GO

-- ============================================================
-- PHẦN 4. LỌC THEO ĐỘ TUỔI
-- ============================================================

-- 4a. Lọc ra những bệnh nhân từ 30 tuổi trở lên
SELECT *
FROM dbo.cleaned_cardio
WHERE age >= 30;
GO

-- 4b. Lọc ra những bệnh nhân từ 40 tuổi trở lên
SELECT *
FROM dbo.cleaned_cardio
WHERE age >= 40;
GO

-- 4c. Lọc ra những bệnh nhân trong độ tuổi từ 30 đến 50
SELECT *
FROM dbo.cleaned_cardio
WHERE age BETWEEN 30 AND 50;
GO



