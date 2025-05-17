# MSYS Tool Installer

## About

A connection tool between Powershell and MSYS shell

## Feature

- Only for powershell. cmd is not supported yet
- 윈도우 터미널에서 MSYS 쉘에 빠른 접근
  - msys
- MSYS 경로의 영속적인 변수화 Persistent Variable
  - msys -get -path
- 크로스플랫폼 개발시 MSYS 환경변수 변환 및 단일화
  - msys -get

## How to install

&nbsp; 이 MsysToolInstaller.exe 은 단순히 powershell 의 $PROFLIE 에 매크로 함수 msys 를 집어넣는 역할만 합니다. 만일 exe 가 powershell $PROFILE 파일에 접근하는 것이 불쾌하다면 직접 다음의 코드를 $PROFLIE 에 입력하셔도 됩니다.

### 1. Install MSYS2

&nbsp; 본 매크로는 MSYS2 shell 경로를 powershell 와 이어주는 것 뿐이기 때문에. 별도로 MSYS2 설치를 필요로 합니다.

&nbsp; 64비트 환경의 MSYS, MSYS2는 [공식 사이트](https://www.msys2.org/)에서 설치파일을 다운로드 받을 수 있습니다.

&nbsp; 디폴트 경로 또는 별개로 설치한 경로를 기억해주세요.

### 2. Install MsysToolInstaller.exe

&nbsp; release 에서 MsysToolInstaller.exe 를 설치하고 실행해주세요.

### 3. Run MsysToolInstaller.exe

- Run MsysToolInstaller.exe
- powershell 에서 확인 msys -h

## How to use
