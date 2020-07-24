-- 根据Oracle数据库scott模式下的 `emp` 表和 `dept` 表，完成下列操作。
--------------------------------------------------------------------
-- 数据库熟悉：
-- Table: emp
select * from emp;

-- Table: dept
select * from dept;

-- 1.  查询20号部门的所有员工信息。
select * from emp where deptno = 20;

-- 2.  查询所有工种为CLERK的员工的工号、员工名和部门名。
select e.deptno, e.ename, e.deptno from emp e where e.job = 'CLERK';


select e.deptno from emp e where e.job = 'CLERK';

select * from dept d where d.deptno = select e.deptno from emp e where e.job = 'CLERK';

-- 3.  查询奖金（COMM）高于工资（SAL）的员工信息。


-- 4.  查询奖金高于工资的20%的员工信息。

-- 5.  查询10号部门中工种为MANAGER和20号部门中工种为CLERK的员工的信息。

-- 6.  查询所有工种不是MANAGER和CLERK，且工资大于或等于2000的员工的详细信息。

-- 7.  查询有奖金的员工的不同工种。

-- 8.  查询所有员工工资和奖金的和。

-- 9.  查询没有奖金或奖金低于100的员工信息。

-- 10.  查询各月倒数第2天入职的员工信息。

-- 11.  查询员工工龄大于或等于10年的员工信息。

-- 12.  查询员工信息，要求以首字母大写的方式显示所有员工的姓名。

-- 13.  查询员工名正好为6个字符的员工的信息。

-- 14.  查询员工名字中不包含字母"S"员工。

-- 15.  查询员工姓名的第2个字母为"M"的员工信息。

-- 16.  查询所有员工姓名的前3个字符。

-- 17.  查询所有员工的姓名，如果包含字母"s"，则用"S"替换。

-- 18.  查询员工的姓名和入职日期，并按入职日期从先到后进行排列。

-- 19.  显示所有的姓名、工种、工资和奖金，按工种降序排列，若工种相同则按工资升序排列。

-- 20.  显示所有员工的姓名、入职的年份和月份，若入职日期所在的月份排序，若月份相同则按入职的年份排序。

-- 21.  查询在2月份入职的所有员工信息。

-- 22.  查询所有员工入职以来的工作期限，用"\*\*年\*\*月\*\*日"的形式表示。

-- 23.  查询至少有一个员工的部门信息。

-- 24.  查询工资比SMITH员工工资高的所有员工信息。

-- 25.  查询所有员工的姓名及其直接上级的姓名。

-- 26.  查询入职日期早于其直接上级领导的所有员工信息。

-- 27.  查询所有部门及其员工信息，包括那些没有员工的部门。

-- 28.  查询所有员工及其部门信息，包括那些还不属于任何部门的员工。

-- 29.  查询所有工种为CLERK的员工的姓名及其部门名称。

-- 30.  查询最低工资大于2500的各种工作。

-- 31.  查询最低工资低于2000的部门及其员工信息。

-- 32.  查询在SALES部门工作的员工的姓名信息。

-- 33.  查询工资高于公司平均工资的所有员工信息。

-- 34.  查询与SMITH员工从事相同工作的所有员工信息。

-- 35.  列出工资等于30号部门中某个员工工资的所有员工的姓名和工资。

-- 36.  查询工资高于30号部门中工作的所有员工的工资的员工姓名和工资。

-- 37.  查询每个部门中的员工数量、平均工资和平均工作年限。

-- 38.  查询从事同一种工作但不属于同一部门的员工信息。

-- 39.  查询各个部门的详细信息以及部门人数、部门平均工资。

-- 40.  查询各种工作的最低工资。

-- 41.  查询各个部门中的不同工种的最高工资。

-- 42.  查询10号部门员工以及领导的信息。

-- 43.  查询各个部门的人数及平均工资。

-- 44.  查询工资为某个部门平均工资的员工信息。

-- 45.  查询工资高于本部门平均工资的员工的信息。

-- 46.  查询工资高于本部门平均工资的员工的信息及其部门的平均工资。

-- 47.  查询工资高于20号部门某个员工工资的员工的信息。

-- 48.  统计各个工种的人数与平均工资。

-- 49.  统计每个部门中各个工种的人数与平均工资。

-- 50.  查询工资、奖金与10 号部门某个员工工资、奖金都相同的员工的信息。

-- 51.  查询部门人数大于5的部门的员工的信息。

-- 52.  查询所有员工工资都大于1000的部门的信息。

-- 53.  查询所有员工工资都大于1000的部门的信息及其员工信息。

-- 54.  查询所有员工工资都在900\~3000之间的部门的信息。

-- 55.  查询所有工资都在900\~3000之间的员工所在部门的员工信息。

-- 56.  查询每个员工的领导所在部门的信息。

-- 57.  查询人数最多的部门信息。

-- 58.  查询30号部门中工资排序前3名的员工信息。

-- 59.  查询所有员工中工资排在5\~10名之间的员工信息。

-- 60.  向emp表中插入一条记录，员工号为1357，员工名字为oracle，工资为2050元，部门号为20，入职日期为2002年5月10日。

-- 61.  向emp表中插入一条记录，员工名字为FAN，员工号为8000，其他信息与SMITH员工的信息相同。

-- 62.  将各部门员工的工资修改为该员工所在部门平均工资加1000。

-- 1、查询82年员工

-- 2、查询32年工龄的人员

-- 3、显示员工雇佣期 6 个月后下一个星期一的日期

-- 4、找没有上级的员工，把mgr的字段信息输出为 \"boss\"

-- 5、为所有人长工资，标准是：10部门长10%；20部门长15%；30部门长20%其他部门长18%

-- Oracle\_练习与答案

-- 1.求部门中薪水最高的人

-- 2.求部门平均薪水的等级

-- 3. 求部门平均的薪水等级 

-- 4. 雇员中有哪些人是经理人 

-- 5. 不准用组函数，求薪水的最高值 

-- 6. 求平均薪水最高的部门的部门编号 

-- > 组函数嵌套写法(对多可以嵌套一次，group by 只对内层函数有效) 

-- 7. 求平均薪水最高的部门的部门名称 

-- 8. 求平均薪水的等级最低的部门的部门名称 

-- 9. 求部门经理人中平均薪水最低的部门名称

-- 10. 求比普通员工的最高薪水还要高的经理人名称(not in) 

-- 11. 求薪水最高的前5名雇员 

-- 12. 求薪水最高的第6到第10名雇(!important) 

-- 13. 求最后入职的5名员工 
