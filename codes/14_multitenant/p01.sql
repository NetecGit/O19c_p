--
-- Curso Oracle 19c Administración
--
CREATE PLUGGABLE DATABASE pdb4 ADMIN USER pdb4admin IDENTIFIED BY Oracle1 ROLES = ( dba )
    DEFAULT TABLESPACE tb_ventas DATAFILE '/u04/oradata/pdb4/df_ventas.dbf' SIZE 60M
    AUTOEXTEND ON
    FILE_NAME_CONVERT = ( '/u01/app/oracle/oradata/CDB1/pdbseed/', '/u04/oradata/pdb4/' )
    STORAGE ( MAXSIZE 2G )
PATH_PREFIX = '/u04/oradata/pdb4/';
