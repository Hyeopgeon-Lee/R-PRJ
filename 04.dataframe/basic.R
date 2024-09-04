# 데이터프레임을 생성하고, students 변수에 결과 저장하기
students <- data.frame(
  id = 1:5,
  name = c("홍길동", "김영희", "이철수", "박영수", "최지혜"),
  age = c(23, 25, 22, 24, 23),
  math = c(90, 85, 88, 92, 95),
  english = c(88, 90, 92, 85, 90)
)

# Rstudio에서만 사용 가능한 함수(R콘솔 사용 불가)
View(students)


# 데이터프레임을 생성하고, students 변수에 결과 저장하기
students <- data.frame(
  id = 1:5,
  name = c("홍길동", "김영희", "이철수", "박영수", "최지혜"),
  age = c(23, 25, 22, 24, 23),
  math = c(90, 85, 88, 92, 95),
  english = c(88, 90, 92, 85, 90)
)

# 열 추가
students$science <- c(80, 85, 88, 90, 87)

# Rstudio에서만 사용 가능한 함수(R콘솔 사용 불가)
View(students)


# 데이터프레임을 생성하고, students 변수에 결과 저장하기
students <- data.frame(
  id = 1:5,
  name = c("홍길동", "김영희", "이철수", "박영수", "최지혜"),
  age = c(23, 25, 22, 24, 23),
  math = c(90, 85, 88, 92, 95),
  english = c(88, 90, 92, 85, 90)
)

# 열 추가
students$science <- c(80, 85, 88, 90, 87)

# Rstudio에서만 사용 가능한 함수(R콘솔 사용 불가)
View(students)

# 데이터프레임을 생성하고, students 변수에 결과 저장하기
students <- data.frame(
  id = 1:5,
  name = c("홍길동", "김영희", "이철수", "박영수", "최지혜"),
  age = c(23, 25, 22, 24, 23),
  math = c(90, 85, 88, 92, 95),
  english = c(88, 90, 92, 85, 90)
)

# 새로운 열 생성
science <- c(85, 87, 89, 90, 88)

# cbind로 데이터프레임에 새로운 열 추가
students <- cbind(students, science)

# Rstudio에서만 사용 가능한 함수(R콘솔 사용 불가)
View(students)

# 데이터프레임을 생성하고, students 변수에 결과 저장하기
students <- data.frame(
  id = 1:5,
  name = c("홍길동", "김영희", "이철수", "박영수", "최지혜"),
  age = c(23, 25, 22, 24, 23),
  math = c(90, 85, 88, 92, 95),
  english = c(88, 90, 92, 85, 90)
)

# 새로운 학생 추가
new_student <- data.frame(id = 6, name = "임꺽정", age = 26, math = 93, 
                          english = 89)

# 행 추가
students <- rbind(students, new_student)

# Rstudio에서만 사용 가능한 함수(R콘솔 사용 불가)
View(students)



new_student <- data.frame(id = 6, name = "윤서준", age = 26, math = 93, english = 89, science = 91)
students <- rbind(students, new_student)
print(students)

# 데이터프레임을 생성하고, students 변수에 결과 저장하기
students <- data.frame(
  id = 1:5,
  name = c("홍길동", "김영희", "이철수", "박영수", "최지혜"),
  age = c(23, 25, 22, 24, 23),
  math = c(90, 85, 88, 92, 95),
  english = c(88, 90, 92, 85, 90)
)

# Rstudio에서만 사용 가능한 함수(R콘솔 사용 불가)
View(students)

# 2번째 행의 3번째 값 => 김영희의 나이
students[2, 3] # 출력값 : 25


# 데이터프레임을 생성하고, students 변수에 결과 저장하기
students <- data.frame(
  id = 1:5,
  name = c("홍길동", "김영희", "이철수", "박영수", "최지혜"),
  age = c(23, 25, 22, 24, 23),
  math = c(90, 85, 88, 92, 95),
  english = c(88, 90, 92, 85, 90)
)

# Rstudio에서만 사용 가능한 함수(R콘솔 사용 불가)
View(students)

# 2번째 행 전체 데이터출력
students[2, ] # 출력값 : 김영희 전체 행


