create table pet_user(
	userno number(10,0) primary key,
	userid varchar2(20) not null,
	password varchar2(50) not null,
	username varchar2(20) not null,
	address varchar2(50) not null,
	email varchar2(50) not null,
	cat varchar2(4), 
	dog varchar2(4)
	
	  
);

select * from pet_user;

create sequence rno_seq;

drop table pet_user;
drop sequence rno_seq;

insert into pet_user(userno,userid,password,username,address,email,cat,dog) 
values(rno_seq.nextVal,'jang1234','1234qwer!','장재현','순천 연향동','wkdwogus55@gmail.com','cat',null);