--
-- Curso Oracle 19c Administración
--

begin
	for i in 1..2 loop
		insert into t_mod12(valor) select valor from t_mod12;
	end loop;
	commit;
end;
/

select count(1) from t_mod12;

quit
