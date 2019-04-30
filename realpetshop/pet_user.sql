create table pet_user(
	userno number(10,0) not null,
	userid varchar2(20) unique not null,
	password varchar2(50) not null,
	username varchar2(20) not null,
	addr varchar2(50) not null,
	email varchar2(50) unique not null,
	emailcheck varchar2(10),
	cat varchar2(10), 
	dog varchar2(10)
);

select * from pet_user;

create sequence rno_seq;

drop table pet_user;
drop sequence rno_seq;

insert into pet_user(userno,userid,password,username,addr,email,emailcheck,cat,dog) 
values(rno_seq.nextVal,'jang1234','1234qwer!','장재현','순천 연향동','wkd_wo_gus@naver.com','dog','cat',null);