drop table if exists sms_coupon;

drop table if exists sms_coupon_history;

drop table if exists sms_coupon_spu_category_relation;

drop table if exists sms_coupon_spu_relation;

drop table if exists sms_home_adv;

drop table if exists sms_home_subject;

drop table if exists sms_home_subject_spu;

drop table if exists sms_member_price;

drop table if exists sms_seckill_promotion;

drop table if exists sms_seckill_session;

drop table if exists sms_seckill_sku_notice;

drop table if exists sms_seckill_sku_relation;

drop table if exists sms_sku_full_reduction;

drop table if exists sms_sku_ladder;

drop table if exists sms_spu_bounds;

/*==============================================================*/
/* Table: sms_coupon                                            */
/*==============================================================*/
create table sms_coupon
(
   id                   bigint not null auto_increment comment  ,
   coupon_type          tinyint(1) comment  ,
   coupon_img           varchar(2000) comment  ,
   coupon_name          varchar(100) comment  ,
   num                  int comment  ,
   amount               decimal(18,4) comment  ,
   per_limit            int comment  ,
   min_point            decimal(18,4) comment  ,
   start_time           datetime comment  ,
   end_time             datetime comment  ,
   use_type             tinyint(1) comment  ,
   note                 varchar(200) comment  ,
   publish_count        int(11) comment  ,
   use_count            int(11) comment  ,
   receive_count        int(11) comment  ,
   enable_start_time    datetime comment  ,
   enable_end_time      datetime comment  ,
   code                 varchar(64) comment  ,
   member_level         tinyint(1) comment  ,
   publish              tinyint(1) comment  ,
   primary key (id)
);

alter table sms_coupon comment  ;

/*==============================================================*/
/* Table: sms_coupon_history                                    */
/*==============================================================*/
create table sms_coupon_history
(
   id                   bigint not null auto_increment comment  ,
   coupon_id            bigint comment  ,
   member_id            bigint comment  ,
   member_nick_name     varchar(64) comment  ,
   get_type             tinyint(1) comment  ,
   create_time          datetime comment  ,
   use_type             tinyint(1) comment  ,
   use_time             datetime comment  ,
   order_id             bigint comment  ,
   order_sn             bigint comment  ,
   primary key (id)
);

alter table sms_coupon_history comment  ;

/*==============================================================*/
/* Table: sms_coupon_spu_category_relation                      */
/*==============================================================*/
create table sms_coupon_spu_category_relation
(
   id                   bigint not null auto_increment comment  ,
   coupon_id            bigint comment  ,
   category_id          bigint comment  ,
   category_name        varchar(64) comment  ,
   primary key (id)
);

alter table sms_coupon_spu_category_relation comment  ;

/*==============================================================*/
/* Table: sms_coupon_spu_relation                               */
/*==============================================================*/
create table sms_coupon_spu_relation
(
   id                   bigint not null auto_increment comment  ,
   coupon_id            bigint comment  ,
   spu_id               bigint comment  ,
   spu_name             varchar(255) comment  ,
   primary key (id)
);

alter table sms_coupon_spu_relation comment  ;

/*==============================================================*/
/* Table: sms_home_adv                                          */
/*==============================================================*/
create table sms_home_adv
(
   id                   bigint not null auto_increment comment  ,
   name                 varchar(100) comment  ,
   pic                  varchar(500) comment  ,
   start_time           datetime comment  ,
   end_time             datetime comment  ,
   status               tinyint(1) comment  ,
   click_count          int comment  ,
   url                  varchar(500) comment  ,
   note                 varchar(500) comment  ,
   sort                 int comment  ,
   publisher_id         bigint comment  ,
   auth_id              bigint comment  ,
   primary key (id)
);

alter table sms_home_adv comment  ;

/*==============================================================*/
/* Table: sms_home_subject                                      */
/*==============================================================*/
create table sms_home_subject
(
   id                   bigint not null auto_increment comment  ,
   name                 varchar(200) comment  ,
   title                varchar(255) comment  ,
   sub_title            varchar(255) comment  ,
   status               tinyint(1) comment  ,
   url                  varchar(500) comment  ,
   sort                 int comment  ,
   img                  varchar(500) comment  ,
   primary key (id)
);

