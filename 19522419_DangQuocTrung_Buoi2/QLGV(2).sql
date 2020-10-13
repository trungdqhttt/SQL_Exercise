﻿use QLGV
SET DATEFORMAT DMY

-- Nhập dữ liệu bảng KHOA
INSERT INTO KHOA(MAKHOA, TENKHOA, NGTLAP, TRGKHOA)
VALUES ('KHMT', 'Khoa hoc may tinh', '7/6/2005', 'GV01'),
	('HTTT', 'He thong thong tin', '7/6/2005', 'GV02'),
	('CNPM', 'Cong nghe phan mem', '7/6/2005', 'GV04'),
	('MTT', 'Mang va truyen thong', '20/10/2005', 'GV03'),
	('KTMT', 'Ky thuat may tinh', '20/12/2005', Null);
-- Nhập dữ liệu bảng GIÁO VIÊN
INSERT INTO GIAOVIEN(MAGV, HOTEN, HOCVI, HOCHAM, GIOITINH, NGSINH, NGVL, HESO, MUCLUONG, MAKHOA)
VALUES ('GV01', 'Ho Thanh Son', 'PTS', 'GS', 'Nam', '2/5/1950', '11/1/2004', 5.00, '2,250,000', 'KHMT'),
	('GV02', 'Tran Tam Thanh', 'TS', 'PGS', 'Nam', '17/12/1965', '20/4/2004', 4.50, '2,025,000', 'HTTT'),
	('GV03', 'Do Nghiem Phung', 'TS', 'GS', 'Nu', '1/8/1950', '23/9/2004', 4.00, '1,800,000', 'CNPM'),
	('GV04', 'Tran Nam Son', 'TS', 'PGS', 'Nam', '22/2/1961', '12/1/2005', 4.50, '2,025,000', 'KTMT'),
	('GV05', 'Mai Thanh Danh', 'ThS', 'GV', 'Nam', '12/3/1958', '12/1/2005', 3.00, '1,350,000', 'HTTT'),
	('GV06', 'Tran Doan Hung', 'TS', 'GV', 'Nam', '11/3/1953', '12/1/2005', 4.50, '2,025,000', 'KHMT'),
	('GV07', 'Nguyen Minh Tien', 'ThS', 'GV', 'Nam', '23/11/1971', '1/3/2005', 4.00, '1,800,000', 'KHMT'),
	('GV08', 'Le Thi Tran', 'KS', 'Null', 'Nu', '26/3/1974', '1/3/2005', 1.69, '760,500', 'KHMT'),
	('GV09', 'Nguyen To Lan', 'ThS', 'GV', 'Nu', '31/12/1966', '1/3/2005', 4.00, '1,800,000', 'HTTT'),
	('GV10', 'Le Tran Anh Loan', 'KS', 'Null', 'Nu', '17/7/1972', '1/3/2005', 1.86, '837,000', 'CNPM'),
	('GV11', 'Ho Thanh Tung', 'CN', 'GV', 'Nam', '12/1/1980', '15/5/2005', 2.67, '1,201,500', 'MTT'),
	('GV12', 'Tran Van Anh', 'CN', 'Null', 'Nu', '29/3/1981', '15/5/2005', 1.69, '760,500', 'CNPM'),
	('GV13', 'Nguyen Linh Dan', 'CN', 'Null', 'Nu', '23/5/1980', '15/5/2005', 1.69, '760,500', 'KTMT'),
	('GV14', 'Truong Minh Chau', 'ThS', 'GV', 'Nu', '30/11/1976', '15/5/2005', 3.00, '1,350,000', 'MTT'),
	('GV15', 'Le Ha Thanh', 'ThS', 'GV', 'Nam', '4/5/1978', '15/5/2005', 3.00, '1,350,000', 'KHMT');

