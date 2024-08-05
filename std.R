
# 설치된 패키지 불러오기
library(openxlsx)

# students 데이터프레임 생성 (이상치 포함)
students <- data.frame(
  학번 = 1:10,
  이름 = c("홍길동", "김영희", "이철수", "박영수", "최지혜", 
         "한지민", "강하늘", "조정석", "배수지", "김수현"),
  나이 = c(23, 25, 22, 24, 23, 24, 22, 25, 23, 24),
  토플 = c(110, 100, 105, 95, 115, 120, 85, 90, 88, 50),  # 새로운 토플 성적
  토익 = c(900, 850, 880, 800, 950, 980, 700, 750, 780, 400)  # 새로운 토익 성적
)

# 토익, 토플 점수 추가된 엑셀 파일 생성
write.xlsx(students, sheetName="Sheet1", file = "data/students_toeic.xlsx")

# 표준화 함수 정의
standardize <- function(x) {
  return((x - mean(x)) / sd(x))
}

# 표준화
students$토플_표준화 <- standardize(students$토플)
students$토익_표준화 <- standardize(students$토익)

# 토익과 토플 점수 비교
students$비교_결과 <- ifelse(students$토플_표준화 > students$토익_표준화, "토플", "토익")

# 데이터프레임 출력
View(students)
