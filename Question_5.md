# 

> 1. 'ubuntu' image 파일을 설치 -> docker search ubuntu.
> 2. docker pull ubuntu <br/>
> - 원하는 설치파일 "ubuntu" 다운로드. <br/>
> 3. docker run --name ubuntu:latest /bin/echo    --> [/bin/echo] 명령어.
> 4. docker ps -a 명령어 입력 후 내가 입력한 이름의 컨테이너가 생성되었으면 성공.
> 5. docker attach ubuntu -> ubuntu 접속.
> 6. telnet을 ubuntu 접속창 안에서 설치 <br/>
> - sudo apt-get install xinetd telnetd
> 7. vi /etc/xinetd.d/telnet에 접속하여 telnet 설정<br/>
<br/>
> service telnet
> {
>   disable = no
>   flags = REUSE
>   socket_type = stream
>   wait = no
>   user = root
>   server = /usr/sbin/in.telnetd
>   log_on_failure += USERID
> }
> /etc/init.d/xinetd restart
<br/>
<br/>
> 8. docker run -itd -p 23:23 --name ubt ub_telnet bash
