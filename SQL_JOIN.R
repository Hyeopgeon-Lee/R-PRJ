library("readxl")
library("sqldf")
library("openxlsx")

# 엑셀 파일의 내용을 Student 변수에 데이터프레임 구조로 저장하기
student = read_excel(path="data/student.xlsx",  sheet="Sheet1", col_names=TRUE)

# 엑셀 파일의 내용을 class 변수에 데이터프레임 구조로 저장하기
class = read_excel(path="data/class.xlsx",  sheet="Sheet1", col_names=TRUE)

myResult = sqldf("SELECT A.NAME, B.CLASS_NAME
                    FROM student A INNER JOIN class B
                      ON A.CLASS_NO = B.CLASS_NO")

#엑셀 파일 저장하기
write.xlsx(myResult, sheetName="Sheet1", file="data/myResult.xlsx")