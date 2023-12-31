INSERT INTO supermarket.tb_menu (id, parent_id, menu_name, url, perms, icon, type, order_num, create_time,
                                 modified_time, available, open)
VALUES (1, 0, '系统管理', '', null, 'el-icon-setting', '0', 1, '2024-03-07 17:41:30', '2024-08-19 17:57:20', 1, 0);
INSERT INTO supermarket.tb_menu (id, parent_id, menu_name, url, perms, icon, type, order_num, create_time,
                                 modified_time, available, open)
VALUES (4, 1, '菜单权限', '/system/menus', 'menus', 'el-icon-help', '0', 3, '2024-03-07 18:57:42',
        '2024-12-15 17:25:02', 1, 0);
INSERT INTO supermarket.tb_menu (id, parent_id, menu_name, url, perms, icon, type, order_num, create_time,
                                 modified_time, available, open)
VALUES (5, 0, '监控中心', '', null, 'el-icon-camera', '0', 6, '2024-03-07 18:58:18', '2024-12-15 19:34:38', 1, 1);
INSERT INTO supermarket.tb_menu (id, parent_id, menu_name, url, perms, icon, type, order_num, create_time,
                                 modified_time, available, open)
VALUES (226, 1, '用户管理', '/system/users', 'users', 'el-icon-user', '0', 2, '2024-03-10 05:27:54',
        '2024-12-15 17:24:22', 1, 0);
INSERT INTO supermarket.tb_menu (id, parent_id, menu_name, url, perms, icon, type, order_num, create_time,
                                 modified_time, available, open)
VALUES (230, 312, '入库记录', '/business/product/in-stocks', 'el-icon-date', 'el-icon-date', '0', 1,
        '2024-03-10 05:34:28', '2024-12-15 19:57:21', 1, 0);
INSERT INTO supermarket.tb_menu (id, parent_id, menu_name, url, perms, icon, type, order_num, create_time,
                                 modified_time, available, open)
VALUES (234, 226, '用户添加', '', 'user:add', 'el-icon-plus', '1', 1, '2024-03-10 05:50:44', '2024-03-10 07:51:56', 1,
        0);
INSERT INTO supermarket.tb_menu (id, parent_id, menu_name, url, perms, icon, type, order_num, create_time,
                                 modified_time, available, open)
VALUES (235, 1, '角色管理', '/system/roles', 'roles', 'el-icon-postcard', '0', 3, '2024-03-10 05:51:28',
        '2024-12-15 17:24:41', 1, 0);
INSERT INTO supermarket.tb_menu (id, parent_id, menu_name, url, perms, icon, type, order_num, create_time,
                                 modified_time, available, open)
VALUES (239, 226, '用户删除', '', 'user:delete', 'el-icon-picture', '1', 1, '2024-03-10 06:05:30',
        '2024-03-10 08:10:19', 1, 0);
INSERT INTO supermarket.tb_menu (id, parent_id, menu_name, url, perms, icon, type, order_num, create_time,
                                 modified_time, available, open)
VALUES (240, 226, '用户编辑', '', 'user:edit', 'el-icon-video-camera-solid', '1', 1, '2024-03-10 06:06:30',
        '2024-03-10 07:52:28', 1, 0);
INSERT INTO supermarket.tb_menu (id, parent_id, menu_name, url, perms, icon, type, order_num, create_time,
                                 modified_time, available, open)
VALUES (241, 235, '角色编辑', '', 'role:edit', 'el-icon-s-promotion', '1', 2, '2024-03-10 06:11:03',
        '2024-03-11 11:40:19', 1, 0);
INSERT INTO supermarket.tb_menu (id, parent_id, menu_name, url, perms, icon, type, order_num, create_time,
                                 modified_time, available, open)
VALUES (242, 235, '角色删除', '', 'role:delete', 'el-icon-s-marketing', '1', 3, '2024-03-10 06:15:29',
        '2024-03-11 11:43:36', 1, 0);
INSERT INTO supermarket.tb_menu (id, parent_id, menu_name, url, perms, icon, type, order_num, create_time,
                                 modified_time, available, open)
VALUES (247, 4, '添加菜单', '', 'menu:add', 'el-icon-s-opportunity', '1', 1, '2024-03-10 07:55:10',
        '2024-04-27 09:59:43', 1, 0);
INSERT INTO supermarket.tb_menu (id, parent_id, menu_name, url, perms, icon, type, order_num, create_time,
                                 modified_time, available, open)
