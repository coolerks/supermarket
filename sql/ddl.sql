CREATE TABLE `biz_consumer`
(
    `id`            bigint(20) NOT NULL AUTO_INCREMENT,
    `name`          varchar(20) DEFAULT NULL COMMENT '商品消费方',
    `address`       varchar(20) DEFAULT NULL COMMENT '地址',
    `create_time`   datetime    DEFAULT NULL,
    `modified_time` datetime    DEFAULT NULL,
    `phone`         varchar(20) DEFAULT NULL COMMENT '联系电话',
    `sort`          int(11)     DEFAULT NULL,
    `contact`       varchar(10) DEFAULT NULL COMMENT '联系人姓名',
    PRIMARY KEY (`id`)
) ENGINE = InnoDB
  AUTO_INCREMENT = 27
  DEFAULT CHARSET = utf8mb4;
CREATE TABLE `biz_in_stock`
(
    `id`             bigint(20) unsigned NOT NULL AUTO_INCREMENT,
    `in_num`         varchar(36)  DEFAULT NULL COMMENT '入库单编号',
    `type`           int(2)       DEFAULT NULL COMMENT '类型：1：捐赠，2：下拨，3：采购,4:退货入库',
    `operator`       varchar(20)  DEFAULT NULL COMMENT '操作人员',
    `create_time`    datetime     DEFAULT NULL COMMENT '入库单创建时间',
    `modified`       datetime     DEFAULT NULL COMMENT '入库单修改时间',
    `product_number` int(11)      DEFAULT NULL COMMENT '商品总数',
    `supplier_id`    bigint(20)   DEFAULT NULL COMMENT '来源',
    `remark`         varchar(100) DEFAULT NULL COMMENT '描述信息',
    `status`         int(1)       DEFAULT '2' COMMENT '0:正常入库单,1:已进入回收,2:等待审核',
    PRIMARY KEY (`id`),
    KEY `operator_id` (`operator`),
    KEY `supplier_id` (`supplier_id`)
) ENGINE = InnoDB
  AUTO_INCREMENT = 111
  DEFAULT CHARSET = utf8mb4;


CREATE TABLE `biz_in_stock_info`
(
    `id`             bigint(20) NOT NULL AUTO_INCREMENT,
    `in_num`         varchar(36) DEFAULT NULL COMMENT '入库单编号',
    `p_num`          varchar(36) DEFAULT NULL COMMENT '商品编号',
    `product_number` int(11)     DEFAULT NULL COMMENT '数量',
    `create_time`    datetime    DEFAULT NULL,
    `modified_time`  datetime    DEFAULT NULL,
    PRIMARY KEY (`id`)
) ENGINE = InnoDB
  AUTO_INCREMENT = 375
  DEFAULT CHARSET = utf8mb4;

CREATE TABLE `biz_out_stock`
(
    `id`             bigint(20)  NOT NULL AUTO_INCREMENT,
    `out_num`        varchar(36) NOT NULL COMMENT '出库单',
    `type`           int(1)      NOT NULL COMMENT '出库类型:0:直接出库,1:审核出库',
    `operator`       varchar(20) DEFAULT NULL COMMENT '操作人',
    `create_time`    datetime    DEFAULT NULL COMMENT '出库时间',
    `product_number` int(11)     DEFAULT NULL COMMENT '出库总数',
    `consumer_id`    bigint(20)  NOT NULL COMMENT '消费者id',
    `remark`         varchar(50) DEFAULT NULL COMMENT '备注',
    `status`         int(1)      DEFAULT NULL COMMENT '状态:0:正常入库,1:已进入回收,2:等待审核',
    `priority`       int(1)      NOT NULL COMMENT '紧急程度:1:不急,2:常规,3:紧急4:特急',
    PRIMARY KEY (`id`)
) ENGINE = InnoDB
  AUTO_INCREMENT = 14
  DEFAULT CHARSET = utf8mb4;


