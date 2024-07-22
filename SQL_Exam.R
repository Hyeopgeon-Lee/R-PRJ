library("readxl")
library("sqldf")

# 엑셀 파일의 내용을 Student 변수에 데이터프레임 구조로 저장하기
student = read_excel("data/student.xlsx",  sheet="Sheet1")

# 이름, 나이 조회
sqldf("SELECT 이름, 나이 FROM student")

# 출력 결과
# NAME AGE
# 1  김길동  23
# 2  이미린  22
# 3  홍길동  24
# 4  김철수  23
# 5  손세수  20
# 6  박미희  21
# 7  강수친  22
# 8  이희수  23
# 9  이철린  23
# 10 방희철  22
# 11 박수호  24
# 12 임동민  22
# 13 김민수  21
# 14 이희진  23
# 15 김미진  22
# 16 김동수  24
# 17 여수근  21

# 전체 백터 조회
sqldf("SELECT * FROM student")

# 출력 결과
# STUDENT_NO   NAME AGE CLASS_NO
# 1       ST001 김길동  23        A
# 2       ST002 이미린  22        A
# 3       ST003 홍길동  24        B
# 4       ST004 김철수  23        C
# 5       ST005 손세수  20        A
# 6       ST006 박미희  21        C
# 7       ST007 강수친  22        C
# 8       ST008 이희수  23        B
# 9       ST009 이철린  23        B
# 10      ST010 방희철  22     <NA>
# 11      ST011 박수호  24        C
# 12      ST012 임동민  22        D
# 13      ST013 김민수  21        D
# 14      ST014 이희진  23        A
# 15      ST015 김미진  22        C
# 16      ST016 김동수  24        D
# 17      ST017 여수근  21     <NA>
  
# 조회 조건 추가(Where절)
# 예 : 나이가 23세 이상인 사람만 조회하기
sqldf("SELECT * FROM student WHERE AGE >= 23")

# 출력 결과
# STUDENT_NO   NAME AGE CLASS_NO
# 1      ST001 김길동  23        A
# 2      ST003 홍길동  24        B
# 3      ST004 김철수  23        C
# 4      ST008 이희수  23        B
# 5      ST009 이철린  23        B
# 6      ST011 박수호  24        C
# 7      ST014 이희진  23        A
# 8      ST016 김동수  24        D

# 여러 조회 조건 추가(Where절 + AND 사용)
# 예 : 나이가 23세 이상이고, 25미만인 사람만 조회하기
sqldf("SELECT * FROM student WHERE AGE >= 23 AND AGE < 25")

# 출력 결과
# STUDENT_NO   NAME AGE CLASS_NO
# 1      ST001 김길동  23        A
# 2      ST003 홍길동  24        B
# 3      ST004 김철수  23        C
# 4      ST008 이희수  23        B
# 5      ST009 이철린  23        B
# 6      ST011 박수호  24        C
# 7      ST014 이희진  23        A
# 8      ST016 김동수  24        D

# 정렬하기
# 예 : 나이가 많은 순서대로 정렬하기
sqldf("SELECT * FROM student ORDER BY AGE DESC")

# 출력 결과
# STUDENT_NO   NAME AGE CLASS_NO
# 1       ST003 홍길동  24        B
# 2       ST011 박수호  24        C
# 3       ST016 김동수  24        D
# 4       ST001 김길동  23        A
# 5       ST004 김철수  23        C
# 6       ST008 이희수  23        B
# 7       ST009 이철린  23        B
# 8       ST014 이희진  23        A
# 9       ST002 이미린  22        A
# 10      ST007 강수친  22        C
# 11      ST010 방희철  22     <NA>
# 12      ST012 임동민  22        D
# 13      ST015 김미진  22        C
# 14      ST006 박미희  21        C
# 15      ST013 김민수  21        D
# 16      ST017 여수근  21     <NA>
# 17      ST005 손세수  20        A

# 예 : 나이가 어린 순서대로 정렬하기
sqldf("SELECT * FROM student ORDER BY AGE ASC")

# 출력 결과
# STUDENT_NO   NAME AGE CLASS_NO
# 1       ST005 손세수  20        A
# 2       ST006 박미희  21        C
# 3       ST013 김민수  21        D
# 4       ST017 여수근  21     <NA>
# 5       ST002 이미린  22        A
# 6       ST007 강수친  22        C
# 7       ST010 방희철  22     <NA>
# 8       ST012 임동민  22        D
# 9       ST015 김미진  22        C
# 10      ST001 김길동  23        A
# 11      ST004 김철수  23        C
# 12      ST008 이희수  23        B
# 13      ST009 이철린  23        B
# 14      ST014 이희진  23        A
# 15      ST003 홍길동  24        B
# 16      ST011 박수호  24        C
# 17      ST016 김동수  24        D

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

