--
-- Curso Oracle 19c Administración
--

--col "Undo size MB" format a30
col "UNDO RETENTION seg" format a30
--col "Optimal undo retention seg" forma a30
set linesize 140

select 
    d.undo_size/(1024 * 1024) "Undo size MB", 
    substr(e.value,1,25) "UNDO RETENTION seg", 
    round((d.undo_size / (to_number(f.value) * g.undo_block_per_sec))) "Optimal undo retention seg"
from (
 SELECT SUM(a.bytes) undo_size 
 FROM v$datafile a, v$tablespace b, dba_tablespaces c 
 WHERE c.contents = 'UNDO' AND c.status = 'ONLINE' AND b.name = c.tablespace_name AND a.ts# = b.ts#) d, 
v$parameter e, 
v$parameter f,
(
	SELECT MAX(undoblks/((end_time-begin_time)*3600*24)) undo_block_per_sec FROM v$undostat
) g
where e.name = 'undo_retention'
and
f.name = 'db_block_size';

quit
