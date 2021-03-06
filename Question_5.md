### 5-1) Linux(Ubuntu) Docker Container를 구동하기 위한 절차를 쓰시오. <br/> 5-2) 설치된 Ubuntu Container에 Telnet daemon 구동 하는 법을 기술하시오. <br/> 5-3) 한글 사용 설정하는법 <br/> 5-4) Git 사용 설정에 대한 작업절차를 기술하시오. <br/>
<hr/>

## 5-1, 5-2) Linux(ubuntu) Docker Container 구동법 및 Telnet daemon 구동법 
<br/>


> 1. 'ubuntu' image 파일을 설치 -> docker search ubuntu.
> 2. docker pull ubuntu <br/>
> - 원하는 설치파일 "ubuntu" 다운로드. <br/>
> 3. docker run --name ubuntu:latest /bin/echo    --> [/bin/echo] 명령어.
> 4. docker ps -a 명령어 입력 후 내가 입력한 이름의 컨테이너가 생성되었으면 성공.
> 5. docker attach ubuntu -> ubuntu 접속.
> 6. telnet을 ubuntu 접속창 안에서 설치 <br/>
> - sudo apt-get install xinetd telnetd <br/>


> 7. vi /etc/xinetd.d/telnet에 접속하여 telnet 설정
> service telnet <br/>
> { <br/>
>   disable = no <br/>
>   flags = REUSE <br/>
>   socket_type = stream <br/>
>   wait = no <br/>
>   user = root <br/>
>   server = /usr/sbin/in.telnetd <br/>
>   log_on_failure += USERID <br/>
> } <br/>
> /etc/init.d/xinetd restart <br/>
> 8. docker run -itd -p 23:23 --name ubt ub_telnet bash]

<hr/>

## 5-3) 한글사용 설정법
<br/>

> 1. ubuntu (name = ubt) 접속 후 /bin/docker_bash 입력 <br/>
> 2. 새 창이 나오면 아래의 코드 입력 <br/>
> #!/bin/sh <br/>
> /etc/init.d/xinetd restart <br/>
> export LANGUAGE=ko <br/>
> LC_ALL=ko_KR.UTF-8 bash <br/>
> 3. [esc] 를 누른 뒤 [:wq <-- 저장후 종료] 입력
> 4. 한글화 완료
<hr/>

## 5-4) Git 사용 설정법
<br/>

> 1. ubx (ubuntu)에서 apt-get install git 입력 --> 인스톨
> 2. git config list 를 입력 후 [global username] , [global useremail] 란에 입력이 아무것도 안되어있을 시 로그인을 해준다.
> 3. 아래는 git 로그인 방법이다. <br/>
> - git config --global user.name <github-username>
> - git config --global user.email <email>
> 4. git config credential.helper store 입력
> 5. git clone <github-url>  --> github에서 복사하고싶은 repository url을 복사, 붙여넣기하여 클론한다.