VALUES (249, 4, '修改菜单', '', 'menu:update', 'el-icon-share', '1', 2, '2024-03-10 07:56:55', '2024-03-15 13:29:29', 1,
        0);
INSERT INTO supermarket.tb_menu (id, parent_id, menu_name, url, perms, icon, type, order_num, create_time,
                                 modified_time, available, open)
VALUES (250, 4, '删除菜单', '', 'menu:delete', 'el-icon-folder-opened', '1', 3, '2024-03-10 07:57:38',
        '2024-03-15 13:29:41', 1, 0);
INSERT INTO supermarket.tb_menu (id, parent_id, menu_name, url, perms, icon, type, order_num, create_time,
                                 modified_time, available, open)
VALUES (251, 235, '分配权限', '', 'role:authority', 'el-icon-document-add', '1', 1, '2024-03-10 08:13:22',
        '2024-03-11 11:39:30', 1, 0);
INSERT INTO supermarket.tb_menu (id, parent_id, menu_name, url, perms, icon, type, order_num, create_time,
                                 modified_time, available, open)
VALUES (253, 1, '控制面板', '/system/welcome', 'welcome:view', 'el-icon-star-off', '0', 1, '2024-03-10 08:46:44',
        '2024-12-15 19:22:46', 1, 0);
INSERT INTO supermarket.tb_menu (id, parent_id, menu_name, url, perms, icon, type, order_num, create_time,
                                 modified_time, available, open)
VALUES (254, 226, '分配角色', '', 'user:assign', 'el-icon-s-tools', '1', 3, '2024-03-11 01:32:29',
        '2024-04-27 10:58:30', 1, 0);
INSERT INTO supermarket.tb_menu (id, parent_id, menu_name, url, perms, icon, type, order_num, create_time,
                                 modified_time, available, open)
VALUES (255, 235, '添加角色', '', 'role:add', 'el-icon-help', '1', 1, '2024-03-11 01:34:18', '2024-03-11 01:34:18', 1,
        0);
INSERT INTO supermarket.tb_menu (id, parent_id, menu_name, url, perms, icon, type, order_num, create_time,
                                 modified_time, available, open)
VALUES (256, 226, '禁用用户', '', 'user:status', 'el-icon-circle-close', '1', 1, '2024-03-11 06:50:04',
        '2024-03-14 05:05:49', 1, 0);
INSERT INTO supermarket.tb_menu (id, parent_id, menu_name, url, perms, icon, type, order_num, create_time,
                                 modified_time, available, open)
VALUES (258, 226, '用户更新', '', 'user:update', 'el-icon-refresh', '1', 1, '2024-03-11 08:26:54',
        '2024-03-11 08:26:54', 1, 0);
INSERT INTO supermarket.tb_menu (id, parent_id, menu_name, url, perms, icon, type, order_num, create_time,
                                 modified_time, available, open)
VALUES (259, 235, '角色更新', '', 'role:update', 'el-icon-refresh-left', '1', 1, '2024-03-11 11:45:20',
        '2024-03-11 11:45:20', 1, 0);
INSERT INTO supermarket.tb_menu (id, parent_id, menu_name, url, perms, icon, type, order_num, create_time,
                                 modified_time, available, open)
VALUES (260, 235, '状态更新', '', 'role:status', 'el-icon-refresh', '1', 1, '2024-03-14 05:07:02',
        '2024-03-14 05:07:24', 1, 0);
INSERT INTO supermarket.tb_menu (id, parent_id, menu_name, url, perms, icon, type, order_num, create_time,
                                 modified_time, available, open)
VALUES (261, 1, '部门管理', '/system/departments', '', 'el-icon-s-home', '0', 3, '2024-03-15 06:05:48',
        '2024-12-15 17:25:18', 1, 0);
INSERT INTO supermarket.tb_menu (id, parent_id, menu_name, url, perms, icon, type, order_num, create_time,
                                 modified_time, available, open)
VALUES (262, 261, '添加部门', '', 'department:add', 'el-icon-plus', '1', 1, '2024-03-15 11:57:42',
        '2024-03-21 12:37:21', 1, 0);
INSERT INTO supermarket.tb_menu (id, parent_id, menu_name, url, perms, icon, type, order_num, create_time,
                                 modified_time, available, open)
VALUES (263, 261, '编辑院系', '', 'department:edit', 'el-icon-edit', '1', 1, '2024-03-15 11:59:52',
        '2024-03-15 12:16:36', 1, 0);