# 데이터프레임을 생성하고, students 변수에 결과 저장하기
students <- data.frame(
  id = 1:5,
  name = c("홍길동", "김영희", "이철수", "박영수", "최지혜"),
  age = c(23, 25, 22, 24, 23),
  math = c(90, 85, 88, 92, 95),
  english = c(88, 90, 92, 85, 90)
)

# Rstudio에서만 사용 가능한 함수(R콘솔 사용 불가)
View(students)

# 3번째 열 전체 데이터출력
students[, 3] # 출력값 : 나이 전체 열



# 데이터프레임을 생성하고, students 변수에 결과 저장하기
students <- data.frame(
  id = 1:5,
  name = c("홍길동", "김영희", "이철수", "박영수", "최지혜"),
  age = c(23, 25, 22, 24, 23),
  math = c(90, 85, 88, 92, 95),
  english = c(88, 90, 92, 85, 90)
)

# Rstudio에서만 사용 가능한 함수(R콘솔 사용 불가)
View(students)

# age 이름의 데이터프레임 내 벡터 출력
students$age # 출력값 : 나이 전체 열


# 데이터프레임을 생성하고, students 변수에 결과 저장하기
students <- data.frame(
  id = 1:5,
  name = c("홍길동", "김영희", "이철수", "박영수", "최지혜"),
  age = c(23, 25, 22, 24, 23),
  math = c(90, 85, 88, 92, 95),
  english = c(88, 90, 92, 85, 90)
)

# 5번째 행 삭제
students <- students[-c(5), ]

# Rstudio에서만 사용 가능한 함수(R콘솔 사용 불가)
View(students)

# 데이터프레임을 생성하고, students 변수에 결과 저장하기
students <- data.frame(
  id = 1:5,
  name = c("홍길동", "김영희", "이철수", "박영수", "최지혜"),
  age = c(23, 25, 22, 24, 23),
  math = c(90, 85, 88, 92, 95),
  english = c(88, 90, 92, 85, 90)
)

# 데이터프레임의 name 벡터에서 최지혜 찾기
rows_to_delete <- which(students$name == "최지혜")

# 위치 값 출력 : 5 출력
rows_to_delete

# 행 삭제
students <- students[-rows_to_delete, ]

# Rstudio에서만 사용 가능한 함수(R콘솔 사용 불가)
View(students)

# 데이터프레임을 생성하고, students 변수에 결과 저장하기
students <- data.frame(
  id = 1:5,
  name = c("홍길동", "김영희", "이철수", "박영수", "최지혜"),
  age = c(23, 25, 22, 24, 23),
  math = c(90, 85, 88, 92, 95),
  english = c(88, 90, 92, 85, 90)
)

# 열 삭제
students <- students[, -3]

# Rstudio에서만 사용 가능한 함수(R콘솔 사용 불가)
View(students)



# 데이터프레임을 생성하고, students 변수에 결과 저장하기
students <- data.frame(
  id = 1:5,
  name = c("홍길동", "김영희", "이철수", "박영수", "최지혜"),
  age = c(23, 25, 22, 24, 23),
  math = c(90, 85, 88, 92, 95),
  english = c(88, 90, 92, 85, 90)
)

# 열 삭제
students <- students[, -3]

# Rstudio에서만 사용 가능한 함수(R콘솔 사용 불가)
View(students)

# 데이터프레임을 생성하고, students 변수에 결과 저장하기
students <- data.frame(
  id = 1:5,
  name = c("홍길동", "김영희", "이철수", "박영수", "최지혜"),
  age = c(23, 25, 22, 24, 23),
  math = c(90, 85, 88, 92, 95),
  english = c(88, 90, 92, 85, 90)
)

# 엑셀 파일 읽기 위한 패키지 불러오기
library(readxl)

# 이전 실습에서 생성한 엑셀 파일 읽기
students <- read_excel("data/my_students.xlsx", sheet = "Sheet1")

# age 벡터의 값이 23 이상한 데이터 조회
subset_students <- subset(students, 나이 >= 23)

# Rstudio에서만 사용 가능한 함수(R콘솔 사용 불가)
View(subset_students)

library(readxl)

# 이전 실습에서 생성한 엑셀 파일 읽기
students <- read_excel("data/my_students.xlsx", sheet = "Sheet1")

# name, age, math 벡터 조회
subset_students <- subset(students, select = c(이름, 나이, 수학))

