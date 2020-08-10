/* 事务

-- 定义：表示操作集合，不可分割，要么全部成功，要么全部失败

-- 事务的最主要的目的是 为了数据一致性
-- 如果同一份数据，在同一个时刻只能有一个人访问，就不会出现数据错乱的问题，但是在现在的项目中，更多的是并发访问
-- 并发访问的同时带来的就是数据的不安全，也就是不一致
-- 如果要保证数据的安全，最主要的方式就是加锁的方式：MVCC

-- 事务的开始取决于一个 DML (Detelete, Modification, )语句
-- 事务的结束
  1、正常的 commit（使数据修改生效）或者 rollback（将数据恢复到上一个状态）
  2、自动提交，但是一般情况下要将自动提交进行关闭，(每条语句提交)效率太低
  3、用户关闭会话之后，会自动提交事务
  4、系统崩溃或者断电的时候会回滚事务，也就是将数据恢复到上一个状态
*/
-- commit:
-- 默认提交：正常配置的oracle 默认一条语句一个事务自动提交
select * from emp2;

insert into emp2(empno, ename) values(1111, 'sanzhang');

select * from emp2;


-- 可以通过配置设置手工提交事务
insert into emp2(empno, ename) values(2222, 'sili');

select * from emp2;

commit;

-- rollback：
-- 回滚自动提交，但是手工提交过后不能再回滚
select * from emp2;

insert into emp2(empno, ename) values(3333, 'sanzhang');

rollback;

-- 回滚成功
select * from emp2;

insert into emp2(empno, ename) values(3333, 'sanzhang');

commit;
rollback;

-- 回滚失败
select * from emp2;


-- savepoint  保存点
-- 当一个操作集合中包含多条SQL语句，但是只想让其中某部分成功，某部分失败，此时可以使用保存点
-- 此时如果需要回滚到某一个状态的话使用 rollback to sp1;
delete from emp2 where empno = 1111;

savepoint sp1;

delete from emp2 where empno = 4444;

rollback to sp1;

/* 事务的四个特性：ACID -- AID-C

-- 原子性：表示不可分割，一个操作集合要么全部成功，要么全部失败，不可以从中间做切分

-- 一致性：最终是为了保证数据的一致性，当经过N多个操作之后，数据的状态不会改变（转账）
---- 从一个一致性状态到另一个一致性状态，也就是数据不可以发生错乱

-- 隔离性：各个事务之间相关不会产生影响，（隔离级别）
---- 严格的隔离性会导致效率降低，在某些情况下为了提高程序的执行效率，需要降低隔离的级别
---- 隔离级别：
---- - 读未提交
---- - 读已提交
---- - 可重复读
---- - 序列化
---- 数据不一致的问题：
---- - 脏读
---- - 不可重复读
---- - 幻读

-- 持久性：所有数据的修改都必须要持久化到存储介质中，不会因为应用程序的关闭而导致数据丢失

-- 四个特性中，哪个是最关键的？

---- 所有的特性中都是为了保证数据的一致性，所以一致性是最终的追求
---- 事务中的一致性是通过原子性、隔离性、持久性来保证的

-- 锁的机制：

-- 为了解决在并发访问的时候，数据不一致的问题，需要给数据加锁
-- 加锁的同时需要考虑《粒度》的问题，依据操作的对象不同，分三类：
---- 数据库
---- 表
---- 行

-- 一般情况下，锁的粒度越小，效率越高，粒度越大，效率越低 
-- 在实际的工作环境中，大部分的操作都是行级锁
*/
