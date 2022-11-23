select * from NHANVIEN
 declare @i int = 2, @dem int;
 set @dem = (select COUNT(*) from NHANVIEN)
 while (@i < @dem)
 begin
     if(@i = 4)
	    begin
	      set @i = @i + 2;
		  continue;
        end
  select MANV, HONV, TENLOT, TENNV from NHANVIEN
  where cast(MANV as int) = @i;
  set @i= @i + 2;
end
