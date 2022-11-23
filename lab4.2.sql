declare @Thongke table (PHG int, LTB float)
insert into @Thongke
	select PHG, AVG(LUONG) as LTB from NHANVIEN group by PHG;
select TENNV, 'Phân loại' = IIF(LUONG < b.LTB, 'nhanvien',' truongphong')
	from NHANVIEN a inner join @Thongke b on a.PHG = b.PHG