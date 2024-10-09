CREATE DATABASE IF NOT EXISTS cjp-cli-dev;
CREATE USER IF NOT EXISTS 'cjp'@'%' IDENTIFIED BY 'Abc@123*';  # 替换为你的用户名和密码
GRANT ALL PRIVILEGES ON cjp-cli-dev.* TO 'user'@'%'; # 百分号 % 代表允许用户 cjp 从任何主机连接到数据库
FLUSH PRIVILEGES;