### 5-1) Linux(Ubuntu) Docker Container를 구동하기 위한 절차를 쓰시오. <br/> 5-2) 설치된 Ubuntu Container에 Telnet daemon 구동 하는 법을 기술하시오. <br/> 5-3) 한글 사용 설정하는법 <br/> 5-4) Git 사용 설정에 대한 작업절차를 기술하시오. <br/>
<hr/>
## 5-1) Linux(ubuntu) Docker Container 구동법 <br/>
<hr/>

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
> 8. docker run -itd -p 23:23 --name ubt ub_telnet bash
