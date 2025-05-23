# MSYS Tool Installer

## About

A connection tool between Powershell and MSYS shell

## Feature

- 0.0.1v only for powershell. cmd is not supported yet
- Quick Access to MSYS Shell from Windows PowerShell
- Persistent Variable Assignment for MSYS Path
- Updating and Unifying Environment Variables for Cross-Platform Development

## How to install

> [!NOTE]
>
> &nbsp; MSYS-Tool-Installer.exe 은 단순히 [code.ps1](./dev/code.ps1)을 구동하는 역할만을 수행합니다. 걱정되신다면 이 설치 과정을 겪지 않고 code.ps1 파일을 직접 입력하여 실행하셔도 됩니다.

> [!NOTE]
>
> &nbsp; [code.ps1](./dev/code.ps1)은 powershell 의 $PROFLIE 에 매크로 함수 msys 를 집어넣는 역할만을 수행합니다. ps1 코드가 powershell 의 $PROFILE 파일에 접근하는 것이 불쾌하시다면 직접 코드를 $PROFLIE 에 입력하셔도 똑같은 기능을 사용할 수 있습니다.

### 0. Set powershell

&nbsp; 파워쉘은 기본값으로 Restricted 를 실행정책으로 유지합니다.

&nbsp; Restricted 실행정책은 모든 스크립트 실행을 차단합니다. powershell 의 $PROFLIE 에 매크로 함수가 구동되기 위해서는 실행정책을 바꿔주셔야 합니다.

&nbsp; powershell 을 관리자 권한으로 실행해주세요. 다음의 방법 중 하나로 쉽게 접근할 수 있습니다.

- 작업표시줄 윈도우 로고에 우클릭하여 퀵링크 메뉴를 열고 터미널(관리자)를 선택
- 또는, `win + x` 단축키로 퀵링크 메뉴를 열고 터미널(관리자)를 선택
- 또는, `win + r` 실행창에서 `powershell` 입력 후, `Start-Process powershell -Verb RunAs` 명령어로 관리자권한으로 재실행

<center>
<img alt="00" src="./doc/asset/00.png" style="max-width: 60%; height: auto;" />
</center>

<hr />
<br />

&nbsp; powershell 을 관리자 권한으로 키고 다음의 명령어를 입력해주세요.

```powershell
Set-ExecutionPolicy RemoteSigned -Scope LocalMachine -Force
```

<center>
<img alt="01" src="./doc/asset/01.png" style="max-width: 60%; height: auto;" />
</center>

&nbsp; Get-ExecutionPolicy 명령어로 제대로 변경되었는지 확인할 수 있습니다.

### 1. Install MSYS2

&nbsp; MSYS Tool 은 MSYS2 shell 경로를 powershell 와 이어주는 것 뿐이기 때문에. 별도로 MSYS2 설치를 필요로 합니다.

&nbsp; 64비트 환경의 MSYS, MSYS2는 [공식 사이트](https://www.msys2.org/)에서 설치파일을 다운로드 받을 수 있습니다.

<center>
<img alt="02" src="./doc/asset/02.png" style="max-width: 60%; height: auto;" />
</center>

<hr />
<br />

&nbsp; 설치할 때, 설치한 경로를 기억해주셔야 합니다.

<center>
<img alt="03" src="./doc/asset/03.png" style="max-width: 60%; height: auto;" />
</center>

<br />

### 2. Install MSYS-Tool-Installer

&nbsp; release 에서 최신 버전의 "MSYS-Tool-Installer.exe" 를 설치하고 실행해주세요.

<center>
<img alt="04" src="./doc/asset/04.png" style="max-width: 60%; height: auto;" />
</center>

<hr />
<br />

&nbsp; 디지털 서명 받지 않은 파일이기에 설치를 하려고 하면 경고할 것 입니다.

- `···` -> `유지` -> `더보기` -> `그래도 계속` 를 눌러 그대로 진행할 수 있습니다.
- "MSYS-Tool-Installer.exe" 는 어디까지나 code.ps1 을 실행하는 exe 파일에 불과합니다. 걱정되신다면 이 설치 과정을 겪지 않고 [dev/code.ps1](./dev/code.ps1) 파일을 직접 복사하여 실행해도 됩니다.

<center>
<img alt="05" src="./doc/asset/05.png" style="max-width: 60%; height: auto;" />
</center>

### 3. Run MSYS-Tool-Installer

- Run MsysToolInstaller.exe
- powershell 에서 확인 msys -h

## How to use