ALTER TABLE KHOA
ADD CONSTRAINT FK_GVTK FOREIGN KEY (TRGKHOA) REFERENCES GIAOVIEN(MAGV) 
-- Nhập dữ liệu bảng HỌC VIÊN
INSERT INTO HOCVIEN(MAHV, HO, TEN, NGSINH, GIOITINH, NOISINH, MALOP)
VALUES ('K1101', 'Nguyen Van', 'A', '27/1/1986', 'Nam', 'TpHCM', 'K11'),
	('K1102', 'Tran Ngoc', 'Han', '14/3/1986', 'Nu', 'Kien Giang', 'K11'),
	('K1103', 'Ha Duy', 'Lap', '18/4/1986', 'Nam', 'Nghe An', 'K11'),
	('K1104', 'Tran Ngoc', 'Linh', '30/3/1986', 'Nu', 'Tay Ninh', 'K11'),
	('K1105', 'Tran Minh', 'Long', '27/2/1986', 'Nam', 'TpHCM', 'K11'),
	('K1106', 'Le Nhat', 'Minh', '24/1/1986', 'Nam', 'TpHCM', 'K11'),
	('K1107', 'Nguyen Nhu', 'Nhut', '27/1/1986', 'Nam', 'Ha Noi', 'K11'),
	('K1108', 'Nguyen Manh', 'Tam', '27/2/1986', 'Nam', 'Kien Giang', 'K11'),
	('K1109', 'Phan Thi Thanh', 'Tam', '27/1/1986', 'Nu', 'Vinh Long', 'K11'),
	('K1110', 'Le Hoai', 'Thuong', '5/2/1986', 'Nu', 'Can Tho', 'K11'),
	('K1111', 'Le Ha', 'Vinh', '25/12/1986', 'Nam', 'Vinh Long', 'K11'),
	('K1201', 'Nguyen Van', 'B', '11/2/1986', 'Nam', 'TpHCM', 'K12'),
	('K1202', 'Nguyen Thi Kim', 'Duyen', '18/1/1986', 'Nu', 'TpHCM', 'K12'),
	('K1203', 'Tran Thi Kim', 'Duyen', '17/9/1986', 'Nu', 'TpHCM', 'K12'),
	('K1204', 'Truong My', 'Hanh', '19/5/1986', 'Nu', 'Dong Nai', 'K12'),
	('K1205', 'Nguyen Thanh', 'Nam', '17/4/1986', 'Nam', 'TpHCM', 'K12'),
	('K1206', 'Nguyen Thi Truc', 'Thanh', '4/3/1986', 'Nu', 'Kien Giang', 'K12'),
	('K1207', 'Tran Thi Bich', 'Thuy', '8/2/1986', 'Nu', 'Nghe An', 'K12'),
	('K1208', 'Huynh Thi Kim', 'Trieu', '8/4/1986', 'Nu', 'Tay Ninh', 'K12'),
	('K1209', 'Pham Thanh', 'Trieu', '23/2/1986', 'Nam', 'TpHCM', 'K12'),
	('K1210', 'Ngo Thanh', 'Tuan', '14/2/1986', 'Nam', 'TpHCM', 'K12'),
	('K1211', 'Do Thi', 'Xuan', '9/3/1986', 'Nu', 'Ha Noi', 'K12'),
	('K1212', 'Le Thi Phi', 'Yen', '12/3/1986', 'Nu', 'TpHCM', 'K12'),
	('K1301', 'Nguyen Thi Kim', 'Cuc', '9/6/1986', 'Nu', 'Kien Giang', 'K13'),
	('K1302', 'Truong Thi My', 'Hien', '18/3/1986', 'Nu', 'Nghe An', 'K13'),
	('K1303', 'Le Duc', 'Hien', '21/3/1986', 'Nam', 'Tay Ninh', 'K13'),
	('K1304', 'Le Quang', 'Hien', '18/4/1986', 'Nam', 'TpHCM', 'K13'),
	('K1305', 'Le Thi', 'Huong', '27/3/1986', 'Nu', 'TpHCM', 'K13'),
	('K1306', 'Nguyen Thai', 'Huu', '30/3/1986', 'Nam', 'Ha Noi', 'K13'),
	('K1307', 'Tran Minh', 'Man', '28/5/1986', 'Nam', 'TpHCM', 'K13'),
	('K1308', 'Nguyen Hieu', 'Nghia', '8/4/1986', 'Nam', 'Kien Giang', 'K13'),
	('K1309', 'Nguyen Trung', 'Nghia', '18/1/1987', 'Nam', 'Nghe An', 'K13'),
	('K1310', 'Tran Thi Hong', 'Tham', '22/4/1986', 'Nu', 'Tay Ninh', 'K13'),
	('K1311', 'Tran Minh', 'Thuc', '4/4/1986', 'Nam', 'TpHCM', 'K13'),
	('K1312', 'Nguyen Thi Kim', 'Yen', '7/9/1986', 'Nu', 'TpHCM', 'K13');

