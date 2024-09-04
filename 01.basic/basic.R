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



