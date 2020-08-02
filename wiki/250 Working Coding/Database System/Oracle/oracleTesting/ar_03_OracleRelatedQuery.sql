/*关联查询
-- select t1.c1,t2.c2 
-- from t1,t2 
-- where t1.c3 = t2.c4

-- where 在进行连接的时候，可以使用等值连接，可以使用非等值连接
*/
--查询雇员的名称和部门的名称


-- 查询雇员名称以及自己的薪水等级


-- 等值连接，两个表中包含相同的列名


-- 非等值连接，两个表中没有相同的列名，但是某一个列在另一张表的列的范围之中

-- 外连接



--需要将雇员表中的所有数据都进行显示,利用等值连接的话只会把关联到的数据显示，


--没有关联到的数据不会显示，此时需要外连接
--分类：左外连接（把左表的全部数据显示）和右外连接（把右表的全部数据显示）
-- 连接查询符号(+): 所具有的一方会是被连接对象
-- 左外连接: 左表empt, 右表dept


-- 右外连接：左表empt, 右表dept


--  左表dept, 右表emp

-- 右外连接





--自连接：将一张表当成不同的表来看待，自己关联自己
--将雇员和他经理的名称查出来


-- 笛卡尔积：当关联多张表，但是不指定连接条件的时候，会进行笛卡尔积，
-- 关联后的总记录条数为M*n，一般不要使用



-- 92的表连接语法有什么问题？？？？
-- 在92语法中，多张表的连接条件会方法where子句中，同时where需要对表进行条件过滤
-- 因此，相当于将过滤条件和连接条件揉到一起，太乱了，因此出现了99语法

--99语法
/*








*/

--cross join 等同于92语法中的笛卡儿积


--natural join  相当于是等值连接，但是注意，不需要写连接条件，会从两张表中找到相同的列做连接
--当两张表中不具有相同的列名的时候，会进行笛卡儿积操作,自然连接跟92语法的自连接没有任何关系
-- 因此，使用nature join 一定要确定具有相同的列来做连接。




--on子句，可以添加任意的连接条件，
--添加连接条件 相当于92语法中的等值连接


--相当于92语法中的非等值连接，


--left outer join ,会把左表中的全部数据正常显示，右表没有对应的数据直接显示空即可


--right outer join ,会把右表中的全部数据正常显示，左表中没有对应的记录的话显示空即可


--full outer join ,相当于左外连接和右外连接的合集


--inner outer join，两张表的连接查询，只会查询出有匹配记录的数据


-- using,除了可以使用on表示连接条件之外，也可以使用using作为连接条件,
-- 此时连接条件的列不再归属于任何一张表, 作为独立的列而存在。




--总结:两种语法的SQL语句没有任何限制，在公司中可以随意使用，但是建议使用99语法，不要使用92语法，SQL显得清楚明了


--------------------------------------------
--------------------------------------------
--检索雇员名字、所在单位、薪水等级



/*
子查询：
    -- 嵌套再其他sql语句中的完整sql语句，可以称之为子查询
分类：
    单行子查询
    多行子查询
*/
--有哪些人的薪水是在整个雇员的平均薪水之上的
--1、先求平均薪水


--2、把所有人的薪水与平均薪水比较


--我们要查在雇员中有哪些人是经理人
--1、查询所有的经理人编号



--2、在雇员表中过滤这些编号即可


--每个部门平均薪水的等级
--1、先求出部门的平均薪水


--2、跟薪水登记表做关联，求出平均薪水的等级



--- 子查询练习-----
--1、求平均薪水最高的部门的部门编号 -- 部门编号
--求部门的平均薪水


--求平均薪水最高的部门


--求部门编号



--2、求部门平均薪水的等级
-- 部门平均薪水


-- 薪水等级


--3、求部门平均的薪水等级
-- 求部门每个人的薪水等级




-- 按照部门求平均等级


-- 限制输出: limit 是 MySQL 用来做限制输出的，但是oracle中不是
--oracle中，如果需要使用限制输出和分页的功能的话，必须要使用rownum，
--但是rownum不能直接使用，需要嵌套使用
--4、求薪水最高的前5名雇员
-- 按照薪水降序排序





-- 5、求薪水最高的第6到10名雇员
-- 查询 1-10 (这里也可以不限制， 仅添加rownum)




-- 再次查询 6 - 10
-- 使用rownum的时候必须要再外层添加嵌套，此时才能将rownum作为其中的一个列，然后再进行限制输出