ALTER TABLE LOP
DROP CONSTRAINT FK_HVLOP
-- Nhập dữ liệu bảng LỚP
INSERT INTO LOP(MALOP, TENLOP, TRGLOP, SISO, MAGVCN)
VALUES ('K11', 'Lop 1 khoa 1', 'K1108', 11, 'GV07'),
	('K12', 'Lop 2 khoa 1', 'K1205', 12, 'GV09'),
	('K13', 'Lop 3 khoa 1', 'K1305', 12, 'GV14');

ALTER TABLE LOP
ADD CONSTRAINT FK_HVLOP FOREIGN KEY (TRGLOP) REFERENCES HOCVIEN(MAHV)
-- Nhập dữ liệu bảng MÔN HỌC
INSERT INTO MONHOC(MAMH, TENMH, TCLT, TCTH, MAKHOA)
VALUES ('THDC', 'Tin hoc dai cuong', 4, 1, 'KHMT'),
	('CTRR', 'Cau truc roi rac', 5, 0, 'KHMT'),
	('CSDL', 'Co so du lieu', 3, 1, 'HTTT'),
	('CTDLGT', 'Cau truc du lieu va giai thuat', 3, 1, 'KHMT'),
	('PTTKTT', 'Phan tich thiet ke thuat toan', 3, 0, 'KHMT'),
	('DHMT', 'Do hoa may tinh', 3, 1, 'KHMT'),
	('KTMT', 'Kien truc may tinh', 3, 0, 'KTMT'),
	('TKCSDL', 'Thiet ke co so du lieu', 3, 1, 'HTTT'),
	('PTTKHTTT', 'Phan tich thiet ke he thong thong tin', 4, 1, 'HTTT'),
	('HDH', 'He dieu hanh', 4, 0, 'KTMT'),
	('NMCNPM', 'Nhap mon cong nghe phan mem', 3, 0, 'CNPM'),
	('LTCFW', 'Lap trinh C for win', 3, 1, 'CNPM'),
	('LTHDT', 'Lap trinh huong doi tuong', 3, 1, 'CNPM');
-- Nhập dữ liệu bảng GIẢNG DẠY
INSERT INTO GIANGDAY(MALOP, MAMH, MAGV, HOCKY, NAM, TUNGAY, DENNGAY)
VALUES ('K11', 'THDC', 'GV07', 1, 2006, '2/1/2006', '12/5/2006'),
	('K12', 'THDC', 'GV06', 1, 2006, '2/1/2006', '12/5/2006'),
	('K13', 'THDC', 'GV15', 1, 2006, '2/1/2006', '12/5/2006'),
	('K11', 'CTRR', 'GV02', 1, 2006, '9/1/2006', '17/5/2006'),
	('K12', 'CTRR', 'GV02', 1, 2006, '9/1/2006', '17/5/2006'),
	('K13', 'CTRR', 'GV08', 1, 2006, '9/1/2006', '17/5/2006'),
	('K11', 'CSDL', 'GV05', 2, 2006, '1/6/2006', '15/7/2006'),
	('K12', 'CSDL', 'GV09', 2, 2006, '1/6/2006', '15/7/2006'),
	('K13', 'CTDLGT', 'GV15', 2, 2006, '1/6/2006', '15/7/2006'),
	('K13', 'CSDL', 'GV05', 3, 2006, '1/8/2006', '15/12/2006'),
	('K13', 'DHMT', 'GV07', 3, 2006, '1/8/2006', '15/12/2006'),
	('K11', 'CTDLGT', 'GV15', 3, 2006, '1/8/2006', '15/12/2006'),
	('K12', 'CTDLGT', 'GV15', 3, 2006, '1/8/2006', '15/12/2006'),
	('K11', 'HDH', 'GV04', 1, 2007, '2/1/2007', '18/2/2007'),
	('K12', 'HDH', 'GV04', 1, 2007, '2/1/2007', '20/3/2007'),
	('K11', 'DHMT', 'GV07', 1, 2007, '18/2/2007', '20/3/2007');
