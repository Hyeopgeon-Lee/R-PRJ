# 필요한 패키지 설치
install.packages("rvest")
install.packages("dplyr")
install.packages("curl")

# 패키지 로드
library(openxlsx)
library(rvest)
library(dplyr)
library(curl)

# 멜론 차트 URL
url <- "https://www.melon.com/chart/index.htm"

# 웹페이지 읽기
webpage <- read_html(curl(url, handle = new_handle("useragent" = "Mozilla/5.0")))

# 순위 추출 (실제 페이지 구조에 맞는 선택자를 사용해야 함)
rank <- webpage %>%
  html_nodes('tbody span.rank') %>%  # 실제 CSS 선택자에 맞게 수정
  html_text() %>%
  as.numeric()

rank

# 노래 제목 추출
title <- webpage %>%
  html_nodes('div.ellipsis.rank01 a') %>%
  html_text()

title

# 가수 이름이 여러개 있는 경우가 있어, 여러 명인 경우 , 구분하여 표시
artist <- webpage %>%
  html_nodes('div.ellipsis.rank02 span.checkEllipsis') %>%
  lapply(function(node) {
    node %>%
      html_nodes('a') %>%
      html_text() %>%
      paste(collapse = ", ")  # 쉼표로 결합하여 하나의 문자열로 처리
  }) %>%
  unlist()

artist


# 데이터 프레임으로 저장
melon_chart <- data.frame(순위 = rank, 노래 = title, 가수 = artist, stringsAsFactors = FALSE)

# 결과 확인
View(melon_chart)

# 엑셀 파일 생성성
write.xlsx(melon_chart, sheetName="Sheet1", file = "data/melon_rank_20240904.xlsx")