CREATE TABLE `biz_out_stock_info`
(
    `id`             bigint(20) NOT NULL AUTO_INCREMENT,
    `out_num`        varchar(36) DEFAULT NULL,
    `p_num`          varchar(36) DEFAULT NULL,
    `product_number` int(11)     DEFAULT NULL,
    `create_time`    datetime    DEFAULT NULL,
    `modified_time`  datetime    DEFAULT NULL,
    PRIMARY KEY (`id`)
) ENGINE = InnoDB
  AUTO_INCREMENT = 32
  DEFAULT CHARSET = utf8mb4;


CREATE TABLE `biz_product`
(
    `id`                bigint(20) NOT NULL AUTO_INCREMENT,
    `p_num`             varchar(255) DEFAULT NULL COMMENT '商品编号',
    `name`              varchar(255) DEFAULT NULL COMMENT '商品名称',
    `image_url`         text COMMENT '图片',
    `model`             varchar(100) DEFAULT NULL COMMENT '规格型号',
    `unit`              varchar(10)  DEFAULT NULL COMMENT '计算单位',
    `remark`            varchar(100) DEFAULT NULL COMMENT '备注',
    `sort`              int(11)      DEFAULT NULL COMMENT '排序',
    `create_time`       datetime     DEFAULT NULL COMMENT '创建时间',
    `modified_time`     datetime     DEFAULT NULL COMMENT '修改时间',
    `one_category_id`   bigint(20)   DEFAULT NULL COMMENT '1级分类',
    `two_category_id`   bigint(20)   DEFAULT NULL COMMENT '2级分类',
    `three_category_id` bigint(20)   DEFAULT NULL COMMENT '3级分类',
    `status`            int(1)       DEFAULT '0' COMMENT '是否删除:1商品正常,0:商品回收,2:商品审核中',
    KEY `id` (`id`),
    KEY `category_id` (`one_category_id`),
    KEY `two_category_id` (`two_category_id`),
    KEY `three_category_id` (`three_category_id`)
) ENGINE = InnoDB
  AUTO_INCREMENT = 52
  DEFAULT CHARSET = utf8mb4;

CREATE TABLE `biz_product_category`
(
    `id`            bigint(20) NOT NULL AUTO_INCREMENT COMMENT '类别id',
    `name`          varchar(100) DEFAULT NULL COMMENT '类别名称',
    `remark`        varchar(200) DEFAULT NULL COMMENT '备注',
    `sort`          int(11)      DEFAULT NULL COMMENT '排序',
    `create_time`   datetime     DEFAULT NULL,
    `modified_time` datetime     DEFAULT NULL,
    `pid`           bigint(20)   DEFAULT NULL COMMENT '父级分类id',
    PRIMARY KEY (`id`)
) ENGINE = InnoDB
  AUTO_INCREMENT = 83
  DEFAULT CHARSET = utf8mb4;


CREATE TABLE `biz_product_stock`
(
    `id`    bigint(20)  NOT NULL AUTO_INCREMENT,
    `p_num` varchar(32) NOT NULL,
    `stock` bigint(20) DEFAULT NULL COMMENT '商品库存结余',
    PRIMARY KEY (`id`)
) ENGINE = InnoDB
  AUTO_INCREMENT = 63
  DEFAULT CHARSET = utf8mb4;


CREATE TABLE `biz_supplier`
(
    `id`            bigint(20) NOT NULL AUTO_INCREMENT,
    `name`          varchar(255) DEFAULT NULL COMMENT '供应商名称',
    `address`       varchar(255) DEFAULT NULL COMMENT '供应商地址',
    `email`         varchar(255) DEFAULT NULL COMMENT '供应商邮箱',
    `phone`         varchar(255) DEFAULT NULL COMMENT '供应商电话',
    `create_time`   datetime     DEFAULT NULL,
    `modified_time` datetime     DEFAULT NULL,
    `sort`          int(10)      DEFAULT NULL COMMENT '排序',
    `contact`       varchar(20)  DEFAULT NULL COMMENT '联系人',
    PRIMARY KEY (`id`)
) ENGINE = InnoDB
  AUTO_INCREMENT = 23
  DEFAULT CHARSET = utf8mb4;