-- Nhập dữ liệu bảng ĐIỀU KIỆN
INSERT INTO DIEUKIEN(MAMH, MAMH_TRUOC)
VALUES ('CSDL', 'CTRR'),
	('CSDL', 'CTDLGT'),
	('CTDLGT', 'THDC'),
	('PTTKTT', 'THDC'),
	('PTTKTT', 'CTDLGT'),
	('DHMT', 'THDC'),
	('LTHDT', 'THDC'),
	('PTTKHTTT', 'CSDL');
-- Nhập dữ liệu bảng KẾT QUẢ THI
INSERT INTO KETQUATHI(MAHV, MAMH, LANTHI, NGTHI, DIEM, KQUA)
VALUES ('K1101', 'CSDL', 1, '20/7/2006', 10.00, 'Dat'),
	('K1101', 'CTDLGT', 1, '28/12/2006', 9.00, 'Dat'),
	('K1101', 'THDC', 1, '20/5/2006', 9.00, 'Dat'),
	('K1101', 'CTRR', 1, '13/5/2006', 9.50, 'Dat'),
	('K1102', 'CSDL', 1, '20/7/2006', 4.00, 'Khong Dat'),
	('K1102', 'CSDL', 2, '27/7/2006', 4.25, 'Khong Dat'),
	('K1102', 'CSDL', 3, '10/8/2006', 4.50, 'Khong Dat'),
	('K1102', 'CTDLGT', 1, '28/12/2006', 4.50, 'Khong Dat'),
	('K1102', 'CTDLGT', 2, '5/1/2007', 4.00, 'Khong Dat'),
	('K1102', 'CTDLGT', 3, '15/1/2007', 6.00, 'Dat'),
	('K1102', 'THDC', 1, '20/5/2006', 5.00, 'Dat'),
	('K1102', 'CTRR', 1, '13/5/2006', 7.00, 'Dat'),
	('K1103', 'CSDL', 1, '20/7/2006', 3.50, 'Khong Dat'),
	('K1103', 'CSDL', 2, '27/7/2006', 8.25, 'Dat'),
	('K1103', 'CTDLGT', 1, '28/12/2006', 7.00, 'Dat'),
	('K1103', 'THDC', 1, '20/5/2006', 8.00, 'Dat'),
	('K1103', 'CTRR', 1, '13/5/2006', 6.50, 'Dat'),
	('K1104', 'CSDL', 1, '20/7/2006', 3.75, 'Khong Dat'),
	('K1104', 'CTDLGT', 1, '28/12/2006', 4.00, 'Khong Dat'),
	('K1104', 'THDC', 1, '20/5/2006', 4.00, 'Khong Dat'),
	('K1104', 'CTRR', 1, '13/5/2006', 4.00, 'Khong Dat'),
	('K1104', 'CTRR', 2, '20/5/2006', 3.50, 'Khong Dat'),
	('K1104', 'CTRR', 3, '30/6/2006', 4.00, 'Khong Dat'),
	('K1201', 'CSDL', 1, '20/7/2006', 6.00, 'Dat'),
	('K1201', 'CTDLGT', 1, '28/12/2006', 5.00, 'Dat'),
	('K1201', 'THDC', 1, '20/5/2006', 8.50, 'Dat'),
	('K1201', 'CTRR', 1, '13/5/2006', 9.00, 'Dat'),
	('K1202', 'CSDL', 1, '20/7/2006', 8.00, 'Dat'),
	('K1202', 'CTDLGT', 1, '28/12/2006', 4.00, 'Khong Dat'),
	('K1202', 'CTDLGT', 2, '5/1/2007', 5.00, 'Dat'),
	('K1202', 'THDC', 1, '20/5/2006', 4.00, 'Khong Dat'),
	('K1202', 'THDC', 2, '27/5/2006', 4.00, 'Khong Dat'),
	('K1202', 'CTRR', 1, '13/5/2006', 3.00, 'Khong Dat'),
	('K1202', 'CTRR', 2, '20/5/2006', 4.00, 'Khong Dat'),
	('K1202', 'CTRR', 3, '30/6/2006', 6.25, 'Dat'),
	('K1203', 'CSDL', 1, '20/7/2006', 9.25, 'Dat'),
	('K1203', 'CTDLGT', 1, '28/12/2006', 9.50, 'Dat'),
	('K1203', 'THDC', 1, '20/5/2006', 10.00, 'Dat'),
	('K1203', 'CTRR', 1, '13/5/2006', 10.00, 'Dat'),
	('K1204', 'CSDL', 1, '20/7/2006', 8.50, 'Dat'),
	('K1204', 'CTDLGT', 1, '28/12/2006', 6.75, 'Dat'),
	('K1204', 'THDC', 1, '20/5/2006', 4.00, 'Khong Dat'),
	('K1204', 'CTRR', 1, '13/5/2006', 6.00, 'Dat'),
	('K1301', 'CSDL', 1, '20/12/2006', 4.25, 'Khong Dat'),
	('K1301', 'CTDLGT', 1, '25/7/2006', 8.00, 'Dat'),
	('K1301', 'THDC', 1, '20/5/2006', 7.75, 'Dat'),
	('K1301', 'CTRR', 1, '13/5/2006', 8.00, 'Dat'),
	('K1302', 'CSDL', 1, '20/12/2006', 6.75, 'Dat'),
	('K1302', 'CTDLGT', 1, '25/7/2006', 5.00, 'Dat'),
	('K1302', 'THDC', 1, '20/5/2006', 8.00, 'Dat'),
	('K1302', 'CTRR', 1, '13/5/2006', 8.50, 'Dat'),
	('K1303', 'CSDL', 1, '20/12/2006', 4.00, 'Khong Dat'),
	('K1303', 'CTDLGT', 1, '25/7/2006', 4.50, 'Khong Dat'),
	('K1303', 'CTDLGT', 2, '7/8/2006', 4.00, 'Khong Dat'),
	('K1303', 'CTDLGT', 3, '15/8/2006', 4.25, 'Khong Dat'),
	('K1303', 'THDC', 1, '20/5/2006', 4.50, 'Khong Dat'),
	('K1303', 'CTRR', 1, '13/5/2006', 3.25, 'Khong Dat'),
	('K1303', 'CTRR', 2, '20/5/2006', 5.00, 'Dat'),
	('K1304', 'CSDL', 1, '20/12/2006', 7.75, 'Dat'),
	('K1304', 'CTDLGT', 1, '25/7/2006', 9.75, 'Dat'),
	('K1304', 'THDC', 1, '20/5/2006', 5.50, 'Dat'),
	('K1304', 'CTRR', 1, '13/5/2006', 5.00, 'Dat'),
	('K1305', 'CSDL', 1, '20/12/2006', 9.25, 'Dat'),
	('K1305', 'CTDLGT', 1, '25/7/2006', 10.00, 'Dat'),
	('K1305', 'THDC', 1, '20/5/2006', 8.00, 'Dat'),
	('K1305', 'CTRR', 1, '13/5/2006', 10.00, 'Dat');

