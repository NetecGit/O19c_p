--
-- Curso Oracle 19c Administración
--

drop user adminCurso cascade;
drop user audCurso cascade;
drop tablespace ts_auditorias including contents and datafiles;

create tablespace  ts_auditorias datafile '/u02/oradata/orcl/df_auditorias.dbf' size 100M ;

create user adminCurso identified by Oracle1 default tablespace ts_auditorias;
create user audCurso identified by Oracle1 default tablespace ts_auditorias;

grant connect, resource, audit_admin to adminCurso;
grant connect, resource, audit_viewer to audCurso;

quit
