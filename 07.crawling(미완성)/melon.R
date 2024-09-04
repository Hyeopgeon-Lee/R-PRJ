# 필요한 패키지 설치
install.packages("rvest")
install.packages("dplyr")

# 패키지 로드
library(rvest)
library(dplyr)

# 멜론 차트 URL
url <- 'https://www.melon.com/chart/index.htm'

# 웹페이지 읽기
webpage <- read_html(url)

# 순위 추출
rank <- webpage %>%
  html_nodes('span.rank') %>%
  html_text() %>%
  as.numeric()

# 노래 제목 추출
title <- webpage %>%
  html_nodes('div.ellipsis.rank01 a') %>%
  html_text()

# 가수 이름 추출
artist <- webpage %>%
  html_nodes('div.ellipsis.rank02 a') %>%
  html_text()

# 데이터 프레임으로 저장
melon_chart <- data.frame(순위 = rank, 노래 = title, 가수 = artist)

# 결과 확인
print(melon_chart)
