
# 엑셀 파일 읽기 패키지 로드
library(readxl)

# 이전 실습에서 생성한 엑셀 파일 읽기
students <- read_excel("data/my_students.xlsx", sheet = "Sheet1")

# 수학 점수와 영어 점수 간의 공분산 계산
cov_math_english <- cov(students$수학, students$영어)
print(paste("수학 점수와 영어 점수 간의 공분산: ", cov_math_english))

# 수학 점수와 영어 점수 간의 상관계수 계산
cor_math_english <- cor(students$수학, students$영어)
print(paste("수학 점수와 영어 점수 간의 상관계수: ", cor_math_english))

