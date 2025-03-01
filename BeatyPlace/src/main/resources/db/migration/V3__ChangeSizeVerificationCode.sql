alter table users
alter column verification_code type varchar(100) using verification_code::varchar(100);