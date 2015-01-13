drop table if exists t_link;
drop table if exists t_user;

create table t_user (
    usr_id integer not null primary key auto_increment,
    usr_name varchar(50) not null,
    usr_password varchar(88) not null,
    usr_salt varchar(23) not null,
    usr_role varchar(50) not null
) engine=innodb character set utf8 collate utf8_unicode_ci;

create table t_link (
    link_id integer not null primary key auto_increment,
    link_title varchar(500) not null,
    link_url varchar(200) not null,
    usr_id integer not null,
    constraint fk_link_usr foreign key(usr_id) references t_user(usr_id)
) engine=innodb character set utf8 collate utf8_unicode_ci;
