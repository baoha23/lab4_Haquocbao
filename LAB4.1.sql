declare @Thongke table (PHG int, LTB float)
insert into @Thongke
	select PHG, AVG(LUONG) as LTB from NHANVIEN group by PHG;
select TENNV, 'Tình trạng' = IIF(LUONG > b.LTB, 'không tăng lương',' tăng lương')
	from NHANVIEN a inner join @Thongke b on a.PHG = b.PHG


