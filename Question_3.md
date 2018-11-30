## 오라클과 MySQL에서 데이터베이스(Schema)와 사용자(USER)를 생성하는 과정을 각각 쓰시오.(툴 사용가능)
<hr/>

# 오라클

> 1. sql Developer를 설치한다. (오라클을 더욱더 쉽고 간편하게 사용할수 있는 툴) <br/>
  https://www.oracle.com/database/technologies/appdev/sql-developer.html
> 2. Developer를 실행 후 화면 가운데 [수동으로 접속 생성] 클릭
> 3. 접속이름과 사용자이름 비밀번호를 입력후 포트는 앞의 1번문항 오라클설정과 같이 1521을 사용한다.
> 4. 테스트버튼 클릭 후 완료되면 저장한 뒤 접속한다.
> 5. 좌측 접속창에 내가 만든 아이디의 데이터베이스가 있다. 그 아이콘을 더블클릭한다.
> 6. 여러가지의 카테고리들이 나온다. 내리다보면 [다른사용자]라는 항목이 나온다. 그항목을 마우스 우클릭, 사용자생성을 누른다.
> 7. 사용자이름, 새 비밀번호를 입력. 기본테이블스페이스는 users.
> 8. 그 후 창 윗부분에 부여된 롤, 시스템권한의 세부항목들을 원하는대로 선택한다.
> 9. 할당량 또한 무제한 또는 할당하고자하는 메모리의 크기를 직접 입력해준다. 그러고나서 적용하기를 누르면 테이블 만들기 완료.
<hr/>

# MYSQL
(순서 = MYSQL접속 -> DB생성 -> USER와 HOST생성)

> 1. docker 실행
> 2. docker start mysql5 (구동)
> 3. docker exec -it mysql5 bash (명령창 띄우기)
> 4. mysql -u root -p (mysql 접속)
> 5. db를 생성해준다.<br/>
>  ① create database [doodb];         []<- 원하는 이름 <br/>
>  ② show databases;   -> 내가 입력한 db이름이 있는지 확인. <br/>
>  ③ use [doodb] -> 내가 만든 db에 접속 <br/>
>  ④ show tables;    -> doodb 안의 table 확인 (처음만들었으므로 empty가 나옴) <br/>
> 6. user 생성 <br/>
> ▶ create user [dooo]@'%' identified by "비밀번호"      <br/>
> ▶ root의 모든 권한을 새로 생성한 DB에게 주어버리면 삭제하거나 다른것들을 만질수 있기 때문에 보안상 특정 DB권한을 부여해준다. <br/>
> ▶ grant all privileges on [doodb].* to 'dooo'@'%'; <br/>
> 7. 적용(commit과 비슷)     flush privileges;
