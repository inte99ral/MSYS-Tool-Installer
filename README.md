# MSYS Tool Installer

## About

A connection tool between Powershell and MSYS shell

## Feature

- 0.0.1v only for powershell. cmd is not supported yet
- 윈도우 터미널에서 MSYS 쉘에 빠른 접근
  - msys
- MSYS 경로의 영속적인 변수화 Persistent Variable
  - msys -get -path
- 크로스플랫폼 개발시 MSYS 환경변수 등록 및 단일화
  - msys -get

## How to install

&nbsp; 이 MsysToolInstaller.exe 은 단순히 powershell 의 $PROFLIE 에 매크로 함수 msys 를 집어넣는 역할만 합니다. 만일 exe 가 powershell $PROFILE 파일에 접근하는 것이 불쾌하다면 직접 코드를 $PROFLIE 에 입력하셔도 똑같은 기능을 사용할 수 있습니다.

### 0. Set powershell

&nbsp; 파워쉘은 기본값으로 Restricted 를 실행정책으로 유지합니다.

&nbsp; Restricted 실행정책은 모든 스크립트 실행을 차단합니다. powershell 의 $PROFLIE 에 매크로 함수가 구동되기 위해서는 실행정책을 바꿔주셔야 합니다.

&nbsp; powershell 을 관리자 권한으로 키고 다음의 명령어를 입력해주세요.

```powershell
Set-ExecutionPolicy RemoteSigned -Scope LocalMachine -Force
```

### 1. Install MSYS2

&nbsp; MSYS Tool 은 MSYS2 shell 경로를 powershell 와 이어주는 것 뿐이기 때문에. 별도로 MSYS2 설치를 필요로 합니다.

&nbsp; 64비트 환경의 MSYS, MSYS2는 [공식 사이트](https://www.msys2.org/)에서 설치파일을 다운로드 받을 수 있습니다.

&nbsp; 디폴트 경로 또는 별개로 설치한 경로를 기억해주세요.

### 2. Install MsysToolInstaller.exe

&nbsp; release 에서 MsysToolInstaller.exe 를 설치하고 실행해주세요.

### 3. Run MsysToolInstaller.exe

- Run MsysToolInstaller.exe
- powershell 에서 확인 msys -h

## How to use
