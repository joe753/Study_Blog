### Docker를 활용하여 MySQL 5.7을 설치하는 과정을 기술하시오.
<hr/>

([Question_2]와 마찬가지로 포트포워드를 새로 만들어 호스트, 게스트 포트에 3306을 입력한다)
<hr/>

> 1. 문항 1과 search방법은 동일
> 2. 대중적인 버전을 사용하는것이 좋기 때문에 원하는 파일을 찾아 입력해준다.<br/>
>  ex) docker pull mysqp:5.7    --> 최신버전을 원한다면 ':5.7'을 뺀 docker pull mysql을 입력한다.
> 3. docker images로 내 설치파일을 확인한다.
> 4. 설치파일을 실행시키는 명령어를 입력해준다.<br/>
>  ex) docker run -d -p 3306:3306 -e MYSQL_ROOT_PASSWORD='비밀번호' --name '이름' mysql 5.7 <br/>
> 5. docker ps 입력 후 내가만든 name이 있으면 실행 성공
> 6. mysql5를 이용한 쉘을 하나 띄워준다. <br/>
>  ex) docker exec -it mysql5 bash
> 7. 그 쉘에서 mysql공간으로 접속해준다.
>  ex) mysql -u root -p          root = root권한. 내가 만든 아이디가 있다면 그것을 입력해도 좋다.