alter table sms_home_subject comment  ;

/*==============================================================*/
/* Table: sms_home_subject_spu                                  */
/*==============================================================*/
create table sms_home_subject_spu
(
   id                   bigint not null auto_increment comment  ,
   name                 varchar(200) comment  ,
   subject_id           bigint comment  ,
   spu_id               bigint comment  ,
   sort                 int comment  ,
   primary key (id)
);

alter table sms_home_subject_spu comment  ;

/*==============================================================*/
/* Table: sms_member_price                                      */
/*==============================================================*/
create table sms_member_price
(
   id                   bigint not null auto_increment comment  ,
   sku_id               bigint comment  ,
   member_level_id      bigint comment  ,
   member_level_name    varchar(100) comment  ,
   member_price         decimal(18,4) comment  ,
   add_other            tinyint(1) comment  ,
   primary key (id)
);

alter table sms_member_price comment  ;

/*==============================================================*/
/* Table: sms_seckill_promotion                                 */
/*==============================================================*/
create table sms_seckill_promotion
(
   id                   bigint not null auto_increment comment  ,
   title                varchar(255) comment  ,
   start_time           datetime comment  ,
   end_time             datetime comment  ,
   status               tinyint comment  ,
   create_time          datetime comment  ,
   user_id              bigint comment  ,
   primary key (id)
);

alter table sms_seckill_promotion comment  ;

/*==============================================================*/
/* Table: sms_seckill_session                                   */
/*==============================================================*/
create table sms_seckill_session
(
   id                   bigint not null auto_increment comment  ,
   name                 varchar(200) comment  ,
   start_time           datetime comment  ,
   end_time             datetime comment  ,
   status               tinyint(1) comment  ,
   create_time          datetime comment  ,
   primary key (id)
);

alter table sms_seckill_session comment  ;

/*==============================================================*/
/* Table: sms_seckill_sku_notice                                */
/*==============================================================*/
create table sms_seckill_sku_notice
(
   id                   bigint not null auto_increment comment  ,
   member_id            bigint comment  ,
   sku_id               bigint comment  ,
   session_id           bigint comment  ,
   subcribe_time        datetime comment  ,
   send_time            datetime comment  ,
   notice_type          tinyint(1) comment  ,
   primary key (id)
);

alter table sms_seckill_sku_notice comment  ;

/*==============================================================*/
/* Table: sms_seckill_sku_relation                              */
/*==============================================================*/
create table sms_seckill_sku_relation
(
   id                   bigint not null auto_increment comment  ,
   promotion_id         bigint comment  ,
   promotion_session_id bigint comment  ,
   sku_id               bigint comment  ,
   seckill_price        decimal comment  ,
   seckill_count        decimal comment  ,
   seckill_limit        decimal comment  ,
   seckill_sort         int comment  ,
   primary key (id)
);

alter table sms_seckill_sku_relation comment  ;

/*==============================================================*/
/* Table: sms_sku_full_reduction                                */
/*==============================================================*/
create table sms_sku_full_reduction
(
   id                   bigint not null auto_increment comment  ,
   sku_id               bigint comment  ,
   full_price           decimal(18,4) comment  ,
   reduce_price         decimal(18,4) comment  ,
   add_other            tinyint(1) comment  ,
   primary key (id)
);

alter table sms_sku_full_reduction comment  ;

/*==============================================================*/
/* Table: sms_sku_ladder                                        */
/*==============================================================*/
create table sms_sku_ladder
(
   id                   bigint not null auto_increment comment  ,
   sku_id               bigint comment  ,
   full_count           int comment  ,
   discount             decimal(4,2) comment  ,
   price                decimal(18,4) comment  ,
   add_other            tinyint(1) comment  ,
   primary key (id)
);

alter table sms_sku_ladder comment  ;

/*==============================================================*/
/* Table: sms_spu_bounds                                        */
/*==============================================================*/
create table sms_spu_bounds
(
   id                   bigint not null auto_increment comment  ,
   spu_id               bigint,
   grow_bounds          decimal(18,4) comment  ,
   buy_bounds           decimal(18,4) comment  ,
   work                 tinyint(1) comment  ,
   primary key (id)
);

alter table sms_spu_bounds comment  ;
