## Docker의 개념과 구성요소 (image, container, Docker-machine등)에 대해 본인이 이해 한 바를 자유롭게 서술하고, Docker의 설치 과정과 정상 설치를 확인하는 과정을 기술하시오.

<hr/>
<br/>

# Image <br/>
> Docker를 접속하고나서 'docker images'를 치면 [Repository], [Tag], [ID], [Created], [Size]가 나온다. <br/>
> Repository는 다운받은 파일의 이름이라 이야기하고싶다. Window로 치자면 'dockerimages'는 내 다운로드
받은 파일들이 있는 다운로드폴더일 것이다. 그 안에는 내가 설치할수있는(다운받아놓은) install파일들이 있을것이며, 그 목록을
List로 정리해놓은 느낌. Install 파일의 이름 [ex) ubuntu.install] 파일과 같은느낌. 그 파일을 'run'이라는 명령어로 설치해준다.(더블클릭 느낌)
 명렁어에는 설치후 내 파일의 이름을 설정해줄수도, 설치된 뒤 그 파일이 자동으로 실행시킬수있는 명령어를 미리입력해 설치와 동시에 
