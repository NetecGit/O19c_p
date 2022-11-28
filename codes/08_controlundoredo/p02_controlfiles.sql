--
-- Curso Oracle 19c Administración
--
COLUMN type FORMAT a30 HEADING 'Record Type'
COLUMN record_size FORMAT 999999 HEADING 'Record|Size'
COLUMN records_used FORMAT 999999 HEADING 'Records|Used'
COLUMN first_index FORMAT 9999999 HEADING 'First|Index'
COLUMN last_index FORMAT 9999999 HEADING 'Last|Index'
COLUMN last_recid FORMAT 999999 HEADING 'Last|Record|ID'

SET LINES 80 PAGES 58 FEEDBACK OFF VERIFY OFF
SET PAGESIZE 200
SET LINESIZE 160
ttitle 'Control File Records'

SPOOL report.txt 
SELECT type, record_size, records_total, records_used, first_index, last_index, last_recid
FROM v$controlfile_record_section;

SPOOL OFF
CLEAR COLUMNS
SET FEEDBACK ON VERIFY ON
TTITLE OFF

QUIT
