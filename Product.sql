-- Tạo cơ sở dữ liệu
CREATE DATABASE ProductManagement;
Go

-- Sử dụng cơ sở dữ liệu vừa tạo
USE ProductManagement;

CREATE TABLE ProductTypes (
    ProductTypeCode VARCHAR(50) PRIMARY KEY,
    ProductTypeName VARCHAR(100) NOT NULL
);

CREATE TABLE ResponsiblePersons (
    ResponsiblePersonID INT PRIMARY KEY,
    ResponsiblePersonName VARCHAR(100) NOT NULL
);

CREATE TABLE Products (
    ProductID VARCHAR(50) PRIMARY KEY,
    ProductName VARCHAR(100) NOT NULL,
    ManufactureDate DATE NOT NULL,
    ProductTypeCode VARCHAR(50),
    ResponsiblePersonID INT,
    FOREIGN KEY (ProductTypeCode) REFERENCES ProductTypes(ProductTypeCode),
    FOREIGN KEY (ResponsiblePersonID) REFERENCES ResponsiblePersons(ResponsiblePersonID)
);

-- Thêm dữ liệu vào bảng vừa tạo
INSERT INTO ProductTypes (ProductTypeCode, ProductTypeName)
VALUES 
('Z37', 'Laptop Z37'),
('Z38', 'IPhoneX'),
('Z39', 'Chair'),
('Z40', 'Table');


INSERT INTO ResponsiblePersons (ResponsiblePersonID, ResponsiblePersonName)
VALUES (987688, 'Nguyen Van An'),
(987699, 'Nguyen Van B'),
(987690, 'Tran Van C'),
(987691, 'Kim Thi D');

INSERT INTO Products (ProductID, ProductName, ManufactureDate, ProductTypeCode, ResponsiblePersonID)
VALUES 
(111111, 'Laptop Z37', '2009-12-12', 'Z37', 987688),
(111112, 'IPhoneX', '2098-1-13', 'Z38', 987699),
(111113, 'Chair', '2084-11-23', 'Z39', 987690),
(111114, 'Table', '2084-3-24', 'Z40', 987691);





--Liệt kê danh sách loại sản phẩm của công ty
SELECT ProductTypeCode, ProductTypeName
FROM ProductTypes;

--Liệt kê danh sách sản phẩm của công ty
SELECT ProductID, ProductName, ManufactureDate, ProductTypeCode, ResponsiblePersonID
FROM Products;

--Liệt kê danh sách người chịu trách nhiệm của công ty
SELECT ResponsiblePersonID, ResponsiblePersonName
FROM ResponsiblePersons;
Go

--Liệt kê danh sách loại sản phẩm của công ty theo thứ tự tăng dần của tên
SELECT ProductTypeCode, ProductTypeName
FROM ProductTypes
ORDER BY ProductTypeName ASC;

--Liệt kê danh sách người chịu trách nhiệm của công ty theo thứ tự tăng dần của tên
SELECT ResponsiblePersonID, ResponsiblePersonName
FROM ResponsiblePersons
ORDER BY ResponsiblePersonName ASC;

