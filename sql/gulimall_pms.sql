drop table if exists pms_attr;

drop table if exists pms_attr_attrgroup_relation;

drop table if exists pms_attr_group;

drop table if exists pms_brand;

drop table if exists pms_category;

drop table if exists pms_category_brand_relation;

drop table if exists pms_comment_replay;

drop table if exists pms_product_attr_value;

drop table if exists pms_sku_images;

drop table if exists pms_sku_info;

drop table if exists pms_sku_sale_attr_value;

drop table if exists pms_spu_comment;

drop table if exists pms_spu_images;

drop table if exists pms_spu_info;

drop table if exists pms_spu_info_desc;

/*==============================================================*/
/* Table: pms_attr                                              */
/*==============================================================*/
create table pms_attr
(
   attr_id              bigint not null auto_increment comment  ,
   attr_name            char(30) comment  ,
   search_type          tinyint comment  ,
   icon                 varchar(255) comment  ,
   value_select         char(255) comment  ,
   attr_type            tinyint comment  ,
   enable               bigint comment ,
   catelog_id           bigint comment  ,
   show_desc            tinyint comment ,
   primary key (attr_id)
);

alter table pms_attr comment  ;

/*==============================================================*/
/* Table: pms_attr_attrgroup_relation                           */
/*==============================================================*/
create table pms_attr_attrgroup_relation
(
   id                   bigint not null auto_increment comment  ,
   attr_id              bigint comment  ,
   attr_group_id        bigint comment  ,
   attr_sort            int comment  ,
   primary key (id)
);

alter table pms_attr_attrgroup_relation comment  ;

/*==============================================================*/
/* Table: pms_attr_group                                        */
/*==============================================================*/
create table pms_attr_group
(
   attr_group_id        bigint not null auto_increment comment  ,
   attr_group_name      char(20) comment  ,
   sort                 int comment  ,
   descript             varchar(255) comment  ,
   icon                 varchar(255) comment  ,
   catelog_id           bigint comment  ,
   primary key (attr_group_id)
);

alter table pms_attr_group comment  ;

/*==============================================================*/
/* Table: pms_brand                                             */
/*==============================================================*/
create table pms_brand
(
   brand_id             bigint not null auto_increment comment  ,
   name                 char(50) comment  ,
   logo                 varchar(2000) comment  ,
   descript             longtext comment  ,
   show_status          tinyint comment  ,
   first_letter         char(1) comment  ,
   sort                 int comment  ,
   primary key (brand_id)
);

alter table pms_brand comment  ;

/*==============================================================*/
/* Table: pms_category                                          */
/*==============================================================*/
create table pms_category
(
   cat_id               bigint not null auto_increment comment  ,
   name                 char(50) comment  ,
   parent_cid           bigint comment  ,
   cat_level            int comment  ,
   show_status          tinyint comment  ,
   sort                 int comment  ,
   icon                 char(255) comment  ,
   product_unit         char(50) comment  ,
   product_count        int comment  ,
   primary key (cat_id)
);

alter table pms_category comment  ;

/*==============================================================*/
/* Table: pms_category_brand_relation                           */
/*==============================================================*/
create table pms_category_brand_relation
(
   id                   bigint not null auto_increment,
   brand_id             bigint comment  ,
   catelog_id           bigint comment  ,
   brand_name           varchar(255),
   catelog_name         varchar(255),
   primary key (id)
);

alter table pms_category_brand_relation comment  ;

/*==============================================================*/
/* Table: pms_comment_replay                                    */
/*==============================================================*/
create table pms_comment_replay
(
   id                   bigint not null auto_increment comment  ,
   comment_id           bigint comment  ,
   reply_id             bigint comment  ,
   primary key (id)
);

alter table pms_comment_replay comment  ;