INSERT INTO supermarket.tb_menu (id, parent_id, menu_name, url, perms, icon, type, order_num, create_time,
                                 modified_time, available, open)
VALUES (264, 261, '更新院系', '', 'department:update', 'el-icon-refresh', '1', 1, '2024-03-15 12:02:34',
        '2024-03-15 12:16:32', 1, 0);
INSERT INTO supermarket.tb_menu (id, parent_id, menu_name, url, perms, icon, type, order_num, create_time,
                                 modified_time, available, open)
VALUES (265, 261, '删除院系', null, 'department:delete', 'el-icon-delete', '1', 1, '2024-03-15 12:03:21',
        '2024-03-15 12:03:21', 1, 0);
INSERT INTO supermarket.tb_menu (id, parent_id, menu_name, url, perms, icon, type, order_num, create_time,
                                 modified_time, available, open)
VALUES (267, 312, '商品资料', '/business/product/list', '', 'el-icon-goods', '0', 2, '2024-03-16 09:01:02',
        '2023-12-02 15:58:17', 1, 0);
INSERT INTO supermarket.tb_menu (id, parent_id, menu_name, url, perms, icon, type, order_num, create_time,
                                 modified_time, available, open)
VALUES (268, 312, '商品类别', '/business/product/categories', '', 'el-icon-star-off', '0', 2, '2024-03-16 09:01:48',
        '2023-12-02 15:58:28', 1, 0);
INSERT INTO supermarket.tb_menu (id, parent_id, menu_name, url, perms, icon, type, order_num, create_time,
                                 modified_time, available, open)
VALUES (269, 312, '商品来源', '/business/product/suppliers', '', 'el-icon-coordinate', '0', 5, '2024-03-16 12:35:10',
        '2023-12-02 15:58:38', 1, 0);
INSERT INTO supermarket.tb_menu (id, parent_id, menu_name, url, perms, icon, type, order_num, create_time,
                                 modified_time, available, open)
VALUES (270, 312, '出库记录', '/business/product/out-stocks', '', 'el-icon-goods', '0', 5, '2024-03-16 13:55:49',
        '2023-12-02 15:45:42', 1, 1);
INSERT INTO supermarket.tb_menu (id, parent_id, menu_name, url, perms, icon, type, order_num, create_time,
                                 modified_time, available, open)
VALUES (271, 5, '登入日志', '/monitor/login-log', 'login:log', 'el-icon-date', '0', 1, '2024-03-20 10:31:12',
        '2024-12-15 18:28:47', 1, 0);
INSERT INTO supermarket.tb_menu (id, parent_id, menu_name, url, perms, icon, type, order_num, create_time,
                                 modified_time, available, open)
VALUES (274, 267, '添加物资', '', 'product:add', 'el-icon-s-opportunity', '1', 1, '2024-03-21 02:04:24',
        '2024-03-21 02:04:24', 1, 0);
INSERT INTO supermarket.tb_menu (id, parent_id, menu_name, url, perms, icon, type, order_num, create_time,
                                 modified_time, available, open)
VALUES (276, 267, '上传图片', null, 'upload:image', 'el-icon-finished', '1', 2, '2024-03-21 02:05:21',
        '2024-03-21 02:05:21', 1, 0);
INSERT INTO supermarket.tb_menu (id, parent_id, menu_name, url, perms, icon, type, order_num, create_time,
                                 modified_time, available, open)
VALUES (277, 267, '更新物资', null, 'product:update', 'el-icon-folder', '1', 3, '2024-03-21 02:05:56',
        '2024-03-21 02:05:56', 1, 0);
INSERT INTO supermarket.tb_menu (id, parent_id, menu_name, url, perms, icon, type, order_num, create_time,
                                 modified_time, available, open)
VALUES (278, 267, '编辑物资', null, 'product:edit', 'el-icon-edit', '1', 1, '2024-03-21 02:06:23',
        '2024-03-21 02:06:23', 1, 0);
INSERT INTO supermarket.tb_menu (id, parent_id, menu_name, url, perms, icon, type, order_num, create_time,
                                 modified_time, available, open)
VALUES (279, 269, '删除来源', '', 'supplier:delete', 'el-icon-document-delete', '1', 1, '2024-03-21 02:17:29',
        '2024-03-21 12:32:22', 1, 0);
INSERT INTO supermarket.tb_menu (id, parent_id, menu_name, url, perms, icon, type, order_num, create_time,
                                 modified_time, available, open)
