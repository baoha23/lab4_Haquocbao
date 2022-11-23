begin try
declare @a int = 4, @b int = 0, @result int;
set @result = @a/@b;
end try
begin catch
declare @ErMessage nvarchar(2048), @ErSeveriy int, @ErState int
select @ErMessage = ERROR_MESSAGE(), 
       @ErSeveriy = ERROR_SEVERITY(),
       @ErState = ERROR_STATE()
  raiserror (@ErMessage, @ErSeveriy, @ErState)
end catch
