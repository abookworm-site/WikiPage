/* 序列： 
-- 在Oracle中， 如果需要完成一个列的自增操作，则必须要使用序列
-- 语法：
-- create sequence seq_name
--   increment by n  每次增长几
--   start with n    从哪个值开始增长
--   maxvalue n|nomaxvalue 10^27 or -1  最大值
--   minvalue n|no minvalue  最小值
--   cycle|nocycle           是否有循环
--   cache n|nocache          是否有缓存
*/
-- 创建序列
create sequence my_sequence increment by 2 start with 1;

create sequence seq increment by 2 start with 1;


-- 如何使用？
-- 注意: 如果创建好序列之后，没有经过任何的使用，那么不能获取当前的值，必须要先执行 nextval 之后才能获取当前值


-- 1. 首次运行必须运行一次 nextval ，获取序列的下一个值（初始值）
select my_sequence.nextval from dual;

-- 2. 查看当前序列的值，若首次直接查看，那么SQL会报错
select my_sequence.currval from dual;

-- 此处，报错
select seq.currval from dual;

-- 3. 获取序列的下一个值
select my_sequence.nextval from dual;

-- 4. 使用：插入数据
select * from psn;

-- 插入数据时，需要直接使用seq.nextval
insert into psn(id, name) values(seq.nextval, 1);

-- 删除序列
drop sequence my_sequence;


/* 数据表创建语法
--CREATE TABLE [schema.]table
--  (column datatype [DEFAULT expr] , …
--  );
*/

-- 设计要求：建立一张用来存储学生信息的表，表中的字段包含了学生的学号、姓名、年龄、入学日期、年级、班级、email等信息，
-- 并且 grade 指定了默认值为1，如果在插入数据时不指定grade得值，就代表是一年级的学生

create table student(
id number(6),
name varchar2(20) not null unique,
gender number(1) not null,
age number(3),
co_date date,
grade number(1) default(1),
class number(4),
email varchar2(50)
);

insert into student values(123456, 'lisi', 1, 6,to_date('20200101', 'YYYY-MM-DD'), 2, 1234, 'chairej@gmail.com');

select * from student;

-- 正规的表结构设计需要使用第三方工具 powerdesigner

-- 添加字段
-- 在添加表的列的时候，不能允许设置成not null
alter table student add address varchar2(100);

-- 删除字段
alter table student drop column address;

-- 重新命名表/视图
rename student to student1;

select * from student1;

drop table student1;

/* 删除表
-- 在删除表的时候，经常会遇到多个表关联的情况，多个表关联的时候不能随意删除，需要使用级联删除
-- restrict: 
-- cascade: 有 A,B 两张表，如果 A 中的某一个字段跟 B 表中的某一个字段做关联，那么再删除表 A 的时候，需要先将 表B 删除
-- set null: 在删除的时候，把表的关联字段设置成空
*/
drop table student;


/* 创建表的时候可以给表中的数据添加数据校验规则，这些规则称之为约束

-- 约束分为五大类
-- not null: 非空约束，插入数据的时候某些列不允许为空
-- unique key: 唯一键约束，可以限定某一个列的值是唯一的，唯一键的列一般被用作索引列。
-- primary key: 主键：非空且唯一，任何一张表一般情况下最好有主键，用来唯一的标识一行记录，
-- foreign key: 外键，当多个表之间有关联关系（一个表的某个列的值依赖与另一张表的某个值）的时候，需要使用外键
-- check约束:可以根据用户自己的需求去限定某些列的值
*/
-- 个人建议：再创建表的时候直接将各个表的约束条件添加好，如果包含外键约束的话，最好先把外键关联表的数据优先插入

create table student(
stu_id number(10) primary key,
name varchar2(20) not null,
age number(3) check(age>0 and age < 120),
hiredate date,
grade varchar2(10),
classes varchar2(10) default 1,
email varchar2(50), unique,
deptno number(2)
);

alter table student add constriaint fk_001 foreign key(deptno) reference dept(deptno);