# Rstudio에서만 사용 가능한 함수(R콘솔 사용 불가)
View(subset_students)



library(readxl)

# 이전 실습에서 생성한 엑셀 파일 읽기
students <- read_excel("data/my_students.xlsx", sheet = "Sheet1")

# name, age, math 벡터 조회
subset_students <- subset(students, 나이>=23, select = c(이름, 나이, 수학))

# Rstudio에서만 사용 가능한 함수(R콘솔 사용 불가)
View(subset_students)



library(readxl)

# 이전 실습에서 생성한 엑셀 파일 읽기
students <- read_excel("data/my_students.xlsx", sheet = "Sheet1")

# 나이가 24세 이상 or 수학 90점 이상상
subset_students <- subset(students, 나이 >= 24 | 수학 >=90, 
                          select = c(이름, 나이, 수학))

# Rstudio에서만 사용 가능한 함수(R콘솔 사용 불가)
View(subset_students)



# 데이터프레임을 생성하고, students 변수에 결과 저장하기
students <- data.frame(
  id = 1:5,
  name = c("홍길동", "김영희", "이철수", "박영수", "최지혜"),
  age = c(23, 25, 22, 24, 23),
  math = c(90, 85, 88, 92, 95),
  english = c(88, 90, 92, 85, 90)
)

summary(students)

# 데이터프레임을 생성하고, students 변수에 결과 저장하기
students <- data.frame(
  id = 1:5,
  name = c("홍길동", "김영희", "이철수", "박영수", "최지혜"),
  age = c(23, 25, 22, 24, 23),
  math = c(90, 85, 88, 92, 95),
  english = c(88, 90, 92, 85, 90)
)

# 벡터 이름으로 조회
View(students[c("name", "age")])

# 벡터 위치로 조회
View(students[c(2, 3)])


이름 <- "홍길동"

library(readxl)

# 이전 실습에서 생성한 엑셀 파일 읽기
students <- read_excel("data/my_students.xlsx", sheet = "Sheet1")

# 데이터프레임 내 벡터 값을 직접 변수로 호출가능
attach(students)

이름 #students 데이터프레임의 이름 벡터
나이 #students 데이터프레임의 나이 벡터
수학 + 영어 #students 데이터프레임의 수학과 영어 덧셈

detach(students) # 데이터프레임 참조 해제

이름 # 값 없음


# students 데이터프레임 생성
students <- data.frame(
  id = 1:5,
  name = c("홍길동", "김영희", "이철수", "박영수", "최지혜"),
  age = c(23, 25, 22, 24, 23),
  math = c(90, 85, 88, 92, 95),
  english = c(88, 90, 92, 85, 90)
)

# 열 이름을 한글로 변경
colnames(students) <- c("학번", "이름", "나이", "수학", "영어")

# 결과 확인
View(students)


# 엑셀 저장하기 위한 외부패키지 설치
install.packages("openxlsx")

# 설치된 패키지 불러오기
library(openxlsx)

# students 데이터프레임 생성
students <- data.frame(
  학번 = 1:5,
  이름 = c("홍길동", "김영희", "이철수", "박영수", "최지혜"),
  나이 = c(23, 25, 22, 24, 23),
  수학 = c(90, 85, 88, 92, 95),
  영어 = c(88, 90, 92, 85, 90)
)

# 엑셀 파일 생성성
write.xlsx(students, sheetName="Sheet1", file = "data/my_students.xlsx")

library(readxl)

# 이전 실습에서 생성한 엑셀 파일 읽기
students <- read_excel("data/my_students.xlsx", sheet = "Sheet1")

# 이름 순으로 정렬하기(가나다 순)
students_sorted <- students[order(students$이름), ]

View(students_sorted)

# 이름 순으로 정렬하기(다나가 순)
students_sorted_desc <- students[order(students$이름, decreasing = TRUE), ]

View(students_sorted_desc)

library(readxl)

# 이전 실습에서 생성한 엑셀 파일 읽기
students <- read_excel("data/my_students.xlsx", sheet = "Sheet1")

# 이름으로 정렬한 다음, 수학 점수로 역순 정렬
students_sorted <- students[order(students$이름, -students$수학), ]

# Rstudio에서만 사용 가능한 함수(R콘솔 사용 불가)
View(students_sorted)




