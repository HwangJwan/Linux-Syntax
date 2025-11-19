# 현재 위치 경로를 출력
pwd

# 현재 위치에서 파일 및 폴더 목록 조회
ls 

# 목록조회 자세히
ls -l

# 목록조회 자세히 + 숨김 파일까지 조회
ls -al

# 목록조회 자세히 + 숨김 파일까지 조회 + 오래된 순 정렬
ls -alrt

# juwan_dir 이름의 디렉토리 생성
mkdir juwan_dir 

# juwan_dir 디렉토리로 이동
cd juwan_dir

# 상위 디렉토리로 이동
cd ..  (cd ../)

# 루트 디렉토리로 이동 (최상위 디렉토리 : root)
cd /

# 직전 디렉토리로 이동
cd -

# 홈 경로로 이동 (/home/본인 계정 폴더)
cd

# 상대경로와 절대경로
# 상데경로: cd ../../
# 절대경로: cd /home

# 자동완성 tab

# 파일 내용을 터미널 창에 출력
cat first-file.txt

# 파일 내용 편집기로 열기 : nano , vi
nano first_file.txt

# 파일 내용 상위 10줄 출력
head first_file.txt

# 파일 내용 하위 10줄 출력
tail first_file.txt

# 파일 내용 하위 n줄 출력
tail -숫자 first_file.txt

# 파일 내용 실시간 조회
tail -f first_file.txt

# 도스키(화살표) 위/아래 -> 이전 명령어 조회

# 이전 실행 명령어 전체 조회
history

# 터미널 창에 보이는 명령어 내역 모두 지우기
clear

# 입력 중인 명령어 취소
Ctrl + c

# 파일 삭제 -f - 묻지 않고 삭제
rm first_file.txt

# 폴더 쩨 삭제
rm -r first_file.txt

# 터미널 창에 입력한 문자열 출력
echo "hello world"

# echo를 통해 파일에 내용 입력 가능
# > : 덮어쓰기, >> : 추가모드
echo "hello world" > seond_file.txt

# 복사 명령어 (폴더 복사 시에는 -r 옵션)
# cp 복사 대상 복사 될 파일명
cp first_file.txt first_file_copy.txt

# 파일 이동 명령어
mv 이동대상파일 경로/이동될파일명
# 현재폴더에서 파일명 변경
mv second_file.txt ./third_file.txt
#상위폴더로 파일 이동
mv second_file.txt ../ 

# 파일 내에서 문자열 찾기
# r : 디렉토리 내 n : 라인 넘버 출력 i : 대소문자구분X
grep -rni "hello" .

# 이름으로 파일 또는 디렉토리 찾기
find . -name "*.txt"
find . -type f : file 형태 찾기

# find와 grep 혼용
find . -name "*.txt" grep -rni "hello"
# | xargs : 왼쪽 실행문 결과값을 오른쪽의 입력값으로
 find . -name "*.txt" | xargs grep -rni "hello"
 aarg = argues = 인수값 = input 값
 find . -name "*.txt" -exec grep -rni "hello" {} \;
-exec와 중괄호 같이 사용
{}는 find로 찾은 결과가 담기는 공간
중괄호에 내의 결과에 대해 exec뒤를 실행 
\;는 끝나는문법

# type : file 이름 first로 시작하는 파일 찾아서
# 파일 안에 "hello"가 들어있는 문장 찾기