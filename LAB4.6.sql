begin try
     insert PHONGBAN (TENPHG, MAPHG, TRPHG, NG_NHANCHUC)
	 values ('Ke hoach',111,'017','2020-12-12')
	 print 'chen thanh cong'
end try 
begin catch
    print 'Loi' + convert(varchar, Error_number(),1)
	+ '=>' + Error_message()
end catch