/*11. Học viên ít nhất là 18 tuổi.*/
ALTER TABLE HOCVIEN
ADD CONSTRAINT CHK_AGE
CHECK (DATEDIFF(year, NGSINH, GETDATE()) >= 18)
/*12. Giảng dạy một môn học ngày bắt đầu (TUNGAY) phải nhỏ hơn ngày kết thúc (DENNGAY).*/
ALTER TABLE GIANGDAY
ADD CONSTRAINT CHK_DATE
CHECK (DATEDIFF(day, TUNGAY, DENNGAY) > 0)
/*13. Giáo viên khi vào làm ít nhất là 22 tuổi.*/
ALTER TABLE GIAOVIEN
ADD CONSTRAINT CHK_NGVL
CHECK (DATEDIFF(year, NGSINH, NGVL) >= 22)
/*14. Tất cả các môn học đều có số tín chỉ lý thuyết và tín chỉ thực hành chênh lệch nhau không quá 3.*/
ALTER TABLE MONHOC
ADD CONSTRAINT CHK_TC
CHECK (ABS(TCLT - TCTH) <= 3)
/*1. In ra danh sách (mã học viên, họ tên, ngày sinh, mã lớp) lớp trưởng của các lớp.*/
SELECT HOCVIEN.MAHV, HOCVIEN.HO, HOCVIEN.TEN, HOCVIEN.NGSINH, HOCVIEN.MALOP
FROM HOCVIEN, LOP
WHERE LOP.TRGLOP = HOCVIEN.MAHV
/*2. In ra bảng điểm khi thi (mã học viên, họ tên, lần thi, điểm số) môn CTRR của lớp “K12”, sắp xếp theo tên, họ học viên.*/
SELECT KETQUATHI.MAHV, HOCVIEN.HO, HOCVIEN.TEN, KETQUATHI.LANTHI, KETQUATHI.DIEM
FROM KETQUATHI, HOCVIEN
WHERE KETQUATHI.MAMH = 'CTRR' AND KETQUATHI.MAHV = HOCVIEN.MAHV AND HOCVIEN.MALOP = 'K12'
ORDER BY TEN, HO ASC
/*3. In ra danh sách những học viên (mã học viên, họ tên) và những môn học mà học viên đó thi lần thứ nhất đã đạt.*/
SELECT HOCVIEN.MAHV, HOCVIEN.HO, HOCVIEN.TEN, MONHOC.TENMH, KETQUATHI.DIEM
FROM HOCVIEN, KETQUATHI, MONHOC
WHERE KETQUATHI.MAHV = HOCVIEN.MAHV AND KETQUATHI.LANTHI = 1 AND KETQUATHI.KQUA = 'Dat' AND KETQUATHI.MAMH = MONHOC.MAMH
/*4. In ra danh sách học viên (mã học viên, họ tên) của lớp “K11” thi môn CTRR không đạt (ở lần thi 1).*/
SELECT HOCVIEN.MAHV, HOCVIEN.HO, HOCVIEN.TEN
FROM HOCVIEN, KETQUATHI
WHERE HOCVIEN.MAHV = KETQUATHI.MAHV AND HOCVIEN.MALOP = 'K11' AND KETQUATHI.MAMH = 'CTRR' 
AND KETQUATHI.KQUA = 'Khong Dat' AND KETQUATHI.LANTHI = 1
/*5. Danh sách học viên (mã học viên, họ tên) của lớp “K” thi môn CTRR không đạt (ở tất cả các lần thi).*/
SELECT HOCVIEN.MAHV, HOCVIEN.HO, HOCVIEN.TEN
FROM HOCVIEN, KETQUATHI
WHERE KETQUATHI.MAHV = HOCVIEN.MAHV AND LEFT(HOCVIEN.MALOP, 1) = 'K' AND KETQUATHI.KQUA = 'Khong Dat' AND KETQUATHI.LANTHI = 3
AND KETQUATHI.MAMH = 'CTRR'


