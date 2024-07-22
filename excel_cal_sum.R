
# 설치한 패키지 불러오기
library("readxl")

# 엑셀파일을 읽을 때, 시트명까지 쓰기기
studentList <- read_excel("data/studentlist.xlsx", sheet = "Sheet1")

studentList

# 나이 합계 구하기
sum(studentList$나이)










