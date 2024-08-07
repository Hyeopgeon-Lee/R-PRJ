
# 설치된 패키지 불러오기
library(openxlsx)

# ggplot2 패키지 로드
library(ggplot2)

# students 데이터프레임 생성 (이상치 포함)
students <- data.frame(
  학번 = 1:10,
  이름 = c("홍길동", "김영희", "이철수", "박영수", "최지혜", "한지민", 
         "강하늘", "조정석", "배수지", "김수현"),
  나이 = c(23, 25, 22, 24, 23, 24, 22, 25, 23, 24),
  수학 = c(90, 85, 88, 92, 95, 100, 75, 88, 85, 150),  # 이상치: 150
  영어 = c(88, 90, 92, 85, 90, 95, 80, 85, 82, 30)    # 이상치: 30
)

# 이상치 엑셀 파일 생성
write.xlsx(students, sheetName="Sheet1", file = "data/students_outliers.xlsx")

# 산포도 그리기
ggplot(students, aes(x = 수학, y = 영어)) +
  geom_point(color = "blue", size = 3) +
  labs(title = "수학 점수와 영어 점수 간의 산포도",
       x = "수학 점수",
       y = "영어 점수") +
  theme_minimal()

