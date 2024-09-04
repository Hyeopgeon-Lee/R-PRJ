library(readxl)

# 이전 실습에서 생성한 엑셀 파일 읽기
students <- read_excel("data/my_students.xlsx", sheet = "Sheet1")

# 수학 점수를 5점 간격으로 구간화
breaks <- seq(80, 100, by = 5)  # 구간 설정
labels <- c("80-85", "85-90", "90-95", "95-100")  # 레이블 설정

# 구간화 및 레이블 추가
math_bins <- cut(students$수학, breaks, right = FALSE, labels = labels)

# 구간화된 수학 점수 출력
print(math_bins)

# 도수분포표 생성
math_freq_table <- table(math_bins)

# 도수분포표 출력
View(math_freq_table)