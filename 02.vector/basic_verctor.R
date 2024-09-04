# --------------------------------------------------------------------
# 벡터 기본 실습
# --------------------------------------------------------------------

# 숫자 벡터
numeric_vector <- c(1, 2, 3, 4, 5)
print(numeric_vector)

# 문자 벡터
char_vector <- c("a", "b", "c", "d", "e")
print(char_vector)

# 논리 벡터
logical_vector <- c(TRUE, FALSE, TRUE, FALSE, TRUE)
print(logical_vector)

# seq() 함수 안쓰고 1에서 10까지의 숫자 벡터 생성
num_vector <- c(1:10)
print(num_vector)

# 1에서 10까지의 숫자 벡터 생성
seq_vector <- seq(1, 10)
print(seq_vector)

# 1에서 10까지 2씩 증가하는 숫자 벡터 생성
seq_by_two <- seq(1, 10, by = 2)
print(seq_by_two)

# seq() 함수 안쓰고 1에서 10까지의 숫자 벡터 생성
num_vector <- c(1:10)
print(num_vector)

# seq() 함수 안쓰고 5에서 10까지의 숫자 벡터 생성
num_vector <- c(5:10)
print(num_vector)


# --------------------------------------------------------------------
# 벡터 기초 연산 실습
# --------------------------------------------------------------------


# 벡터 생성
vec1 <- c(1, 2, 3, 4, 5)
vec2 <- c(5, 4, 3, 2, 1)

# 벡터 덧셈
vec_sum <- vec1 + vec2
print(vec_sum)

# 벡터 뺄셈
vec_diff <- vec1 - vec2
print(vec_diff)

# 벡터 곱셈
vec_prod <- vec1 * vec2
print(vec_prod)

# 벡터 나눗셈
vec_div <- vec1 / vec2
print(vec_div)

# 벡터 생성
vec <- c(1, 2, 3, 4, 5)

# 벡터의 합
sum_vec <- sum(vec)
print(sum_vec)

# 벡터의 평균
mean_vec <- mean(vec)
print(mean_vec)

# 벡터의 최대값
max_vec <- max(vec)
print(max_vec)

# 벡터의 최소값
min_vec <- min(vec)
print(min_vec)


# --------------------------------------------------------------------
# 벡터 결합 기초 실습
# --------------------------------------------------------------------

# 벡터 생성
vec <- c(1, 2, 3, 4, 5)

# 벡터의 길이
length_vec <- length(vec)
print(length_vec)

# 벡터 생성
vec1 <- c(1, 2, 3)
vec2 <- c(4, 5, 6)

# 벡터 결합
combined_vec1 <- c(vec1, vec2)
print(combined_vec1)

# 뒤에 숫자 붙이기
combined_vec2 <- c(vec1, 100, 200, 300)
print(combined_vec2)

# 앞에 숫자 붙이기
combined_vec3 <- c(100, 200, 300, vec2)
print(combined_vec3)


# --------------------------------------------------------------------
# 벡터의 스칼라 실습
# --------------------------------------------------------------------

# 벡터 생성
vector <- c(10, 20, 30, 40, 50)

# 첫 번째 요소 접근
print(vector[1])

# 세 번째 요소 접근
print(vector[3])

# 첫 번째, 세 번째, 다섯 번째 요소 접근
print(vector[c(1, 3, 5)])


# 벡터 생성
vector <- c(10, 20, 30, 40, 50)

# 2번째 벡터 값인 20 삭제하기
vector <- vector[-2]

# 마지막 벡터 값인 50 삭제하기
vector <- vector[-length(vector)]

# 벡터 생성
vector <- c(10, 20, 30, 40, 50)

vector <- append(vector, 100, after = 2)

print(vector)

# 1부터 20까지 숫자로 구성된 벡터 생성
vector <- c(1:20)

# 10인 값을 100으로 변경하기
vector[vector==10] <-100

# 4의 배수인 값을 200으로 변경하기
vector[vector%%4==0] <-200

print(vector)