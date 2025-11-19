# 프로세스 목록조회
ps -ef
ps -ef | grep "nginx"

# 패키지관련
# yum - 레드햇 계열 패키지관리도구, apt - 데비안 계열 패키지관리도구
# 패키지 목록 최신화
sudo apt update
# nginx 등 프로그램 설치
sudo apt install nginx
# 프로세스 실행 관리 도구 : systemctl
sudo systemctl start nginx
sudo systemctl stop nginx
#프로세스 강제종료
sudo kill -9 PID(프로세스 ID)

# 특정 도메인의 ip 주소 정보 조회 : DNS 서ㅂ버에 문의
nslookup google.com

# 로컬 ip 정보 조회
ifconfig

# 네트워크 연결 상태 조회
# 일반적으로 ping은 보안상 막아두고 있음
ping IP주소
ping 8.8.8.8

# IP와 포트를 이용해 특정 서버의 특정 프로그램의 통신상태 확인 가능
# 일반적으로 telnet은 막혀있고, 시용하기를 권장하지 않음
telnet IP주소 포트번호
nc -zv  IP주소(또는 도메인) 포트번호

# 원격접속 : 22 port open
ssh 계정명@도메인주소(또는IP주소)

# 원격파일전송 : 22 port open
scp 전송하고자하는파일 원격지주소

# vi편집기로 파일 열기
vi 파일명

# vi 편집기 종료
:wq : 저장 후 종료
:q : 저장하지 않고 종료

# 입력모드 전환
a : 다음 커서부터 입력
i : 현재 커서에서 입력
o : 다음 줄부터 입력

# 명령모드 전환 : esc
x : 한 칸 삭제
dd : 한 줄 삭제
yy : 한 줄 복사
p : 다음 줄에 붙여넣기
G : 맨 끝으로 이동
gg : 맨 앞으로 이동

# 검색
/검색하고자하는문자열 -> 엔터 -> n으로 다음결과로 이동