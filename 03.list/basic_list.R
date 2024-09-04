
# 간단한 리스트 생성
my_list <- list(
  name = "홍길동",
  age = 30,
  scores = c(90, 85, 88),
  details = list(
    married = TRUE,
    children = 2
  )
)

# 새로운 요소 추가
my_list$address <- "서울시 강남구"
print(my_list$address)

# 기존 요소 수정
my_list$age <- 31
print(my_list$age)


# 리스트의 요소 접근
print(my_list$name)  # 이름 출력
print(my_list$age)   # 나이 출력
print(my_list$scores)  # 점수 출력

# 중첩 리스트의 요소 접근
print(my_list$details$married)  # 결혼 여부 출력
print(my_list$details$children)  # 자녀 수 출력


# 리스트 출력
print(my_list)