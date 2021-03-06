# MySQL
数据查询语言 DQL data query language：select
数据操作语言 DML data manipulation language：insert delete update
数据定义语言 DDL data definition language：creat drop alter
事务控制语言 TCL transaction control language： commit、 rollback 
数据控制语言 （DCL-Data Control Language）
    代表关键字： grant revoke
    
#### 导入演示数据；‘；’结束
net stop mysql 
net start mysql

create databae name;
use name;
#先输入source （空格），直接将数据文件，拖入到cmd 打开的mysql程序：D：····
#mysql中：“；”，表示语句结束，直接enter，换行，可以加\c+enter,结束上面语句

show tables;  #显示数据库中表的数量、内容
desc name;    #显示表的结构（表的名称）
sow databases; #mysql 中数据库的具体内容
select version（）； #显示mysql的版本
select database（）；#显示当前使用的数据库 
\q QUIT ctrl+c # 推出mysql
\c 中止某条mysql语句
show tables from name(其他数据库)； 
show create table name(表的名字)； #显示表当初使用的语句

### 查询语句:selcet 语句都不改变原数据库内容，仅仅在显示数据时有影响。
select name（字段名称） from name(表的名字);
select name,name,name from name; 多字段查找
select * from name； 查找所有数据；可读性查；* 先编译（为所有字段名称），在搜索。
select name,name,name*12 from name;
select name,name,name*12 as yearsal from name; 
select name,name,name*12 yearsal from name;
select name,name,name*12 '年薪' from name； 字符串最好用单引号，mysql可用双引号；双引号在Oracle数据库中不适用。

### 带条件查询
<> 或者 ！=
between_and_  或者 >= 3000 and <= 5000
select sal from where sal >=3000 and <= 5000;
select sal from where sal between 3000 and 5000;(前小后大,前后闭区间)
select sal from where sal between ‘A’ and ‘K’； （#可能后区间为开）

select name from name where name=5000; # from name ----where name----select name
select name from name where name='5000';

NULL 不是数值，表示什么也没有，不用=赋值，用 is
select sal from name where name is null; 
select sal from name where name is not null;

### and 优先级高于 or，位于后面优先级也高于or 
select name from name where sal >1800 adn (job = 'dok' or job='df');
in
like '%P%'; % 表示0到n个字符串
‘_A&’； _ 表示任一一个字符串

### order
select name,name from name order by name (asc\desc);
select name,name from name order by name (asc\desc), name ase;
select name,name from name order by 2 (asc\desc);

### 
lower
upper
subster(name,n,n)
trim('  name   ')
length
 
select lower(name) rename from name;
select upper(name) from name;
select subster(name,n,n) from name;
select name from name where subster(name,n,n) = 'A';

### 
round(234.234,2) >>> 234.23
round(234.234)  >>>234
round(234.234,-2) >>>200

select rand();
select round(rand()*100)

ifnull(name,0)
select name + ifnull(name,0) from name;

str_to_date
select name,hiredate from name where hiredate =('12-12-2008','%d-%m-%Y');

date_foramt
format

### 
count()
    count(name)
    count(*)
avg()
max()
min()
sun()








-----------end 
