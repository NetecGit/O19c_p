--
-- Curso Oracle 19c Administración
--

alter session set NLS_DATE_FORMAT='DD/MM/YYYY HH24:MI:SS'; 
set linesize 200

select s.username, s.sid, s.serial#, s.status, t.start_date "INICIO TRANSACCION",
       t.used_ublk "BLOQUES UNDO ACTIVOS",
       round(t.used_ublk / ((select sum(blocks)
from dba_data_files 
where online_status='ONLINE' and tablespace_name=(select value from v$parameter where name = 'undo_tablespace') group by tablespace_name))*100,2) "OCUPACION DE TS (%)"
from v$transaction t, v$session s
where t.ses_addr=s.saddr
order by used_ublk desc;

quit
