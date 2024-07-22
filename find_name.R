
# 설치한 패키지 불러오기
library("readxl")

# 엑셀파일을 읽을 때, 시트명까지 쓰기기
studentList <- read_excel("data/studentlist.xlsx", sheet = "Sheet1")

studentList

# 이름 백터 가져오기
name = studentList$이름

# 첫글자가 김으로 시작하는 데이터의 위치 값을 벡터 구조로 가져오기
idx <- grep("^김", name)

for (i in idx){ #김씨인 사람 이름 출력하기 위해 반복하기
  print(name[i]) # 이름 출력하기
  
}