CREATE TABLE `tb_department`
(
    `id`            bigint(20)  NOT NULL AUTO_INCREMENT,
    `name`          varchar(255) DEFAULT NULL COMMENT '系名',
    `phone`         varchar(20) NOT NULL COMMENT '系办公电话',
    `address`       varchar(20)  DEFAULT NULL COMMENT '办公室地点',
    `create_time`   datetime     DEFAULT NULL COMMENT '创建时间',
    `modified_time` datetime     DEFAULT NULL COMMENT '修改时间',
    PRIMARY KEY (`id`)
) ENGINE = InnoDB
  AUTO_INCREMENT = 17
  DEFAULT CHARSET = utf8mb4;


CREATE TABLE `tb_image`
(
    `id`          bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
    `path`        varchar(1023) DEFAULT NULL COMMENT '图片路径',
    `size`        bigint(20)    DEFAULT NULL COMMENT '图片大小',
    `media_type`  varchar(20)   DEFAULT NULL COMMENT '图片类型',
    `suffix`      varchar(50)   DEFAULT NULL COMMENT '图片后缀',
    `height`      int(20)       DEFAULT NULL COMMENT '图片高度',
    `width`       int(20)       DEFAULT NULL COMMENT '图片宽度',
    `create_time` datetime      DEFAULT NULL COMMENT '创建时间',
    PRIMARY KEY (`id`)
) ENGINE = InnoDB
  AUTO_INCREMENT = 31
  DEFAULT CHARSET = utf8mb4;


