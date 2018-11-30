##### Docker를 활용하여 오라클 Express Edition을 설치하는 과정을 기술하시오.

#### 초기설정
###### (window의 경우 oracle VM virtual box를 실행 후 default -> 설정 -> 네트워크 -> 고급 -> 포트포워딩 화면 접속 ->새 포트 추가 후 호스트포트 1521, 게스트포트 1521을 입력한다.)


1. Docker를 접속한다.
2. Docker search oracle을 docker창에 입력. 다운로드 받을 수 있는 리스트들과 그 정보들이 나온다.
3. 그 리스트들 중 official은 대략 프로그램의 정품 혹은 인증을 받은 프로그램이라고 보면 된다.
4. stars는 유저들이 추천한 갯수. 무엇을 다운받아야 할지 모르는 경우에는 official과 stars를 확인해보자.
5. 자신이 원하는 파일이름을 복사하여 'docker pull (원하는 파일이름)'을 입력한다.
		ex) docker pull sath89/oracle-xe-11g
6. 다운로드는 최신버전(latest)로 받아진다. 원하는 버전이 있을경우 버전을 입력해 준다.
		ex) docker pull sath89/oracle-xe-11g:5.7
7. 다운로드 후 입력창에 docker images를 입력. Repository의 항목들이 내가 다운로드 받은 설치파일(install)이라 보면 된다.
8. 프로그램의 설치 파일만 가지고는 실행이 안되듯이, 내가 따로 커맨드를 입력하여 프로그램을 실행시켜준다.
		ex) docker run -d --name oracle -p 8080:8080 -p 1521:1521
   (oracle : 원하는 이름, 8080 -> 오라클관리자포트, 1521 ->  오라클데몬포트)
9. 입력이 오류없이 되었다면, docker ps를 쳐보자.
   (window 아래 작업표시줄에 내가 실행시킨 아이콘들이 보이듯이 docker ps는 내가 실행시켜놓은 프로세스들을 볼 수 있다. 그곳에 Oracle이 있으면 실행 완료.)
10. 실행시켰다면 화면에서 docker exec -it oracle bash를 쳐서 shell을 새로 만들어 사용한다.
