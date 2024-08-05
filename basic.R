# 01. 변수 및 데이터 타입 이해

# 숫자형 데이터타입
num1 <- 10
num2 <- 3.14
print(class(num1))  # "numeric" 출력
print(class(num2))  # "numeric" 출력

# 정수형 데이터타입
num1 <- 10L
num2 <- 10
print(class(num1))  # "integer" 출력
print(class(num2))  # "numeric" 출력

# 문자형 데이터타입
char1 <- "Hello"
char2 <- "R Programming"
print(class(char1))  # "character" 출력
print(class(char2))  # "character" 출력

# 논리형 데이터타입
bool1 <- TRUE
bool2 <- FALSE
print(class(bool1))  # "logical" 출력
print(class(bool2))  # "logical" 출력

# 복소수 데이터타입
comp <- 1+2i
print(class(comp))  # "complex" 출력

# Factor 데이터타입
gender <- factor(c("남자", "여자", "남자"))
print(class(gender))  # "factor" 출력

age <- factor(c("10대", "", "남자"))
print(class(gender))  # "factor" 출력


# 02. 강제 데이터 타입 변경(데이터 형변환)

# 실습 예제
a <- 42 # 숫자 넣기
b <- "Data Science" # 문자 넣기
c <- FALSE # 논리형 넣기

# 변수 타입 확인
print(class(a))  # "numeric"
print(class(b))  # "character"
print(class(c))  # "logical"

# 변수 타입 변환
a_char <- as.character(a) # 숫자를 문자로 변경(가능)
b_logical <- as.logical(b) # 문자를 논리형으로 변경(불가능)
c_numeric <- as.numeric(c) # 논리형을 숫자로 변경(가능) TRUE : 1 / FALSE : 0

# 변환된 타입 확인
print(class(a_char))  # "character"
print(class(b_logical))  # "logical" (NA)
print(class(c_numeric))  # "numeric"

a_char # " 표기 붙으며 문자형으로 변경됨
b_logical # 불가능하기에 NA 값 생성
c_numeric # 0 출력


# 03. 변수 유형

# 수치형변수 -> 이산형 변수
num_students <- c(23, 25, 30, 18, 27)  # 학생 수
num_cars <- c(1, 2, 0, 3, 1)          # 자동차 수

# 수치형변수 -> 연속형 변수
height <- c(160.5, 172.3, 180.0, 165.4, 158.7)  # 키 (cm)
weight <- c(55.0, 68.2, 72.5, 60.3, 48.8)      # 몸무게 (kg)

# 범주형변수 -> 명목형 변수
gender <- factor(c("Male", "Female", "Female", "Male", "Male"))  # 성별
blood_type <- factor(c("A", "B", "O", "AB", "A"))                # 혈액형
color <- factor(c("Red", "Blue", "Green", "Blue", "Red"))        # 색상

gender
blood_type
color

# 범주형변수 -> 순서형 변수
# 학년 예제
학년 <- factor(c("3학년", "2학년", "1학년", "4학년", "1학년"),
             levels = c("1학년", "2학년", "3학년", "4학년"),
             ordered = TRUE)

# 데이터 출력
print(학년)


# 04. 간단한 연산자 이해

# 산술연산자
a <- 5
b <- 2
print(a + b)  # 7
print(a - b)  # 3
print(a * b)  # 10
print(a / b)  # 2.5
print(a %% b) # 1 (나머지)
print(a %/% b) # 2 (몫)

# 비교 연산자
a <- 5
b <- 2

print(a > b)   # TRUE
print(a == b)  # FALSE




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

# ggplot2 패키지 설치 (이미 설치된 경우 생략 가능)
install.packages("ggplot2")

# ggplot2 패키지 로드
library(ggplot2)

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

# 도수분포표 출력
View(freq_df)

# 도수분포표 차트 그리기
ggplot(data = freq_df, aes(x = 구간)) +
  geom_bar(aes(y = 수학), stat = "identity", position = "dodge", fill = "blue") +
  geom_bar(aes(y = 영어), stat = "identity", position = "dodge", fill = "red") +
  labs(title = "수학 및 영어 점수 도수분포표", x = "점수 구간", y = "학생 수") +
  theme_minimal()



# ggplot2 패키지 설치 (이미 설치된 경우 생략 가능)
install.packages("ggplot2")

# ggplot2 패키지 로드
library(ggplot2)

# students 데이터프레임 생성
students <- data.frame(
  학번 = 1:5,
  이름 = c("홍길동", "김영희", "이철수", "박영수", "최지혜"),
  나이 = c(23, 25, 22, 24, 23),
  수학 = c(90, 85, 88, 92, 95),
  영어 = c(88, 90, 92, 85, 90)
)

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

# 도수분포표 차트 그리기
ggplot(data = freq_df, aes(x = 구간)) +
  geom_bar(aes(y = 수학), stat = "identity", position = "dodge", fill = "blue") +
  geom_bar(aes(y = 영어), stat = "identity", position = "dodge", fill = "red") +
  labs(title = "수학 및 영어 점수 도수분포표", x = "점수 구간", y = "학생 수") +
  theme_minimal()




