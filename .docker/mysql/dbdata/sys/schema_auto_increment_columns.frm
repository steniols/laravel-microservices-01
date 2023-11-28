TYPE=VIEW
query=select `information_schema`.`COLUMNS`.`TABLE_SCHEMA` AS `table_schema`,`information_schema`.`COLUMNS`.`TABLE_NAME` AS `table_name`,`information_schema`.`COLUMNS`.`COLUMN_NAME` AS `column_name`,`information_schema`.`COLUMNS`.`DATA_TYPE` AS `data_type`,`information_schema`.`COLUMNS`.`COLUMN_TYPE` AS `column_type`,(locate(\'unsigned\',`information_schema`.`COLUMNS`.`COLUMN_TYPE`) = 0) AS `is_signed`,(locate(\'unsigned\',`information_schema`.`COLUMNS`.`COLUMN_TYPE`) > 0) AS `is_unsigned`,((case `information_schema`.`COLUMNS`.`DATA_TYPE` when \'tinyint\' then 255 when \'smallint\' then 65535 when \'mediumint\' then 16777215 when \'int\' then 4294967295 when \'bigint\' then 18446744073709551615 end) >> if((locate(\'unsigned\',`information_schema`.`COLUMNS`.`COLUMN_TYPE`) > 0),0,1)) AS `max_value`,`information_schema`.`TABLES`.`AUTO_INCREMENT` AS `auto_increment`,(`information_schema`.`TABLES`.`AUTO_INCREMENT` / ((case `information_schema`.`COLUMNS`.`DATA_TYPE` when \'tinyint\' then 255 when \'smallint\' then 65535 when \'mediumint\' then 16777215 when \'int\' then 4294967295 when \'bigint\' then 18446744073709551615 end) >> if((locate(\'unsigned\',`information_schema`.`COLUMNS`.`COLUMN_TYPE`) > 0),0,1))) AS `auto_increment_ratio` from (`INFORMATION_SCHEMA`.`COLUMNS` join `INFORMATION_SCHEMA`.`TABLES` on(((`information_schema`.`COLUMNS`.`TABLE_SCHEMA` = `information_schema`.`TABLES`.`TABLE_SCHEMA`) and (`information_schema`.`COLUMNS`.`TABLE_NAME` = `information_schema`.`TABLES`.`TABLE_NAME`)))) where ((`information_schema`.`COLUMNS`.`TABLE_SCHEMA` not in (\'mysql\',\'sys\',\'INFORMATION_SCHEMA\',\'performance_schema\')) and (`information_schema`.`TABLES`.`TABLE_TYPE` = \'BASE TABLE\') and (`information_schema`.`COLUMNS`.`EXTRA` = \'auto_increment\')) order by (`information_schema`.`TABLES`.`AUTO_INCREMENT` / ((case `information_schema`.`COLUMNS`.`DATA_TYPE` when \'tinyint\' then 255 when \'smallint\' then 65535 when \'mediumint\' then 16777215 when \'int\' then 4294967295 when \'bigint\' then 18446744073709551615 end) >> if((locate(\'unsigned\',`information_schema`.`COLUMNS`.`COLUMN_TYPE`) > 0),0,1))) desc,((case `information_schema`.`COLUMNS`.`DATA_TYPE` when \'tinyint\' then 255 when \'smallint\' then 65535 when \'mediumint\' then 16777215 when \'int\' then 4294967295 when \'bigint\' then 18446744073709551615 end) >> if((locate(\'unsigned\',`information_schema`.`COLUMNS`.`COLUMN_TYPE`) > 0),0,1))
md5=af9a109a687085ab39d8ecb2419b5c2f
updatable=0
algorithm=2
definer_user=mysql.sys
definer_host=localhost
suid=0
with_check_option=0
timestamp=2023-11-28 17:44:03
create-version=1
source=SELECT TABLE_SCHEMA, TABLE_NAME, COLUMN_NAME, DATA_TYPE, COLUMN_TYPE, (LOCATE(\'unsigned\', COLUMN_TYPE) = 0) AS is_signed, (LOCATE(\'unsigned\', COLUMN_TYPE) > 0) AS is_unsigned, ( CASE DATA_TYPE WHEN \'tinyint\' THEN 255 WHEN \'smallint\' THEN 65535 WHEN \'mediumint\' THEN 16777215 WHEN \'int\' THEN 4294967295 WHEN \'bigint\' THEN 18446744073709551615 END >> IF(LOCATE(\'unsigned\', COLUMN_TYPE) > 0, 0, 1) ) AS max_value, AUTO_INCREMENT, AUTO_INCREMENT / ( CASE DATA_TYPE WHEN \'tinyint\' THEN 255 WHEN \'smallint\' THEN 65535 WHEN \'mediumint\' THEN 16777215 WHEN \'int\' THEN 4294967295 WHEN \'bigint\' THEN 18446744073709551615 END >> IF(LOCATE(\'unsigned\', COLUMN_TYPE) > 0, 0, 1) ) AS auto_increment_ratio FROM INFORMATION_SCHEMA.COLUMNS INNER JOIN INFORMATION_SCHEMA.TABLES USING (TABLE_SCHEMA, TABLE_NAME) WHERE TABLE_SCHEMA NOT IN (\'mysql\', \'sys\', \'INFORMATION_SCHEMA\', \'performance_schema\') AND TABLE_TYPE=\'BASE TABLE\' AND EXTRA=\'auto_increment\' ORDER BY auto_increment_ratio DESC, max_value
client_cs_name=utf8
connection_cl_name=utf8_general_ci
view_body_utf8=select `information_schema`.`COLUMNS`.`TABLE_SCHEMA` AS `table_schema`,`information_schema`.`COLUMNS`.`TABLE_NAME` AS `table_name`,`information_schema`.`COLUMNS`.`COLUMN_NAME` AS `column_name`,`information_schema`.`COLUMNS`.`DATA_TYPE` AS `data_type`,`information_schema`.`COLUMNS`.`COLUMN_TYPE` AS `column_type`,(locate(\'unsigned\',`information_schema`.`COLUMNS`.`COLUMN_TYPE`) = 0) AS `is_signed`,(locate(\'unsigned\',`information_schema`.`COLUMNS`.`COLUMN_TYPE`) > 0) AS `is_unsigned`,((case `information_schema`.`COLUMNS`.`DATA_TYPE` when \'tinyint\' then 255 when \'smallint\' then 65535 when \'mediumint\' then 16777215 when \'int\' then 4294967295 when \'bigint\' then 18446744073709551615 end) >> if((locate(\'unsigned\',`information_schema`.`COLUMNS`.`COLUMN_TYPE`) > 0),0,1)) AS `max_value`,`information_schema`.`TABLES`.`AUTO_INCREMENT` AS `auto_increment`,(`information_schema`.`TABLES`.`AUTO_INCREMENT` / ((case `information_schema`.`COLUMNS`.`DATA_TYPE` when \'tinyint\' then 255 when \'smallint\' then 65535 when \'mediumint\' then 16777215 when \'int\' then 4294967295 when \'bigint\' then 18446744073709551615 end) >> if((locate(\'unsigned\',`information_schema`.`COLUMNS`.`COLUMN_TYPE`) > 0),0,1))) AS `auto_increment_ratio` from (`INFORMATION_SCHEMA`.`COLUMNS` join `INFORMATION_SCHEMA`.`TABLES` on(((`information_schema`.`COLUMNS`.`TABLE_SCHEMA` = `information_schema`.`TABLES`.`TABLE_SCHEMA`) and (`information_schema`.`COLUMNS`.`TABLE_NAME` = `information_schema`.`TABLES`.`TABLE_NAME`)))) where ((`information_schema`.`COLUMNS`.`TABLE_SCHEMA` not in (\'mysql\',\'sys\',\'INFORMATION_SCHEMA\',\'performance_schema\')) and (`information_schema`.`TABLES`.`TABLE_TYPE` = \'BASE TABLE\') and (`information_schema`.`COLUMNS`.`EXTRA` = \'auto_increment\')) order by (`information_schema`.`TABLES`.`AUTO_INCREMENT` / ((case `information_schema`.`COLUMNS`.`DATA_TYPE` when \'tinyint\' then 255 when \'smallint\' then 65535 when \'mediumint\' then 16777215 when \'int\' then 4294967295 when \'bigint\' then 18446744073709551615 end) >> if((locate(\'unsigned\',`information_schema`.`COLUMNS`.`COLUMN_TYPE`) > 0),0,1))) desc,((case `information_schema`.`COLUMNS`.`DATA_TYPE` when \'tinyint\' then 255 when \'smallint\' then 65535 when \'mediumint\' then 16777215 when \'int\' then 4294967295 when \'bigint\' then 18446744073709551615 end) >> if((locate(\'unsigned\',`information_schema`.`COLUMNS`.`COLUMN_TYPE`) > 0),0,1))
