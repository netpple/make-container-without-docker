# make-container-without-docker

overlay network 실습을 위한 vagrant 환경구성 방법을 설명합니다. 

### 테스트 환경

- 맥 M1,M2(arm64) Sonoma 14.5
- vmware_fusion 13.5.2
- vagrant 2.4.1


### 환경 구성

Git clone
```bash
$ git clone https://github.com/netpple/make-container-without-docker.git
```

VM 생성
```bash
$ cd make-container-without-docker
$ git checkout overlay-nw-vmware_fusion
$ vagrant up
```

VM 확인
```bash
$ vagrant status
```

VM 접속
```bash
### 터미널#1 접속
$ vagrant ssh ubuntu2204

### 터미널#2 접속
$ vagrant ssh ubuntu2204-2

```
