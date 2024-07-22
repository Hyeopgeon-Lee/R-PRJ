
# 설치한 패키지 불러오기
library("readxl")

# 엑셀파일을 읽을 때, 시트명까지 쓰기기
studentList <- read_excel("data/studentlist.xlsx", sheet = "Sheet1")

studentList

# 이름 백터 가져오기
name = studentList$이름

# 나이 백터 가져오기
age = studentList$나이

# 가장 많은 나이
maxAge = max(age)

# 나이 백터 중 가장 많은 나이를 찾아 위치 값을 벡터 구조로 가져오기
idx <- grep(maxAge, age)

for (i in idx){ # 찾은 데이터만큼 반복하기
  print(studentList[i, ]) # 라인 전체 보여주기
  
}











