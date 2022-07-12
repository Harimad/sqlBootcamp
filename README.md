## Goorm MySQL Cheat Sheet

#### 1. Start by running the mysql service and opening the mysql shell, this can be done simultaneously with a single command:
- Start MySQL Interactive Shell
```
mysql-ctl cli
```
- exit + Enter : 나가기
- quit + Enter : 나가기
- Ctrl + z : 나가기

#### 2. List all existing databases:
```
SHOW DATABASES;
```

#### 3. If you see your database then open it with:
```
USE <db_name>;
```

#### 4. If you do not see your database then you will need to create it: CREATE DATABASE <db_name>; Again, be sure to replace <db_name> with the name of your database.
#### 5. Now you can open your newly created database with:
```
USE <db_name>;
```
<hr>

##### You are now inside of a database and can begin creating tables, querying for data, and so on. Once you are done working, simply type the exit command to quit the MySQL shell and return to the terminal.
<hr>

### 구름 sql cli시뮬레이션
1. mysql-ctl cli
2. CREATE DATABASE hello_world_db;
	- 소문자로도 DB생성가능
	- show databases; : DB 보기
3. use 이름 : db 변경
4. CREATE TABLE cats ( 어쩌구~~~);
5. 코드 실수하면 \c로 다시 쓰기

### 구름 sql file 시뮬레이션
1. sql 파일생성 후 코드적어 넣기 : (제일 좋은 방법)
2. mysql-ctl cli : (cli에서 터미널 킴)
3. use db이름 : (db 변경!)
4. source sql파일이름 : (파일 확인)
5. desc table이름 : (테이블 표로 보여줌)

- sql 파일이 수정될 때마다 최신화를 위해 아래 입력
```
use db이름
source sql파일이름 
```
