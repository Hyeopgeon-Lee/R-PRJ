# --------------------------------------------------------------------
# 결측지 대체 방법 예제(평균값 대체)
# --------------------------------------------------------------------

# 벡터 생성
score <- c(90, 85, NA, 88, 95, NA, 92, 85, 90, NA)

# 벡터 출력
print(score)

# 결측치 확인

na_count <- sum(is.na(score))

print(paste("결측치 개수: ", na_count)) # 출력 값 : 3
                   
# 결측치를 평균값으로 대체
mean_score <- mean(score, na.rm = TRUE) # NA 제외한 값 평균 계산
mean_score

score_mean_imputed <- score #기존 score 저장
score_mean_imputed[is.na(score_mean_imputed)] <- mean_score # NA에 평균값 넣기

print(score_mean_imputed)


