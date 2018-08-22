drop table b_board;
drop sequence seq_board_no;
create sequence seq_board_no ;
create table b_board (
        id              varchar2(20)    not null
    ,   board_no        number(5)       primary key
    ,   view_cnt        number(5)       default 0
    ,   title           varchar2(2000)  not null
    ,   content         varchar2(4000)  not null
    ,   category_name   varchar2(100)   not null
    ,   like_cnt        number(5)       default 0
    ,   reg_date        date            default sysdate
);

drop table board_tag;
drop sequence seq_tag_no;
create sequence seq_tag_no;
create table board_tag (
        tag_no      number(5)   primary key
    ,   board_no    number(5)   not null
    ,   tag_name    varchar2(20) not null
);

drop table board_category;
drop sequence seq_board_category_no;
create sequence seq_board_category_no ;
create table board_category (
        category_no         number(10)      primary key
    ,   id                  varchar2(20)    not null
    ,   category_name       varchar2(50)    not null
);

drop table board_category_depth;
drop sequence seq_board_category_depth_no;
create sequence seq_board_category_depth_no ;
create table board_category_depth (
        category_depth_no         number(5)      primary key
    ,   id                        varchar2(20)   not null
    ,   category_name             varchar2(50)   not null    
    ,   category_depth_name       varchar2(20)   not null    
);

drop table reply;
drop sequence seq_reply_no;
create sequence seq_reply_no;
create table reply (
        reply_no    number(5)      primary key
    ,   board_no    number(5)      not null
    ,   id          varchar2(20)   not null    
    ,   content     varchar2(500)  not null    
    ,   reg_date    date           default sysdate
);

drop table friend;
drop sequence seq_friend_no;
create sequence seq_friend_no;
create table friend (
        friend_no   number(5)      primary key
    ,   id          varchar2(20)   not null    
    ,   friend      varchar2(20)   not null
    ,   reg_date    date           default sysdate
);

drop table friend_req;
drop sequence seq_friend_req_no;
create sequence seq_friend_req_no;
create table friend_req (
        req_no      number(5)         primary key
    ,   target_id   varchar2(20)   not null    
    ,   req_id      varchar2(20)   not null
    ,   reg_date    date           default sysdate
);

drop table blog;
drop sequence seq_blog_no;
create sequence seq_blog_no;
create table blog (
        id              varchar2(20)    primary key
    ,   blog_no         number(5)       
    ,   visit_today     number(5)       default 0
    ,   visit_total     number(5)       default 0
    ,   reg_date        date           default sysdate
);

select * from b_board;
select * from board_tag;
select * from board_category;
select * from board_category_depth;
select * from reply;
select * from friend;
select * from friend_req;
select * from blog;

-----------------------------------------------------------------------------------------------
--------------------------------- B_BOARD -----------------------------------------------------
-----------------------------------------------------------------------------------------------

select id, board_no, view_cnt, title, content, category_name, like_cnt, reg_date from b_board;

insert into b_board(id, board_no, title, content, category_name) values ('qrtz', seq_board_no.nextval,'�ȳ�', '�ϼ���', '���');
insert into b_board(id, board_no, title, content, category_name) values ('sad', seq_board_no.nextval,'������� �̱ۺ��� ����', 'eagle', '���');
insert into b_board(id, board_no, title, content, category_name) values ('qrtz', seq_board_no.nextval,'�ȳ�', '�ϼ���', '���');
insert into b_board(id, board_no, title, content, category_name) values ('qrtz', seq_board_no.nextval,'�ȳ�', '�ϼ���', '���');
insert into b_board(id, board_no, title, content, category_name) values ('sad', seq_board_no.nextval,'������� �̱ۺ��� ����', 'eagle', '���');
insert into b_board(id, board_no, title, content, category_name) values ('sad', seq_board_no.nextval,'������� �̱ۺ��� ����', 'eagle', '���');

-----------------------------------------------------------------------------------------------
--------------------------------- board_tag ---------------------------------------------------
-----------------------------------------------------------------------------------------------

select tag_no, board_no, tag_name from board_tag;
select * from board_tag;

insert into board_tag(tag_no, board_no, tag_name) values (seq_tag_no.nextval, 1, '����');
insert into board_tag(tag_no, board_no, tag_name) values (seq_tag_no.nextval, 1, '�Լ����̶��');
insert into board_tag(tag_no, board_no, tag_name) values (seq_tag_no.nextval, 1, '��');
insert into board_tag(tag_no, board_no, tag_name) values (seq_tag_no.nextval, 2, '����');
insert into board_tag(tag_no, board_no, tag_name) values (seq_tag_no.nextval, 2, '�������̶��');
insert into board_tag(tag_no, board_no, tag_name) values (seq_tag_no.nextval, 2, '��');
insert into board_tag(tag_no, board_no, tag_name) values (seq_tag_no.nextval, 2, '����');
insert into board_tag(tag_no, board_no, tag_name) values (seq_tag_no.nextval, 2, '�������̶��');
insert into board_tag(tag_no, board_no, tag_name) values (seq_tag_no.nextval, 2, '��');

-----------------------------------------------------------------------------------------------
--------------------------------- board_category ----------------------------------------------
-----------------------------------------------------------------------------------------------

select category_no, id, category_name from board_category;