VALUES (280, 269, '更新来源', '', 'supplier:update', 'el-icon-paperclip', '1', 1, '2024-03-21 02:18:34',
        '2024-03-21 12:36:41', 1, 0);
INSERT INTO supermarket.tb_menu (id, parent_id, menu_name, url, perms, icon, type, order_num, create_time,
                                 modified_time, available, open)
VALUES (281, 269, '添加来源', null, 'supplier:add', 'el-icon-document-add', '1', 1, '2024-03-21 02:19:02',
        '2024-03-21 02:19:02', 1, 1);
INSERT INTO supermarket.tb_menu (id, parent_id, menu_name, url, perms, icon, type, order_num, create_time,
                                 modified_time, available, open)
VALUES (282, 269, '编辑来源', null, 'supplier:edit', 'el-icon-scissors', '1', 2, '2024-03-21 02:19:36',
        '2024-03-21 02:19:36', 1, 1);
INSERT INTO supermarket.tb_menu (id, parent_id, menu_name, url, perms, icon, type, order_num, create_time,
                                 modified_time, available, open)
VALUES (283, 268, '添加类别', '', 'productCategory:add', ' el-icon-folder-add', '1', 1, '2024-03-21 02:26:12',
        '2024-03-21 02:44:22', 1, 0);
INSERT INTO supermarket.tb_menu (id, parent_id, menu_name, url, perms, icon, type, order_num, create_time,
                                 modified_time, available, open)
VALUES (284, 268, '删除类别', null, 'productCategory:delete', 'el-icon-delete', '1', 1, '2024-03-21 02:27:05',
        '2024-03-21 02:28:49', 1, 0);
INSERT INTO supermarket.tb_menu (id, parent_id, menu_name, url, perms, icon, type, order_num, create_time,
                                 modified_time, available, open)
VALUES (285, 268, '编辑类别', null, 'productCategory:edit', 'el-icon-scissors', '1', 2, '2024-03-21 02:27:42',
        '2024-03-21 02:27:42', 1, 0);
INSERT INTO supermarket.tb_menu (id, parent_id, menu_name, url, perms, icon, type, order_num, create_time,
                                 modified_time, available, open)
VALUES (286, 268, '更新类别', null, 'productCategory:update', ' el-icon-coordinate', '1', 1, '2024-03-21 02:28:17',
        '2024-03-21 02:28:17', 1, 0);
INSERT INTO supermarket.tb_menu (id, parent_id, menu_name, url, perms, icon, type, order_num, create_time,
                                 modified_time, available, open)
VALUES (296, 295, 'swagger文档', '/monitor/swagger-ui', null, 'el-icon-document', '0', 2, '2024-03-22 01:22:48',
        '2024-12-15 18:32:54', 1, 0);
INSERT INTO supermarket.tb_menu (id, parent_id, menu_name, url, perms, icon, type, order_num, create_time,
                                 modified_time, available, open)
VALUES (299, 271, '删除日志', '', 'loginLog:delete', 'el-icon-delete', '1', 1, '2024-03-22 21:55:44',
        '2024-03-22 21:55:44', 1, 0);
INSERT INTO supermarket.tb_menu (id, parent_id, menu_name, url, perms, icon, type, order_num, create_time,
                                 modified_time, available, open)
VALUES (300, 271, '批量删除', '', 'loginLog:batchDelete', 'el-icon-delete-solid', '1', 1, '2024-03-22 22:19:26',
        '2024-03-22 22:19:26', 1, 0);
INSERT INTO supermarket.tb_menu (id, parent_id, menu_name, url, perms, icon, type, order_num, create_time,
                                 modified_time, available, open)
VALUES (301, 4, '编辑菜单', '', 'menu:edit', 'el-icon-edit', '1', 1, '2024-03-22 23:12:25', '2024-03-22 23:12:25', 1,
        0);
INSERT INTO supermarket.tb_menu (id, parent_id, menu_name, url, perms, icon, type, order_num, create_time,
                                 modified_time, available, open)
VALUES (303, 0, '员工汇报', '', '', 'el-icon-platform-eleme', '0', 3, '2024-03-24 10:11:53', '2023-12-02 15:48:35', 1,
        1);
INSERT INTO supermarket.tb_menu (id, parent_id, menu_name, url, perms, icon, type, order_num, create_time,
                                 modified_time, available, open)
VALUES (304, 303, '上报信息', '/report/health', '', 'el-icon-s-cooperation', '0', 1, '2024-03-24 10:12:57',
        '2023-12-02 15:47:56', 1, 0);
