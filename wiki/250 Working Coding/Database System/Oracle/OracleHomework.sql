-- 查询20号部门的所有员工信息。


-- 查询所有工种为CLERK的员工的工号、员工名和部门名。



-- 查询奖金（COMM）高于工资（SAL）的员工信息。


-- 查询奖金高于工资的20%的员工信息。


-- 查询10号部门中工种为MANAGER和20号部门中工种为CLERK的员工的信息。


-- 查询所有工种不是MANAGER和CLERK，且工资大于或等于2000的员工的详细信息。


-- 查询有奖金的员工的不同工种。


-- 查询所有员工工资和奖金的和。


-- 查询没有奖金或奖金低于100的员工信息。


-- 查询各月倒数第2天入职的员工信息。


-- 查询员工工龄大于或等于10年的员工信息。


-- 查询员工信息，要求以首字母大写的方式显示所有员工的姓名。


-- 查询员工名正好为6个字符的员工的信息。


-- 查询员工名字中不包含字母“S”员工。


-- 查询员工姓名的第2个字母为“M”的员工信息。


-- 查询所有员工姓名的前3个字符。


-- 查询所有员工的姓名，如果包含字母“s”，则用“S”替换。


-- 查询员工的姓名和入职日期，并按入职日期从先到后进行排列。


-- 显示所有的姓名、工种、工资和奖金，按工种降序排列，若工种相同则按工资升序排列。


-- 显示所有员工的姓名、入职的年份和月份，若入职日期所在的月份排序，若月份相同则按入职的年份排序。


-- 查询在2月份入职的所有员工信息。


-- 查询所有员工入职以来的工作期限，用“**年**月**日”的形式表示。


-- 查询至少有一个员工的部门信息。


-- 查询工资比SMITH员工工资高的所有员工信息。


-- 查询所有员工的姓名及其直接上级的姓名。


-- 查询入职日期早于其直接上级领导的所有员工信息。


-- 查询所有部门及其员工信息，包括那些没有员工的部门。


-- 查询所有员工及其部门信息，包括那些还不属于任何部门的员工。


-- 查询所有工种为CLERK的员工的姓名及其部门名称。


-- 查询最低工资大于2500的各种工作。




-- 查询最低工资低于2000的部门及其员工信息。


-- 查询在SALES部门工作的员工的姓名信息。


-- 查询工资高于公司平均工资的所有员工信息。


-- 查询与SMITH员工从事相同工作的所有员工信息。


-- 列出工资等于30号部门中某个员工工资的所有员工的姓名和工资。


-- 查询工资高于30号部门中工作的所有员工的工资的员工姓名和工资。




-- 查询每个部门中的员工数量、平均工资和平均工作年限。
-- 查询从事同一种工作但不属于同一部门的员工信息。
-- 查询各个部门的详细信息以及部门人数、部门平均工资。
-- 查询各种工作的最低工资。
-- 查询各个部门中的不同工种的最高工资。
-- 查询10号部门员工以及领导的信息。
-- 查询各个部门的人数及平均工资。
-- 查询工资为某个部门平均工资的员工信息。
-- 查询工资高于本部门平均工资的员工的信息。
-- 查询工资高于本部门平均工资的员工的信息及其部门的平均工资。
-- 查询工资高于20号部门某个员工工资的员工的信息。
-- 统计各个工种的人数与平均工资。
-- 统计每个部门中各个工种的人数与平均工资。
-- 查询工资、奖金与10 号部门某个员工工资、奖金都相同的员工的信息。
-- 查询部门人数大于5的部门的员工的信息。
-- 查询所有员工工资都大于1000的部门的信息。
-- 查询所有员工工资都大于1000的部门的信息及其员工信息。
-- 查询所有员工工资都在900~3000之间的部门的信息。
-- 查询所有工资都在900~3000之间的员工所在部门的员工信息。
-- 查询每个员工的领导所在部门的信息。
-- 查询人数最多的部门信息。
-- 查询30号部门中工资排序前3名的员工信息。
-- 查询所有员工中工资排在5~10名之间的员工信息。

-- 向emp表中插入一条记录，员工号为1357，员工名字为oracle，工资为2050元，部门号为20，入职日期为2002-- 年5月10日。
-- 向emp表中插入一条记录，员工名字为FAN，员工号为8000，其他信息与SMITH员工的信息相同。
-- 将各部门员工的工资修改为该员工所在部门平均工资加1000。

-- 1、查询82年员工
-- 2、查询32年工龄的人员
-- 3、显示员工雇佣期 6 个月后下一个星期一的日期
-- 4、找没有上级的员工，把mgr的字段信息输出为 "boss"
-- 5、为所有人长工资，标准是：10部门长10%；20部门长15%；30部门长20%其他部门长18%

/* Oracle_练习与答案 */

-- 01. 求部门中薪水最高的人
-- 02. 求部门平均薪水的等级
-- 03. 求部门平均的薪水等级 
-- 04. 雇员中有哪些人是经理人 
-- 05. 不准用组函数，求薪水的最高值 
-- 06. 求平均薪水最高的部门的部门编号 
-- 		组函数嵌套写法(对多可以嵌套一次，group by 只对内层函数有效) 
-- 07. 求平均薪水最高的部门的部门名称 
-- 08. 求平均薪水的等级最低的部门的部门名称 
-- 09. 求部门经理人中平均薪水最低的部门名称
-- 10. 求比普通员工的最高薪水还要高的经理人名称(not in) 
-- 11. 求薪水最高的前5名雇员 
-- 12. 求薪水最高的第6到第10名雇(!important) 
-- 13. 求最后入职的5名员工