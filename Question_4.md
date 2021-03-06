## Docker의 개념과 구성요소 (image, container, Docker-machine등)에 대해 본인이 이해 한 바를 자유롭게 서술하고, Docker의 설치 과정과 정상 설치를 확인하는 과정을 기술하시오.

<hr/>
<br/>

# Image <br/>
> Docker를 접속하고나서 'docker images'를 치면 [Repository], [Tag], [ID], [Created], [Size]가 나온다.
Repository는 다운받은 파일의 이름이라 이야기하고싶다. Window로 치자면 'dockerimages'는 내 다운로드
받은 파일들이 있는 다운로드폴더일 것이다. 그 안에는 내가 설치할수있는(다운받아놓은) install파일들이 있을것이며, 그 목록을
List로 정리해놓은 느낌. Install 파일의 이름 [ex) ubuntu.install] 파일과 같은느낌. 그 파일을 'run'이라는 명령어로 설치해준다.(더블클릭 느낌)
 명렁어에는 설치후 내 파일의 이름을 설정해줄수도, 설치된 뒤 그 파일이 자동으로 실행시킬수있는 명령어를 미리입력해 설치와 동시에 실행해준다. 
<hr/>

# Container <br/>
> 처음에 서버라는 말만 들었을 대에는 전혀 감이 오지 않았다. 서버를 말로만 들어보았지, 서버에서 무엇을 하고 서버에 관한 영상도 본적이 없기
때문에 아직도 아리송하다. Container가 서버와 비슷한 개념이라고 했을때에는 너무나 추상적인 이야기가 아닌가 싶었다.
Docker를 사용하고 Container를 만들고 활용하다보니 간단하게 생각을 해보는게 좋겠다는 느낌이 들었다. 전문지식이 없는 나로써
이론적으로 받아들이기는 너무 힘들었다. <br/>
#### 고민끝에 내린 Container가 무엇인가? <br/>
> 나는 땅에 비유를 해보고싶다. 만약 내가 가진 땅이 1000평이라면 그 땅을 나누어서사용할수도, 한가지 목적으로 사용할수도있다.
땅을 갈라서 100평 100평 200평 이렇게 나누어 집을짓고 농사를 짓듯이, 원하는 할당량으로 나누어 원하는대로 사용하는것이다. <br/>
땅을 사용하다가 1000평중 사용하지 않는 남은 땅을 다른사람에게 사용하라고 나누어줄 수도 있다. container 또한 그러하다.<br/>
그리고 그사람 또한 받은땅 안에서 땅을 사용하고 남은 부분을 다른사람에게 나누어 줄 수 있듯이 Container도 container안에 또다른 container를 만들수도,
그 container를 복사할수도있다. 그 나눈 땅에 이름도 지어주고, 나눈 땅마다 역할이 같을수도, 다를수도 있다.
<hr/>

# Docker machine <br/>
> 우리가 지금 만지고있는 컴퓨터의 OS는 Window. 하지만 docker라는 프로그램 기반은 Linux이다. <br/>
window라는 나라  [ex)한국]과 Linux라는 나라 [ex)미국].    <br/>
Docker machine은 이 두나라의 소통(언어,환경)을 도와주는 번역기 같은 존재라 생각한다.<br/>
서로 언어를 모른다면 번역기로 바꿔주면서 이야기하면 되는것이 아닌가? <br/>
네트워크 호스트포트는 나라간의 국제전화번호로 설정해준다고 보면 된다.<br/>
우리나라 국가번호 (82) 미국 (1) 이 두개의 국가번호를 연결해주는 포트번호가 80인것이다.
그렇게 연결을 해준다면 멀리서도 자동번역, 통화가 가능해지는것이다. 그렇게 연결하여 서로 다른 OS를 
사용할수 있게 해주는것이 Docker machine인 것이다.
