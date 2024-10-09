CREATE TABLE component_test (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL COMMENT '项目名称',
    description TEXT COMMENT '描述',
    npm_name VARCHAR(255) COMMENT 'npm包名',
    npm_version VARCHAR(50) COMMENT '项目版本',
    git_type ENUM('github', 'gitee', 'gitlab', 'bitbucket', 'other') COMMENT 'git托管平台',
    git_remote VARCHAR(255) COMMENT '远程仓库地址',
    git_owner ENUM('org', 'user') COMMENT '登录类型',
    git_login VARCHAR(255) COMMENT '登录名',
    status TINYINT(1) NOT NULL DEFAULT 1 COMMENT '状态 (0 或 1)，默认 1',
    create_dt BIGINT NOT NULL COMMENT '创建时间（时间戳）',
    create_by VARCHAR(255) NOT NULL COMMENT '创建者登录名',
    update_dt BIGINT NOT NULL COMMENT '更新时间（时间戳）',
    update_by VARCHAR(255) NOT NULL COMMENT '更新者登录名'
) COMMENT='组件信息表';