/*==============================================================*/
/* Table: pms_product_attr_value                                */
/*==============================================================*/
create table pms_product_attr_value
(
   id                   bigint not null auto_increment comment  ,
   spu_id               bigint comment  ,
   attr_id              bigint comment  ,
   attr_name            varchar(200) comment  ,
   attr_value           varchar(200) comment  ,
   attr_sort            int comment  ,
   quick_show           tinyint comment  ,
   primary key (id)
);

alter table pms_product_attr_value comment  ;

/*==============================================================*/
/* Table: pms_sku_images                                        */
/*==============================================================*/
create table pms_sku_images
(
   id                   bigint not null auto_increment comment  ,
   sku_id               bigint comment  ,
   img_url              varchar(255) comment  ,
   img_sort             int comment  ,
   default_img          int comment  ,
   primary key (id)
);

alter table pms_sku_images comment  ;

/*==============================================================*/
/* Table: pms_sku_info                                          */
/*==============================================================*/
create table pms_sku_info
(
   sku_id               bigint not null auto_increment comment  ,
   spu_id               bigint comment  ,
   sku_name             varchar(255) comment  ,
   sku_desc             varchar(2000) comment  ,
   catalog_id           bigint comment  ,
   brand_id             bigint comment  ,
   sku_default_img      varchar(255) comment  ,
   sku_title            varchar(255) comment  ,
   sku_subtitle         varchar(2000) comment  ,
   price                decimal(18,4) comment  ,
   sale_count           bigint comment  ,
   primary key (sku_id)
);

alter table pms_sku_info comment  ;

/*==============================================================*/
/* Table: pms_sku_sale_attr_value                               */
/*==============================================================*/
create table pms_sku_sale_attr_value
(
   id                   bigint not null auto_increment comment  ,
   sku_id               bigint comment  ,
   attr_id              bigint comment  ,
   attr_name            varchar(200) comment  ,
   attr_value           varchar(200) comment  ,
   attr_sort            int comment  ,
   primary key (id)
);

alter table pms_sku_sale_attr_value comment  ;

/*==============================================================*/
/* Table: pms_spu_comment                                       */
/*==============================================================*/
create table pms_spu_comment
(
   id                   bigint not null auto_increment comment  ,
   sku_id               bigint comment  ,
   spu_id               bigint comment  ,
   spu_name             varchar(255) comment  ,
   member_nick_name     varchar(255) comment  ,
   star                 tinyint(1) comment  ,
   member_ip            varchar(64) comment  ,
   create_time          datetime comment  ,
   show_status          tinyint(1) comment  ,
   spu_attributes       varchar(255) comment  ,
   likes_count          int comment  ,
   reply_count          int comment  ,
   resources            varchar(1000) comment  ,
   content              text comment  ,
   member_icon          varchar(255) comment  ,
   comment_type         tinyint comment  ,
   primary key (id)
);

alter table pms_spu_comment comment  ;

/*==============================================================*/
/* Table: pms_spu_images                                        */
/*==============================================================*/
create table pms_spu_images
(
   id                   bigint not null auto_increment comment  ,
   spu_id               bigint comment  ,
   img_name             varchar(200) comment  ,
   img_url              varchar(255) comment  ,
   img_sort             int comment  ,
   default_img          tinyint comment  ,
   primary key (id)
);

alter table pms_spu_images comment  ;

/*==============================================================*/
/* Table: pms_spu_info                                          */
/*==============================================================*/
create table pms_spu_info
(
   id                   bigint not null auto_increment comment  ,
   spu_name             varchar(200) comment  ,
   spu_description      varchar(1000) comment  ,
   catalog_id           bigint comment  ,
   brand_id             bigint comment  ,
   weight               decimal(18,4),
   publish_status       tinyint comment  ,
   create_time          datetime,
   update_time          datetime,
   primary key (id)
);

alter table pms_spu_info comment  ;

/*==============================================================*/
/* Table: pms_spu_info_desc                                     */
/*==============================================================*/
create table pms_spu_info_desc
(
   spu_id               bigint not null comment  ,
   decript              longtext comment  ,
   primary key (spu_id)
);

alter table pms_spu_info_desc comment  ;
