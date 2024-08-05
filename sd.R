
# 엑셀 파일 읽기 패키지 로드
library(readxl)

# 이전 실습에서 생성한 엑셀 파일 읽기
students <- read_excel("data/students_outliers.xlsx", sheet = "Sheet1")

# 수학 점수의 표준편차 계산
math_sd <- sd(students$수학)
print(paste("수학 점수의 표준편차: ", math_sd))

# 영어 점수의 표준편차 계산
english_sd <- sd(students$영어)
print(paste("영어 점수의 표준편차: ", english_sd))

# 이상치 제거(수학 점수가 100점 이하 or  영어 점수가 50점 이상인 데이터만 남김)
students_no_outliers <- students[students$수학 <= 100 & students$영어 > 50, ]

# 이상치 제거 후 데이터프레임 출력
print(students_no_outliers)

# 이상치 제거 후 수학 점수의 표준편차 계산
math_sd_no_outliers <- sd(students_no_outliers$수학)
print(paste("이상치 제거 후 수학 점수의 표준편차: ", math_sd_no_outliers))

# 이상치 제거 후 영어 점수의 표준편차 계산
english_sd_no_outliers <- sd(students_no_outliers$영어)
print(paste("이상치 제거 후 영어 점수의 표준편차: ", english_sd_no_outliers))

