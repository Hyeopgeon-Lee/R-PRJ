
# 설치한 패키지 불러오기
library("readxl")

# 엑셀파일을 읽을 때, 시트명까지 쓰기기
studentList <- read_excel("data/studentlist.xlsx", sheet = "Sheet1")

studentList

# 이름 백터 가져오기
name = studentList$이름

# 성별 백터 가져오기
gender = studentList$성별

# 성별 백터의 값이 '여자'인 데이터의 위치 값을 벡터 구조로 가져오기
idx <- grep("여자", gender)

for (i in idx){ # 찾은 데이터만큼 반복하기
  print(paste(name[i] ,gender[i])) # 이름 출력하기
  
}











