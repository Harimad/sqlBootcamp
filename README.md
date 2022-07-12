## [Short] CLI Commends

- mysql-ctl start : Start MySQL
- mysql-ctl stop : Stopping MySQL
- mysql-ctl cli :Start MySQL Interactive Shell
- exit + Enter : 나가기
- quit + Enter : 나가기
- Ctrl + z : 나가기

## [Details] Goorm MySQL Cheat Sheet

#### 1. Start by running the mysql service and opening the mysql shell, this can be done simultaneously with a single command:
```
mysql-ctl cli
```

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
<br>
<hr>
<br>

##### You are now inside of a database and can begin creating tables, querying for data, and so on. Once you are done working, simply type the exit command to quit the MySQL shell and return to the terminal.