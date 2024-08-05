

# 엑셀 파일 읽기 패키지 로드
library(readxl)

# 이전 실습에서 생성한 엑셀 파일 읽기
students <- read_excel("data/my_students.xlsx", sheet = "Sheet1")

# 영어 점수와 수학 점수간 상관계수 구하기
correlation <- cor(students$수학, students$영어)

print(paste("수학과 영어 점수 간의 상관계수: ", correlation))


# corrplot 패키지 설치 (이미 설치된 경우 생략 가능)
install.packages("corrplot")

# corrplot 패키지 로드
library(corrplot)

# 엑셀 파일 읽기 패키지 로드
library(readxl)

# 이전 실습에서 생성한 엑셀 파일 읽기
students <- read_excel("data/my_students.xlsx", sheet = "Sheet1")

# 상관계수 행렬 계산
correlation_matrix <- cor(students[, c("나이", "수학", "영어")])

# 상관계수 행렬 시각화
corrplot(correlation_matrix, method = "circle")
