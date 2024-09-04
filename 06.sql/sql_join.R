
library("readxl")
library("sqldf")
library("openxlsx")

# 엑셀 파일의 내용을 Student 변수에 데이터프레임 구조로 저장하기
student = read_excel("data/student.xlsx",  sheet="Sheet1")

# 엑셀 파일의 내용을 class 변수에 데이터프레임 구조로 저장하기
class = read_excel("data/class.xlsx",  sheet="Sheet1")

myResult = sqldf("SELECT A.이름, IFNULL(B.반이름, '반 미배정') as 반이름
                    FROM student A LEFT JOIN class B
                      ON A.반번호 = B.반번호")

#엑셀 파일 저장하기
write.xlsx(myResult, sheetName="Sheet1", file="data/myResult.xlsx")

