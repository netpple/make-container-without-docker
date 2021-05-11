# make-container-without-docker

overlay network 실습을 위한 vagrant 환경구성 방법을 설명합니다. 

### 환경 구성

Git clone
```bash
$ git clone https://github.com/netpple/make-container-without-docker.git
```

VM 생성
```bash
$ cd make-container-without-docker
$ git checkout overlay-nw
$ vagrant up
```

VM 확인
```bash
$ vagrant status
```

VM 접속
```bash
### 터미널#1 접속
$ vagrant ssh ubuntu1804

### 터미널#2 접속
$ vagrant ssh ubuntu1804-2

```
