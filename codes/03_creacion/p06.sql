create database orclm
MAXINSTANCES 8  
MAXLOGHISTORY 100  
MAXLOGFILES 64  
MAXLOGMEMBERS 3  
MAXDATAFILES 150
logfile group 1 ('/u01/app/oracle/oradata/ORCLM/redo01.log') size 100M,
        group 2 ('/u01/app/oracle/oradata/ORCLM/redo02.log') size 100M,
        group 3 ('/u01/app/oracle/oradata/ORCLM/redo03.log') size 100M
character set AL32UTF8
national character set utf8
datafile '/u01/app/oracle/oradata/ORCLM/system.dbf' size 100M autoextend on next 10M maxsize unlimited extent management local
sysaux datafile '/u01/app/oracle/oradata/ORCLM/sysaux.dbf' size 100M autoextend on next 10M maxsize unlimited
undo tablespace undotbs1 datafile '/u01/app/oracle/oradata/ORCLM/undotbs1.dbf' size 100M
default temporary tablespace temp tempfile '/u01/app/oracle/oradata/ORCLM/temp01.dbf' size 100M;
