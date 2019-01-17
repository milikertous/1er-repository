insert into table_emp(eid,name,lastname,salary)
values(12323487,'michael','rogers',4000);
insert into table_emp(eid,name,lastname,salary)
values(152934485,'anand','manikutty',5000);
insert into table_emp(eid,name,lastname,salary)
values(222364883,'carol','smith',55000);
insert into table_emp(eid,name,lastname,salary)
values(326587417,'joe','stevens',6500);
insert into table_emp(eid,name,lastname,salary)
values(332154719,'marry_anne','foster',4600);
insert into table_emp(eid,name,lastname,salary)
values(332569843,'george','odonnel',8000);
insert into table_emp(eid,name,lastname,salary)
values(546523478,'john','doe',7000);
insert into table_emp(eid,name,lastname,salary)
values(631231482,'david','smith',5050);
insert into table_emp(eid,name,lastname,salary)
values(654873219,'zacary','efron',6400);
insert into table_emp(eid,name,lastname,salary)
values(745685214,'eric','goldsmith',5080);
insert into table_emp(eid,name,lastname,salary)
values(845657245,'elizabeth','doe',6400);
insert into table_emp(eid,name,lastname,salary)
values(845657246,'kumar','swamy',5800);
select * from table_emp;

insert into table_dept(did,dname,budget,managerid)
values (14,'it',65000,123234877);
insert into table_dept(did,dname,budget,managerid)
values (37,'accounting',15000,222364883);
insert into table_dept(did,dname,budget,managerid)
values(59,'humanresources',240000,745685214);
insert into table_dept(did,dname,budget,managerid)
values(77,'research',55000,546523478);
select * from table_dept;

insert into table_works(eid,did,pct_time)
values(123234877,37,0.20);
insert into table_works(eid,did,pct_time)
values(123234877,14,0.20);
insert into table_works(eid,did,pct_time)
values(123234877,59,0.20);
insert into table_works(eid,did,pct_time)
values(123234877,77,0.90);
insert into table_works(eid,did,pct_time)
values(152934485,14,0.10);
insert into table_works(eid,did,pct_time)
values(152934485,37,1.00);
insert into table_works(eid,did,pct_time)
values(222364883,37,1.00);
insert into table_works(eid,did,pct_time)
values(326587417,59,1.00);
insert into table_works(eid,did,pct_time)
values(332154719,59,1.00);
insert into table_works(eid,did,pct_time)
values(332569843,59,0.60);
insert into table_works(eid,did,pct_time)
values(546523478,37,0.40);
insert into table_works(eid,did,pct_time)
values(631231482,59,0.60);
insert into table_works(eid,did,pct_time)
values(654873219,14,0.40);
insert into table_works(eid,did,pct_time)
values(745685214,77,0.70);
insert into table_works(eid,did,pct_time)
values(845657245,14,0.30);
insert into table_works(eid,did,pct_time)
values(845657246,59,0.50);
select * from table_works;

select count(distinct eid) from table_emp; -- se n'est pas la peine de mettre le distinct car eid c'est un pk
select count(distinct eid) from table_works; ----ne sert a rien ---

select count(distinct dname) from table_dept;
select count(did) from table_dept; ---- did est pk
select max(budget) from table_dept; 


select dname, budget from table_dept where budget in (select max(budget) from table_dept);
select name, lastname, salary from table_emp where salary in (select max(salary) from table_emp);


select max(salary) from table_emp;

select max(salary) from table_emp where salary not in (select max(salary) from table_emp);

select name, lastname from table_emp where eid between '326587417' and '654873219';

select name, lastname,dname from table_emp inner join table_dept on managerid=eid;

select name, age, dname from table_emp inner join table_dept on managerid=eid and (dname='it' or dname='research'); 

select name, lastname, budget, dname from table_emp inner join table_dept on managerid=eid and budget>10000;
