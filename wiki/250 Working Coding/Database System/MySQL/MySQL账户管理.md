# MySQL 账户管理

## MySQL账户体系

- 服务实例级账号：启动一个`mysqld`，即为一个数据库实例；如果某用户如root,拥有服务实例级分配的权限，那么该账号就可以删除所有的数据库、连同这些库中的表
- 数据库级别账号：对特定数据库执行增删改查的所有操作
- 数据表级别账号：对特定表执行增删改查等所有操作
- 字段级别的权限：对某些表的特定字段进行操作
- 存储程序级别的账号：对存储程序进行增删改查的操作



## 注意事项

- 生产环境下，绝不使用ROOT账户连接

- 一般使用数据库级操作权限操作

- 主要操作：创建账户、删除账户、修改密码、授权权限