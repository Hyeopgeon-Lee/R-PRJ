# --------------------------------------------------------------------
# 가수별 멜론 차트에 랭크된 노래 수를 분석하기
# --------------------------------------------------------------------

# 필요한 패키지 로드
library(readxl)

# 엑셀 파일에서 멜론 차트 데이터 불러오기
melon <- read_excel("data/melon_rank_20240904.xlsx", sheet = "Sheet1")

# 가수별 곡 수 계산
artist_song_count <- table(melon$가수)

# 데이터프레임으로 변환
artist_song_df <- as.data.frame(artist_song_count)

# 컬럼 이름 수정
colnames(artist_song_df) <- c("가수", "곡 수")

# 곡 수가 많은 순으로 정렬 (order() 함수 사용)
artist_song_df_sorted <- artist_song_df[order(-artist_song_df$`곡 수`), ]

# 결과 확인
View(artist_song_df_sorted)



# --------------------------------------------------------------------
# 랭크된 노래 수가 많은 가수 10명을 대상으로 시각화하기
# --------------------------------------------------------------------
library(ggplot2)

# 상위 10명의 가수 추출
top_artists <- artist_song_df %>%
  arrange(desc(`곡 수`)) %>%
  head(10)

# 막대그래프 그리기
ggplot(top_artists, aes(x = reorder(가수, `곡 수`), y = `곡 수`)) +
  geom_bar(stat = "identity") +
  coord_flip() +
  labs(title = "가수별 멜론 차트 곡 수", x = "가수", y = "곡 수") +
  theme_minimal()