insert into board_category(category_no, id, category_name) values(seq_board_category_no.nextval, 'qrtz7950', '���');
insert into board_category(category_no, id, category_name) values(seq_board_category_no.nextval, 'qrtz7950', '�ϻ�');
insert into board_category(category_no, id, category_name) values(seq_board_category_no.nextval, 'qrtz7950', '���');
insert into board_category(category_no, id, category_name) values(seq_board_category_no.nextval, 'qrtz7950', 'ī�װ�');
insert into board_category(category_no, id, category_name) values(seq_board_category_no.nextval, 'bmkwak22', '���');
insert into board_category(category_no, id, category_name) values(seq_board_category_no.nextval, 'bmkwak22', '�ϻ�');
insert into board_category(category_no, id, category_name) values(seq_board_category_no.nextval, 'bmkwak22', '���');
insert into board_category(category_no, id, category_name) values(seq_board_category_no.nextval, 'bmkwak22', 'ī�װ�');
insert into board_category(category_no, id, category_name) values(seq_board_category_no.nextval, 'asrbtjd', '���');
insert into board_category(category_no, id, category_name) values(seq_board_category_no.nextval, 'asrbtjd', '�ϻ�');
insert into board_category(category_no, id, category_name) values(seq_board_category_no.nextval, 'asrbtjd', '���');
insert into board_category(category_no, id, category_name) values(seq_board_category_no.nextval, 'asrbtjd', 'ī�װ�');

-----------------------------------------------------------------------------------------------
--------------------------------- board_category_depth ----------------------------------------
-----------------------------------------------------------------------------------------------

select category_depth_no, id, category_name, category_depth_name from board_category_depth;

insert into board_category_depth(category_depth_no, id, category_name, category_depth_name) values(seq_board_category_depth_no.nextval, 'asrbtjd', 'ī�װ�', 'ī��');
insert into board_category_depth(category_depth_no, id, category_name, category_depth_name) values(seq_board_category_depth_no.nextval, 'asrbtjd', 'ī�װ�', '��');
insert into board_category_depth(category_depth_no, id, category_name, category_depth_name) values(seq_board_category_depth_no.nextval, 'asrbtjd', 'ī�װ�', '����');
insert into board_category_depth(category_depth_no, id, category_name, category_depth_name) values(seq_board_category_depth_no.nextval, 'qrtz7950', 'ī�װ�', 'ī��');
insert into board_category_depth(category_depth_no, id, category_name, category_depth_name) values(seq_board_category_depth_no.nextval, 'qrtz7950', 'ī�װ�', '��');
insert into board_category_depth(category_depth_no, id, category_name, category_depth_name) values(seq_board_category_depth_no.nextval, 'qrtz7950', 'ī�װ�', '����');
insert into board_category_depth(category_depth_no, id, category_name, category_depth_name) values(seq_board_category_depth_no.nextval, 'bmkwak22', 'ī�װ�', 'ī��');
insert into board_category_depth(category_depth_no, id, category_name, category_depth_name) values(seq_board_category_depth_no.nextval, 'bmkwak22', 'ī�װ�', '��');
insert into board_category_depth(category_depth_no, id, category_name, category_depth_name) values(seq_board_category_depth_no.nextval, 'bmkwak22', 'ī�װ�', '����');

-----------------------------------------------------------------------------------------------
--------------------------------- board_reply -------------------------------------------------
-----------------------------------------------------------------------------------------------

select reply_no, board_no, id, content, reg_date from reply;

insert into reply(reply_no, board_no, id, content) values(seq_reply_no.nextval, 1, 'qrtz7950', '�����������Ϥ��K');
insert into reply(reply_no, board_no, id, content) values(seq_reply_no.nextval, 1, 'qrtz7950', '�����������Ϥ��K');
insert into reply(reply_no, board_no, id, content) values(seq_reply_no.nextval, 1, 'qrtz7950', '�����������Ϥ��K');
insert into reply(reply_no, board_no, id, content) values(seq_reply_no.nextval, 2, 'bmkwak22', '�����������Ϥ��K');
insert into reply(reply_no, board_no, id, content) values(seq_reply_no.nextval, 2, 'bmkwak22', '�����������Ϥ��K');
insert into reply(reply_no, board_no, id, content) values(seq_reply_no.nextval, 2, 'bmkwak22', '�����������Ϥ��K');
insert into reply(reply_no, board_no, id, content) values(seq_reply_no.nextval, 3, 'asrbtjd', '�����������Ϥ��K');
insert into reply(reply_no, board_no, id, content) values(seq_reply_no.nextval, 3, 'asrbtjd', '�����������Ϥ��K');
insert into reply(reply_no, board_no, id, content) values(seq_reply_no.nextval, 3, 'asrbtjd', '�����������Ϥ��K');

-----------------------------------------------------------------------------------------------
--------------------------------- friend -----------------------------------------------------
-----------------------------------------------------------------------------------------------

select friend_no, id, friend, reg_date from friend;

insert into friend(friend_no, id, friend) values(seq_friend_no.nextval, 'qrtz', 'asrbtjd');
insert into friend(friend_no, id, friend) values(seq_friend_no.nextval, 'asrbtjd', 'qrtz');

-----------------------------------------------------------------------------------------------
--------------------------------- friend_req --------------------------------------------------
-----------------------------------------------------------------------------------------------

select req_no, target_id, req_id, reg_date from friend_req;

insert into friend_req(req_no, target_id, req_id) values(seq_friend_req_no.nextval, 'bmkwak22', 'qrtz7950');
insert into friend_req(req_no, target_id, req_id) values(seq_friend_req_no.nextval, 'bmkwak22', 'asrbtjd');

-----------------------------------------------------------------------------------------------
--------------------------------- blog --------------------------------------------------------
-----------------------------------------------------------------------------------------------

select id, blog_no,visit_today, visit_total, reg_date from blog;

insert into blog(id, blog_no) values('qrtz7950', seq_blog_no.nextval);
insert into blog(id, blog_no) values('asrbtjd', seq_blog_no.nextval);
insert into blog(id, blog_no) values('bmkwak22', seq_blog_no.nextval);

commit;