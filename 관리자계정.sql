create user user1 identified by "1234";

alter session set "_ORACLE_SCRIPT" = true;
-- 사용자 계정 생성(관리자계정에서만 생성가능)
-- 계정명은 대소문자를 가리지 않음
-- [표현법] create user 계정명 identified by 비밀번호;
create user tjoeun identified by "1234";

-- 권한생성
-- [표현법] grant 권한1, 권한2, ... to 계정명;
grant CONNECT, CREATE TABLE to tjoeun;

-- 용량에 제한 없이 테이블 스페이스 할당하는 경우
alter user tjoeun default TABLESPACE users quota unlimited on users;

-- 특정 용량만큼 테이블 스페이스 할당하는 경우
--alter user tjoeun QUOTA 30M on users;

/*
-- 일반적으로 사용자를 생성하려면
alter session set "_ORACLE_SCRIPT" = true;
create user 계정명 identified by "비밀번호";
grant CONNECT, RESOURCE to 계정명;
alter user 계정명 default TABLESPACE users quota unlimited on users;
*/