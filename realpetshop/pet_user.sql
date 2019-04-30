create table pet_user(
	userno number(10,0) primary key,
	userid varchar2(20) unique not null,
	password varchar2(50) not null,
	username varchar2(20) not null,
	addr varchar2(50) not null,
	email varchar2(50) unique not null,
	emailcheck varchar2(10) default '0',
	cat varchar2(10), 
	dog varchar2(10),
	num varchar2(10) default '3'
);

select * from pet_user;

create sequence rno_seq;

drop table pet_user;
drop sequence rno_seq;

insert into pet_user(userno,userid,password,username,addr,email,emailcheck,cat,dog,num) 
values(rno_seq.nextVal,'jang1234','1234qwer!','관리자','코리아아이티','ajdzl777@naver.com','1','dog','cat','1');

insert into pet_user(userno,userid,password,username,addr,email,emailcheck,cat,dog,num) 
values(rno_seq.nextVal,'jang12345','1234qwer!','판매자1','코리아아이티','ajdzl77@naver.com','1','dog','cat','2');
insert into pet_user(userno,userid,password,username,addr,email,emailcheck,cat,dog,num) 
values(rno_seq.nextVal,'jang12346','1234qwer!','판매자2','코리아아이티','ajdzl7@naver.com','1','dog','cat','2');

insert into pet_user(userno,userid,password,username,addr,email,emailcheck,cat,dog,num) 
values(rno_seq.nextVal,'jang123','1234qwer!','판매자1','코리아아이티','wkd_wo_gus@naver.com','1','dog','cat','3');

select trim(num) from pet_user;