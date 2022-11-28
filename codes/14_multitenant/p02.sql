--
-- Curso Oracle 19c Administración
--

show con_name
show parameter parallel_max_servers

alter session set container=pdb1;
show con_name
show parameter parallel_max_servers

alter session set container=pdb_ventas;
show con_name
show parameter parallel_max_servers

alter session set container=cdb$root;
show con_name
show parameter parallel_max_servers

quit
