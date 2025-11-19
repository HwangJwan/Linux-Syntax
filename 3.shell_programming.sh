# 쉘 스크립트는 반드시 .sh 확장자
# 쉘 스크립트는 실행할때 ./myscript.sh
# 실행을 위해서는 실행권한(x) 필요
#예시
touch myscript.sh
nano myscript.sh
echo "hello world"
chmod u+x myscript.sh
./myscript.sh

# 실습1
# myscript2 쉘스크립트파일 생성
#터미널 창에 script sart라는 문구 출력

# 홈디렉토리에서 mydir이라는 폴더 생성

# mydir로 이동해서 file1.txt, file2.txt 파일생성

#file1.txt에는 hello from file1이라는 문구 입력
#file2.txt에는 hello from file2이라는 문구 입

# 터미널 창에 script end라는 문구 생성

# 실습2
# myscript2 생성
echo script2 start
# 홈디렉토리에 my dir 이동(절대경로)
cd /home/juwan/mydir
# file1.txt파일의 백업본 생성 이름은 file1_backup.txt
cp file1.txt file1_backup.txt
# file2.txt파일의 백업본 생성 이름은 file2_rename.txt로변경
mv file2.txt file2_rename.txt
# script2 end 출력 
echo script2 end

# if문   
if [ 1 ~gt 2 ]; then
   echo "hello world"
else
   echo "hello world2"
fi

# 변수 선언 및 파일/디렉토리 검사
file_name=first_file.txt
if [ -f "$file_name" ]; then
   echo "$file_name file exists"
else
   echo "$file_name file doesn't exists"
fi

# for문
for a in {1..100}
do
  echo "hello world $a"
done

# for문과 파일/디렉토리 목록조회
for a in *
do
  echo "$a"
done

# for문을 통해 변수값을 증가
count=100
for a in {1..100}
do
   let count=count+1
done
   echo "count value is $count"