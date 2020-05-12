drop table if exists oms_order;

drop table if exists oms_order_item;

drop table if exists oms_order_operate_history;

drop table if exists oms_order_return_apply;

drop table if exists oms_order_return_reason;

drop table if exists oms_order_setting;

drop table if exists oms_payment_info;

drop table if exists oms_refund_info;

/*==============================================================*/
/* Table: oms_order                                             */
/*==============================================================*/
create table oms_order
(
   id                   bigint not null auto_increment comment  ,
   member_id            bigint comment  ,
   order_sn             char(32) comment 'order number',
   coupon_id            bigint comment 'the coupon which is used',
   create_time          datetime comment  ,
   member_username      varchar(200) comment 'user name',
   total_amount         decimal(18,4) comment  ,
   pay_amount           decimal(18,4) comment  ,
   freight_amount       decimal(18,4) comment 'shipment fee',
   promotion_amount     decimal(18,4) comment 'promotion discount',
   integration_amount   decimal(18,4) comment 'Jifen discount amount',
   coupon_amount        decimal(18,4) comment 'coupon discount amount',
   discount_amount      decimal(18,4) comment 'Backstage chanegd discount amount',
   pay_type             tinyint comment 'Payment methods 1->AliPay 2->Wechat 3->UnionPay 4->Pay after received',
   source_type          tinyint comment 'order source: 0->PC order ->app order]',
   status               tinyint comment 'order status 0->waiting for pay 1->waitingForShipment 2->Shipment 3->Finished 4->closed 5->void order',
   delivery_company     varchar(64) comment  ,
   delivery_sn          varchar(64) comment  ,
   auto_confirm_day     int comment  ,
   integration          int comment  ,
   growth               int comment  ,
   bill_type            tinyint comment  ,
   bill_header          varchar(255) comment  ,
   bill_content         varchar(255) comment  ,
   bill_receiver_phone  varchar(32) comment  ,
   bill_receiver_email  varchar(64) comment  ,
   receiver_name        varchar(100) comment  ,
   receiver_phone       varchar(32) comment  ,
   receiver_post_code   varchar(32) comment  ,
   receiver_province    varchar(32) comment  ,
   receiver_city        varchar(32) comment  ,
   receiver_region      varchar(32) comment  ,
   receiver_detail_address varchar(200) comment  ,
   note                 varchar(500) comment  ,
   confirm_status       tinyint comment  ,
   delete_status        tinyint comment  ,
   use_integration      int comment  ,
   payment_time         datetime comment  ,
   delivery_time        datetime comment  ,
   receive_time         datetime comment  ,
   comment_time         datetime comment  ,
   modify_time          datetime comment  ,
   primary key (id)
);

alter table oms_order comment  ;

/*==============================================================*/
/* Table: oms_order_item                                        */
/*==============================================================*/
create table oms_order_item
(
   id                   bigint not null auto_increment comment  ,
   order_id             bigint comment  ,
   order_sn             char(32) comment  ,
   spu_id               bigint comment  ,
   spu_name             varchar(255) comment  ,
   spu_pic              varchar(500) comment  ,
   spu_brand            varchar(200) comment  ,
   category_id          bigint comment  ,
   sku_id               bigint comment  ,
   sku_name             varchar(255) comment  ,
   sku_pic              varchar(500) comment  ,
   sku_price            decimal(18,4) comment  ,
   sku_quantity         int comment  ,
   sku_attrs_vals       varchar(500) comment  ,
   promotion_amount     decimal(18,4) comment  ,
   coupon_amount        decimal(18,4) comment  ,
   integration_amount   decimal(18,4) comment  ,
   real_amount          decimal(18,4) comment  ,
   gift_integration     int comment  ,
   gift_growth          int comment  ,
   primary key (id)
);

alter table oms_order_item comment  ;

/*==============================================================*/
/* Table: oms_order_operate_history                             */
/*==============================================================*/
create table oms_order_operate_history
(
   id                   bigint not null auto_increment comment  ,
   order_id             bigint comment  ,
   operate_man          varchar(100) comment  ,
   create_time          datetime comment  ,
   order_status         tinyint comment  ,
   note                 varchar(500) comment  ,
   primary key (id)
);

alter table oms_order_operate_history comment  ;

/*==============================================================*/
/* Table: oms_order_return_apply                                */
/*==============================================================*/
create table oms_order_return_apply
(
   id                   bigint not null auto_increment comment  ,
   order_id             bigint comment  ,
   sku_id               bigint comment  ,
   order_sn             char(32) comment  ,
   create_time          datetime comment  ,
   member_username      varchar(64) comment  ,
   return_amount        decimal(18,4) comment  ,
   return_name          varchar(100) comment  ,
   return_phone         varchar(20) comment  ,
   status               tinyint(1) comment  ,
   handle_time          datetime comment  ,
   sku_img              varchar(500) comment  ,
   sku_name             varchar(200) comment  ,
   sku_brand            varchar(200) comment  ,
   sku_attrs_vals       varchar(500) comment  ,
   sku_count            int comment  ,
   sku_price            decimal(18,4) comment  ,
   sku_real_price       decimal(18,4) comment  ,
   reason               varchar(200) comment  ,
   description��         varchar(500) comment  ,
   desc_pics            varchar(2000) comment  ,
   handle_note          varchar(500) comment  ,
   handle_man           varchar(200) comment  ,
   receive_man          varchar(100) comment  ,
   receive_time         datetime comment  ,
   receive_note         varchar(500) comment  ,
   receive_phone        varchar(20) comment  ,
   company_address      varchar(500) comment  ,
   primary key (id)
);

alter table oms_order_return_apply comment  ;

/*==============================================================*/
/* Table: oms_order_return_reason                               */
/*==============================================================*/
create table oms_order_return_reason
(
   id                   bigint not null auto_increment comment  ,
   name                 varchar(200) comment  ,
   sort                 int comment  ,
   status               tinyint(1) comment  ,
   create_time          datetime comment  ,
   primary key (id)
);

alter table oms_order_return_reason comment  ;

/*==============================================================*/
/* Table: oms_order_setting                                     */
/*==============================================================*/
create table oms_order_setting
(
   id                   bigint not null auto_increment comment  ,
   flash_order_overtime int comment  ,
   normal_order_overtime int comment  ,
   confirm_overtime     int comment  ,
   finish_overtime      int comment  ,
   comment_overtime     int comment  ,
   member_level         tinyint(2) comment  ,
   primary key (id)
);

alter table oms_order_setting comment  ;

/*==============================================================*/
/* Table: oms_payment_info                                      */
/*==============================================================*/
create table oms_payment_info
(
   id                   bigint not null auto_increment comment  ,
   order_sn             char(32) comment  ,
   order_id             bigint comment  ,
   alipay_trade_no      varchar(50) comment  ,
   total_amount         decimal(18,4) comment  ,
   subject              varchar(200) comment  ,
   payment_status       varchar(20) comment  ,
   create_time          datetime comment  ,
   confirm_time         datetime comment  ,
   callback_content     varchar(4000) comment  ,
   callback_time        datetime comment  ,
   primary key (id)
);

alter table oms_payment_info comment  ;

/*==============================================================*/
/* Table: oms_refund_info                                       */
/*==============================================================*/
create table oms_refund_info
(
   id                   bigint not null auto_increment comment  ,
   order_return_id      bigint comment  ,
   refund               decimal(18,4) comment  ,
   refund_sn            varchar(64) comment  ,
   refund_status        tinyint(1) comment  ,
   refund_channel       tinyint comment  ,
   refund_content       varchar(5000),
   primary key (id)
);

alter table oms_refund_info comment  ;