INSERT INTO supermarket.tb_menu (id, parent_id, menu_name, url, perms, icon, type, order_num, create_time,
                                 modified_time, available, open)
VALUES (307, 5, '操作日志', '/monitor/logs', '', 'el-icon-edit', '0', 1, '2024-04-04 19:04:53', '2024-12-15 18:34:36',
        1, 0);
INSERT INTO supermarket.tb_menu (id, parent_id, menu_name, url, perms, icon, type, order_num, create_time,
                                 modified_time, available, open)
VALUES (308, 307, '删除日志', '', 'log:delete', 'el-icon-circle-close', '1', 1, '2024-04-04 19:59:20',
        '2024-04-04 19:59:20', 1, 1);
INSERT INTO supermarket.tb_menu (id, parent_id, menu_name, url, perms, icon, type, order_num, create_time,
                                 modified_time, available, open)
VALUES (309, 307, '批量删除', null, 'log:batchDelete', 'el-icon-document-delete', '1', 2, '2024-04-04 19:59:59',
        '2024-04-04 19:59:59', 1, 0);
INSERT INTO supermarket.tb_menu (id, parent_id, menu_name, url, perms, icon, type, order_num, create_time,
                                 modified_time, available, open)
VALUES (310, 312, '商品去处', '/business/product/consumers', '', 'el-icon-edit', '0', 1, '2024-04-05 10:08:21',
        '2023-12-02 15:57:57', 1, 0);
INSERT INTO supermarket.tb_menu (id, parent_id, menu_name, url, perms, icon, type, order_num, create_time,
                                 modified_time, available, open)
VALUES (312, 0, '业务管理', null, null, 'el-icon-s-goods', '0', 2, '2024-04-05 10:19:07', '2024-08-19 17:57:27', 1, 1);
INSERT INTO supermarket.tb_menu (id, parent_id, menu_name, url, perms, icon, type, order_num, create_time,
                                 modified_time, available, open)
VALUES (316, 312, '商品库存', '/business/product/stocks', '', 'el-icon-tickets', '0', 5, '2024-04-16 08:45:08',
        '2023-12-02 15:58:49', 1, 0);
INSERT INTO supermarket.tb_menu (id, parent_id, menu_name, url, perms, icon, type, order_num, create_time,
                                 modified_time, available, open)
VALUES (317, 226, '导出表格', '', 'user:export', 'el-icon-edit', '1', 1, '2024-04-17 18:02:05', '2024-04-17 18:02:05',
        1, 0);
INSERT INTO supermarket.tb_menu (id, parent_id, menu_name, url, perms, icon, type, order_num, create_time,
                                 modified_time, available, open)
VALUES (321, 1, '文件管理', '/system/files', '', 'el-icon-picture-outline', '0', 2, '2024-04-25 10:52:17',
        '2024-12-15 19:21:15', 1, 1);
INSERT INTO supermarket.tb_menu (id, parent_id, menu_name, url, perms, icon, type, order_num, create_time,
                                 modified_time, available, open)
VALUES (322, 310, '添加去处', '', 'consumer:add', 'el-icon-plus', '1', 2, '2024-04-27 16:57:04', '2024-04-27 16:58:21',
        1, 1);
INSERT INTO supermarket.tb_menu (id, parent_id, menu_name, url, perms, icon, type, order_num, create_time,
                                 modified_time, available, open)
VALUES (323, 310, '删除去处', null, 'consumer:delete', 'el-icon-delete', '1', 1, '2024-04-27 16:57:42',
        '2024-04-27 16:57:42', 1, 0);
INSERT INTO supermarket.tb_menu (id, parent_id, menu_name, url, perms, icon, type, order_num, create_time,
                                 modified_time, available, open)
VALUES (324, 310, '编辑去处', '', 'consumer:edit', 'el-icon-edit', '1', 1, '2024-04-27 16:59:17', '2024-04-27 16:59:17',
        1, 0);
INSERT INTO supermarket.tb_menu (id, parent_id, menu_name, url, perms, icon, type, order_num, create_time,
                                 modified_time, available, open)
VALUES (325, 310, '更新去处', null, 'consumer:update', 'el-icon-star-off', '1', 1, '2024-04-27 17:00:18',
        '2024-04-27 17:00:18', 1, 1);
INSERT INTO supermarket.tb_menu (id, parent_id, menu_name, url, perms, icon, type, order_num, create_time,
                                 modified_time, available, open)
