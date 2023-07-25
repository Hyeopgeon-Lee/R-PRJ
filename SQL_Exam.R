library("readxl")
library("sqldf")

# 엑셀 파일의 내용을 Student 변수에 데이터프레임 구조로 저장하기
student = read_excel(path="data/student.xlsx",  sheet="Sheet1", col_names=TRUE)

# 이름, 나이 조회
sqldf("SELECT NAME, AGE FROM student")

# 전체 백터 조회
sqldf("SELECT * FROM student")

# 조회 조건 추가(Where절)
# 예 : 나이가 23세 이상인 사람만 조회하기
sqldf("SELECT * FROM student WHERE AGE >= 23")

# 여러 조회 조건 추가(Where절 + AND 사용)
# 예 : 나이가 23세 이상이고, 25미만인 사람만 조회하기
sqldf("SELECT * FROM student WHERE AGE >= 23 AND AGE < 25")

# 정렬하기
# 예 : 나이가 많은 순서대로 정렬하기
sqldf("SELECT * FROM student ORDER BY AGE DESC")

# 예 : 나이가 어린 순서대로 정렬하기
sqldf("SELECT * FROM student ORDER BY AGE ASC")

# 예 : 나이가 많은 순서대로 정렬 후, 동일한 나이는 이름 순서대로 정렬
sqldf("SELECT * FROM student ORDER BY AGE DESC, NAME")

# 정렬하기(Order by) + 조건추가(where절)
# 예 : 나이가 많은 순서대로 정렬 후, 동일한 나이는 이름 순서대로 정렬
sqldf("SELECT * FROM student WHERE AGE <=23 ORDER BY AGE DESC, NAME")

# 벡터 안에 특정 글자 조회하기(LIKE % 활용)
# 예 : ‘김’으로 시작하는 사람만 조회하기 
sqldf("SELECT * FROM student WHERE NAME LIKE '김%'")

# 예 : ‘수’로 끝나는 사람만 조회하기
sqldf("SELECT * FROM student WHERE NAME LIKE '%수'")

# 예 : 이름에 ‘수’가 들어가는 사람만 조회하기
sqldf("SELECT * FROM student WHERE NAME LIKE '%수%'")

# 집계 함수
# 예 : 벡터 안에 스칼라 숫자 세기
sqldf("SELECT COUNT(STUDENT_NO) FROM student")

# 예 : 반별 학생 수 조회하기
sqldf("SELECT CLASS_NO, COUNT(CLASS_NO) FROM student GROUP BY CLASS_NO")

# 예 : A반과 B반별 학생 수 조회하기
sqldf("SELECT CLASS_NO, COUNT(CLASS_NO) 
         FROM student 
        GROUP BY CLASS_NO 
       HAVING CLASS_NO ='A' OR CLASS_NO = 'B'")

