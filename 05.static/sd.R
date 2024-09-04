# --------------------------------------------------------------------
# 이상치 찾기 위한 표준편차 분석하기
# --------------------------------------------------------------------

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


# --------------------------------------------------------------------
# 이상치 값 찾기 위해 Z-Score 활용하기
# --------------------------------------------------------------------

# 엑셀 파일 읽기 패키지 로드
library(readxl)

# 이전 실습에서 생성한 엑셀 파일 읽기
students <- read_excel("data/students_outliers.xlsx", sheet = "Sheet1")

students <- students[students$수학 <= 100 & students$영어 > 50, ]

# Z-스코어 함수 정의
z_score <- function(x) {
  return ((x - mean(x)) / sd(x))
}

# 각 과목에 대해 Z-스코어 계산
students$수학_Z <- z_score(students$수학)
students$영어_Z <- z_score(students$영어)

# 이상치 판단
math_outliers <- students[abs(students$수학_Z) > 2, ]
english_outliers <- students[abs(students$영어_Z) > 2, ]

print("수학 이상치:")
print(math_outliers)

print("영어 이상치:")
print(english_outliers)


# --------------------------------------------------------------------
# 이상치 제거 후, 결과 보기
# --------------------------------------------------------------------

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

