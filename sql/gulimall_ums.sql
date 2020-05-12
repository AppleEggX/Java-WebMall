drop table if exists ums_growth_change_history;

drop table if exists ums_integration_change_history;

drop table if exists ums_member;

drop table if exists ums_member_collect_spu;

drop table if exists ums_member_collect_subject;

drop table if exists ums_member_level;

drop table if exists ums_member_login_log;

drop table if exists ums_member_receive_address;

drop table if exists ums_member_statistics_info;

/*==============================================================*/
/* Table: ums_growth_change_history                             */
/*==============================================================*/
create table ums_growth_change_history
(
   id                   bigint not null auto_increment comment   ,
   member_id            bigint comment   ,
   create_time          datetime comment   ,
   change_count         int comment   ,
   note                 varchar(0) comment   ,
   source_type          tinyint comment   ,
   primary key (id)
);

alter table ums_growth_change_history comment   ;

/*==============================================================*/
/* Table: ums_integration_change_history                        */
/*==============================================================*/
create table ums_integration_change_history
(
   id                   bigint not null auto_increment comment   ,
   member_id            bigint comment   ,
   create_time          datetime comment   ,
   change_count         int comment   ,
   note                 varchar(255) comment   ,
   source_tyoe          tinyint comment   ,
   primary key (id)
);

alter table ums_integration_change_history comment   ;

/*==============================================================*/
/* Table: ums_member                                            */
/*==============================================================*/
create table ums_member
(
   id                   bigint not null auto_increment comment   ,
   level_id             bigint comment   ,
   username             char(64) comment   ,
   password             varchar(64) comment   ,
   nickname             varchar(64) comment   ,
   mobile               varchar(20) comment   ,
   email                varchar(64) comment   ,
   header               varchar(500) comment   ,
   gender               tinyint comment   ,
   birth                date comment   ,
   city                 varchar(500) comment   ,
   job                  varchar(255) comment   ,
   sign                 varchar(255) comment   ,
   source_type          tinyint comment   ,
   integration          int comment   ,
   growth               int comment   ,
   status               tinyint comment   ,
   create_time          datetime comment   ,
   primary key (id)
);

alter table ums_member comment   ;

/*==============================================================*/
/* Table: ums_member_collect_spu                                */
/*==============================================================*/
create table ums_member_collect_spu
(
   id                   bigint not null comment   ,
   member_id            bigint comment   ,
   spu_id               bigint comment   ,
   spu_name             varchar(500) comment   ,
   spu_img              varchar(500) comment   ,
   create_time          datetime comment   ,
   primary key (id)
);

alter table ums_member_collect_spu comment   ;

/*==============================================================*/
/* Table: ums_member_collect_subject                            */
/*==============================================================*/
create table ums_member_collect_subject
(
   id                   bigint not null auto_increment comment   ,
   subject_id           bigint comment   ,
   subject_name         varchar(255) comment   ,
   subject_img          varchar(500) comment   ,
   subject_urll         varchar(500) comment   ,
   primary key (id)
);

alter table ums_member_collect_subject comment   ;

/*==============================================================*/
/* Table: ums_member_level                                      */
/*==============================================================*/
create table ums_member_level
(
   id                   bigint not null auto_increment comment   ,
   name                 varchar(100) comment   ,
   growth_point         int comment   ,
   default_status       tinyint comment   ,
   free_freight_point   decimal(18,4) comment   ,
   comment_growth_point int comment   ,
   priviledge_free_freight tinyint comment   ,
   priviledge_member_price tinyint comment   ,
   priviledge_birthday  tinyint comment   ,
   note                 varchar(255) comment   ,
   primary key (id)
);

alter table ums_member_level comment   ;

/*==============================================================*/
/* Table: ums_member_login_log                                  */
/*==============================================================*/
create table ums_member_login_log
(
   id                   bigint not null auto_increment comment   ,
   member_id            bigint comment   ,
   create_time          datetime comment   ,
   ip                   varchar(64) comment   ,
   city                 varchar(64) comment   ,
   login_type           tinyint(1) comment   ,
   primary key (id)
);

alter table ums_member_login_log comment   ;

/*==============================================================*/
/* Table: ums_member_receive_address                            */
/*==============================================================*/
create table ums_member_receive_address
(
   id                   bigint not null auto_increment comment   ,
   member_id            bigint comment   ,
   name                 varchar(255) comment   ,
   phone                varchar(64) comment   ,
   post_code            varchar(64) comment   ,
   province             varchar(100) comment   ,
   city                 varchar(100) comment   ,
   region               varchar(100) comment   ,
   detail_address       varchar(255) comment   ,
   areacode             varchar(15) comment   ,
   default_status       tinyint(1) comment   ,
   primary key (id)
);

alter table ums_member_receive_address comment   ;

/*==============================================================*/
/* Table: ums_member_statistics_info                            */
/*==============================================================*/
create table ums_member_statistics_info
(
   id                   bigint not null auto_increment comment   ,
   member_id            bigint comment   ,
   consume_amount       decimal(18,4) comment   ,
   coupon_amount        decimal(18,4) comment   ,
   order_count          int comment   ,
   coupon_count         int comment   ,
   comment_count        int comment   ,
   return_order_count   int comment   ,
   login_count          int comment   ,
   attend_count         int comment   ,
   fans_count           int comment   ,
   collect_product_count int comment   ,
   collect_subject_count int comment   ,
   collect_comment_count int comment   ,
   invite_friend_count  int comment   ,
   primary key (id)
);

alter table ums_member_statistics_info comment   ;
