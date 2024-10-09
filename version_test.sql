CREATE TABLE version_test (
    id INT AUTO_INCREMENT PRIMARY KEY,
    component_id INT NOT NULL COMMENT '组件id',  -- 修改为INT类型，与component_test表的id字段匹配
    version VARCHAR(255) NOT NULL COMMENT '组件版本',
    build_path VARCHAR(255) NOT NULL COMMENT '打包文件路径',
    example_path VARCHAR(255) DEFAULT NULL COMMENT '演示路径',
    example_list TEXT DEFAULT NULL COMMENT '演示文件列表',
    example_real_path VARCHAR(255) DEFAULT NULL COMMENT '演示文件真实路径',
    status TINYINT(1) NOT NULL DEFAULT 1 COMMENT '状态，0 或 1，默认 1',
    create_dt BIGINT NOT NULL COMMENT '创建时间（时间戳）',
    create_by VARCHAR(255) NOT NULL COMMENT '创建者登录名',
    update_dt BIGINT NOT NULL COMMENT '更新时间（时间戳）',
    update_by VARCHAR(255) NOT NULL COMMENT '更新者登录名',
    FOREIGN KEY (component_id) REFERENCES component_test(id) -- 添加外键约束
) COMMENT='组件版本信息表' ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;