VALUES (326, 230, '添加入库', '', 'inStock:in', 'el-icon-plus', '1', 3, '2024-04-27 17:07:04', '2024-08-19 17:57:15', 1,
        1);
INSERT INTO supermarket.tb_menu (id, parent_id, menu_name, url, perms, icon, type, order_num, create_time,
                                 modified_time, available, open)
VALUES (328, 230, '入库明细', null, 'inStock:detail', 'el-icon-zoom-in', '1', 2, '2024-04-27 17:08:25',
        '2024-04-27 17:08:25', 1, 0);
INSERT INTO supermarket.tb_menu (id, parent_id, menu_name, url, perms, icon, type, order_num, create_time,
                                 modified_time, available, open)
VALUES (329, 4, '导出菜单', null, 'menu:export', 'el-icon-edit', '1', 1, '2024-04-27 17:26:40', '2024-04-27 17:26:40',
        1, 0);
INSERT INTO supermarket.tb_menu (id, parent_id, menu_name, url, perms, icon, type, order_num, create_time,
                                 modified_time, available, open)
VALUES (331, 267, '删除物资', null, 'product:delete', 'el-icon-delete', '1', 1, '2024-04-30 18:27:02',
        '2024-04-30 19:05:31', 1, 0);
INSERT INTO supermarket.tb_menu (id, parent_id, menu_name, url, perms, icon, type, order_num, create_time,
                                 modified_time, available, open)
VALUES (332, 267, '回收物资', '', 'product:remove', 'el-icon-remove', '1', 1, '2024-04-30 18:56:48',
        '2024-04-30 18:56:48', 1, 1);
INSERT INTO supermarket.tb_menu (id, parent_id, menu_name, url, perms, icon, type, order_num, create_time,
                                 modified_time, available, open)
VALUES (333, 267, '物资审核', null, 'product:publish', 'el-icon-edit', '1', 1, '2024-04-30 18:58:38',
        '2024-04-30 19:05:42', 1, 0);
INSERT INTO supermarket.tb_menu (id, parent_id, menu_name, url, perms, icon, type, order_num, create_time,
                                 modified_time, available, open)
VALUES (336, 267, '物资还原', null, 'product:back', 'el-icon-top-left', '1', 1, '2024-04-30 19:06:22',
        '2024-04-30 19:06:22', 1, 0);
INSERT INTO supermarket.tb_menu (id, parent_id, menu_name, url, perms, icon, type, order_num, create_time,
                                 modified_time, available, open)
VALUES (337, 230, '入库回收', '', 'inStock:remove', 'el-icon-remove', '1', 3, '2024-04-30 19:12:56',
        '2024-08-19 17:57:55', 1, 1);
INSERT INTO supermarket.tb_menu (id, parent_id, menu_name, url, perms, icon, type, order_num, create_time,
                                 modified_time, available, open)
VALUES (338, 230, '入库审核', null, 'inStock:publish', 'el-icon-edit', '1', 2, '2024-04-30 19:13:32',
        '2024-08-19 17:57:32', 1, 0);
INSERT INTO supermarket.tb_menu (id, parent_id, menu_name, url, perms, icon, type, order_num, create_time,
                                 modified_time, available, open)
VALUES (339, 230, '删除记录', null, 'inStock:delete', 'el-icon-delete', '1', 4, '2024-04-30 19:14:03',
        '2024-08-19 17:57:42', 1, 0);
INSERT INTO supermarket.tb_menu (id, parent_id, menu_name, url, perms, icon, type, order_num, create_time,
                                 modified_time, available, open)
VALUES (340, 230, '入库还原', '', 'inStock:back', 'el-icon-d-arrow-left', '1', 3, '2024-04-30 19:17:27',
        '2024-08-19 17:57:49', 1, 0);
INSERT INTO supermarket.tb_menu (id, parent_id, menu_name, url, perms, icon, type, order_num, create_time,
                                 modified_time, available, open)
VALUES (341, 295, '个人博客', '/blog', '', 'el-icon-view', '0', 1, '2024-05-07 19:34:31', '2024-05-07 19:34:31', 1, 0);
INSERT INTO supermarket.tb_menu (id, parent_id, menu_name, url, perms, icon, type, order_num, create_time,
                                 modified_time, available, open)
VALUES (343, 304, '健康上报', '', 'health:report', 'el-icon-edit', '1', 1, '2024-05-14 20:21:09', '2024-05-14 20:21:09',
        1, 0);