CREATE TABLE `tb_log`
(
    `id`          bigint(20) NOT NULL AUTO_INCREMENT COMMENT '日志ID',
    `username`    varchar(50)    DEFAULT NULL COMMENT '操作用户',
    `operation`   text COMMENT '操作内容',
    `time`        decimal(11, 0) DEFAULT NULL COMMENT '耗时',
    `method`      text COMMENT '操作方法',
    `params`      text COMMENT '方法参数',
    `ip`          varchar(64)    DEFAULT NULL COMMENT '操作者IP',
    `create_time` datetime       DEFAULT NULL COMMENT '创建时间',
    `location`    varchar(50)    DEFAULT NULL COMMENT '操作地点',
    PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB
  AUTO_INCREMENT = 2192
  DEFAULT CHARSET = utf8
  ROW_FORMAT = DYNAMIC COMMENT ='操作日志表';


CREATE TABLE `tb_login_log`
(
    `id`           bigint(11)  NOT NULL AUTO_INCREMENT COMMENT 'id',
    `username`     varchar(50) NOT NULL COMMENT '用户名',
    `login_time`   datetime    NOT NULL COMMENT '登录时间',
    `location`     varchar(50) DEFAULT NULL COMMENT '登录地点',
    `ip`           varchar(50) DEFAULT NULL COMMENT 'IP地址',
    `user_system`  varchar(50) DEFAULT NULL COMMENT '操作系统',
    `user_browser` varchar(50) DEFAULT NULL COMMENT '浏览器',
    PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB
  AUTO_INCREMENT = 1643
  DEFAULT CHARSET = utf8
  ROW_FORMAT = DYNAMIC COMMENT ='登录日志表';

CREATE TABLE `tb_menu`
(
    `id`            bigint(20)  NOT NULL AUTO_INCREMENT COMMENT '菜单/按钮ID',
    `parent_id`     bigint(20)  DEFAULT NULL COMMENT '上级菜单ID',
    `menu_name`     varchar(50) NOT NULL COMMENT '菜单/按钮名称',
    `url`           varchar(50) DEFAULT NULL COMMENT '菜单URL',
    `perms`         text COMMENT '权限标识',
    `icon`          varchar(50) DEFAULT NULL COMMENT '图标',
    `type`          char(2)     NOT NULL COMMENT '类型 0菜单 1按钮',
    `order_num`     bigint(20)  DEFAULT NULL COMMENT '排序',
    `create_time`   datetime    NOT NULL COMMENT '创建时间',
    `modified_time` datetime    DEFAULT NULL COMMENT '修改时间',
    `available`     int(11)     DEFAULT '1' COMMENT '0：不可用，1：可用',
    `open`          int(1)      DEFAULT '1' COMMENT '0:不展开，1：展开',
    PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB
  AUTO_INCREMENT = 349
  DEFAULT CHARSET = utf8
  ROW_FORMAT = DYNAMIC COMMENT ='菜单表';

CREATE TABLE `tb_role`
(
    `id`            bigint(20)   NOT NULL AUTO_INCREMENT COMMENT '角色ID',
    `role_name`     varchar(100) NOT NULL COMMENT '角色名称',
    `remark`        varchar(100) DEFAULT NULL COMMENT '角色描述',
    `create_time`   datetime     NOT NULL COMMENT '创建时间',
    `modified_time` datetime     DEFAULT NULL COMMENT '修改时间',
    `status`        int(1)       DEFAULT '1' COMMENT '是否可用,0:不可用，1：可用',
    PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB
  AUTO_INCREMENT = 146
  DEFAULT CHARSET = utf8
  ROW_FORMAT = DYNAMIC COMMENT ='角色表';


CREATE TABLE `tb_role_menu`
(
    `role_id` bigint(20) NOT NULL COMMENT '角色ID',
    `menu_id` bigint(20) NOT NULL COMMENT '菜单/按钮ID'
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8
  ROW_FORMAT = DYNAMIC COMMENT ='角色菜单关联表';



CREATE TABLE `tb_user`
(
    `id`            bigint(20)   NOT NULL AUTO_INCREMENT COMMENT '用户ID',
    `username`      varchar(50)  NOT NULL COMMENT '用户名',
    `nickname`      varchar(20)           DEFAULT NULL,
    `email`         varchar(128)          DEFAULT NULL COMMENT '邮箱',
    `avatar`        text COMMENT '头像',
    `phone_number`  varchar(20)           DEFAULT NULL COMMENT '联系电话',
    `status`        int(1)       NOT NULL COMMENT '状态 0锁定 1有效',
    `create_time`   datetime     NOT NULL COMMENT '创建时间',
    `modified_time` datetime              DEFAULT NULL COMMENT '修改时间',
    `sex`           int(1)                DEFAULT NULL COMMENT '性别 0男 1女 2保密',
    `salt`          varchar(255)          DEFAULT NULL COMMENT '盐',
    `type`          int(11)      NOT NULL DEFAULT '1' COMMENT '0:超级管理员，1：系统用户',
    `password`      varchar(128) NOT NULL COMMENT '密码',
    `birth`         date                  DEFAULT NULL,
    `department_id` bigint(20)            DEFAULT '1' COMMENT '部门id',
    PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB
  AUTO_INCREMENT = 200
  DEFAULT CHARSET = utf8
  ROW_FORMAT = DYNAMIC COMMENT ='用户表';


CREATE TABLE `tb_user_role`
(
    `user_id` bigint(20) NOT NULL COMMENT '用户ID',
    `role_id` bigint(20) NOT NULL COMMENT '角色ID'
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8
  ROW_FORMAT = DYNAMIC COMMENT ='用户角色关联表';


CREATE TABLE `biz_health`
(
    `id`          bigint(20)  NOT NULL AUTO_INCREMENT,
    `address`     varchar(50) NOT NULL,
    `user_id`     bigint(20)  NOT NULL,
    `situation`   int(1)      NOT NULL,
    `touch`       int(1)      NOT NULL,
    `passby`      int(1)      NOT NULL,
    `reception`   int(1)      NOT NULL,
    `create_time` datetime    NOT NULL,
    PRIMARY KEY (`id`)
) ENGINE = InnoDB
  AUTO_INCREMENT = 36
  DEFAULT CHARSET = utf8mb4;
