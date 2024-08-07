
# 엑셀 파일 읽기 패키지 로드드
library(readxl)

# 이전 실습에서 생성한 엑셀 파일 읽기
students <- read_excel("data/my_students.xlsx", sheet = "Sheet1")

# 수학과 영어 점수를 각각 5점 간격으로 구간화
breaks <- seq(80, 100, by = 5)  # 구간 설정
labels <- c("80-85", "85-90", "90-95", "95-100")  # 레이블 설정

# 수학 점수 구간화 및 도수분포표 생성
math_bins <- cut(students$수학, breaks, right = FALSE, labels = labels)
math_freq_table <- table(math_bins)

# 영어 점수 구간화 및 도수분포표 생성
english_bins <- cut(students$영어, breaks, right = FALSE, labels = labels)
english_freq_table <- table(english_bins)

# 도수분포표를 데이터프레임으로 변환
freq_df <- data.frame(
  구간 = labels,
  수학 = as.vector(math_freq_table),
  영어 = as.vector(english_freq_table)
)

# 상대 도수 계산 
freq_df$수학_상대도수 <- prop.table(math_freq_table)
freq_df$영어_상대도수 <- prop.table(english_freq_table)

# 누적 도수 계산
freq_df$수학_누적도수 <- cumsum(freq_df$수학_상대도수)
freq_df$영어_누적도수 <- cumsum(freq_df$영어_상대도수)

# 도수분포표 출력
View(freq_df)

