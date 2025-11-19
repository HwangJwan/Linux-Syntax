# 사용자 추가 및 비밀번호 지정
sudo useradd newuser1
sudo passwd newuser1
# sudo : root 권한으로 실행 -> root 비밀번호가 아닌, 현재 사용자의 비밀번호 입력

# su : 사용자 변경 -> 변경하고자 하는 계정의 비밀번호
su - newuser1

# chmod는 권한 변경 : u(user) g(group) o(others) ex) rwxrw-r--
# r : 4, w : 2, x : 1
chmod 644 파일명  rw-r--r--
chmod u+x 파일명 - 사용자에게 x 권한 줌
chmod g-x 파일명 - 그룹의 x 권한 뺌    
chmod o=r 파일명 - 그외에게 r 권한만 줌

# chown은 소유자, 그룹 변경
sudo chown newuser1 newuser1