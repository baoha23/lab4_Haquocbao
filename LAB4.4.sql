use QLDA

select TENNV, LUONG, Thue = case
    when LUONG between 0 and 25000 then LUONG * 0.1
    when LUONG between 25000 and 30000 then LUONG * 0.12
    when LUONG between 30000 and 40000 then LUONG * 0.15
    when LUONG between 40000 and 50000 then LUONG * 0.2
    else LUONG * 0.25
	end
 from NHANVIEN
