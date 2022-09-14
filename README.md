# docker-toy-project
도커 스웜 모드 기반 인프라 구성

## 개발 환경
![캡처](https://user-images.githubusercontent.com/75442105/190185585-261a8d61-81c3-4f3e-9a1f-dda2b8975a77.JPG)

## 프로젝트 구조
![KakaoTalk_20220903_233848109](https://user-images.githubusercontent.com/75442105/190185766-4456e501-d5f1-4db5-8542-a6fe6ff24465.jpg)

### L7 로드밸런서  
- 사용자가 /, /blog, /webtoon 으로 들어왔을 때 각각의 Proxy(L4 로드밸런서)로 보내주는 역할을 수행한다.
- 또한, 해당 노드의 8888번 포트로 들어왔을 경우 Harbor 저장소 페이지에 접속할 수 있도록 구성했다.

### L4 로드밸런서  
- Proxy에서 각각의 웹 컨테이너에게 로드밸런서 역할을 수행하여 컨테이너로 보내 웹페이지가 보이도록 한다.

### 매니저 노드  
- 워커 노드에게 명령을 내리는 역할을 해 워커 노드에 컨테이너를 배포할 수 있도록 한다.
- 프로메테우스와 그라파냐와 같은 모니터링 도구를 이용해 워커 노드의 상태와 컨테이너 상태를 모니터링 할 수 있다.

### 워커 노드  
- 매니저 노드에서 내린 명령을 받아 컨테이너를 배포한다. 이때, 이미지는 Github에서 받아오며 주기적으로 자동 업데이트가 가능하며, 이전 상태로 롤백이 가능하다.

## 프로젝트 수행 절차  
![캡처2](https://user-images.githubusercontent.com/75442105/190187994-b59bdc7c-62c3-4724-9ba6-ecc02464160d.JPG)


## 시연 영상
[시연 영상](https://youtu.be/VCmE9YuIp6M](https://youtu.be/VCmE9YuIp6M)
