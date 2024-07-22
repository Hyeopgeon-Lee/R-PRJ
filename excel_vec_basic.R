
# 설치한 패키지 불러오기
library("readxl")

# 엑셀파일을 읽을 때, 시트명까지 쓰기기
studentList <- read_excel("data/studentlist.xlsx", sheet = "Sheet1")

studentList

# 벡터 이름이 '이름'인 데이터만 조회하기
studentList$이름

# 벡터 이름이 '성별'인 데이터만 조회하기
studentList$성별

# 나이 합계 구하기
sum(studentList$나이)









