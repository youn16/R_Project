# 여러 테이블을 하나에 다 보이도록 표현하는 코드
# 여러 변수들 간의 산점도

vars <- c("mpg","disp","drat","wt")    # 대상 변수 
target <- mtcars[,vars]                # mtcars데이터의 시작 열 부터 vars에 존재하는 이름까지
head(target)

# 연비 : A, 연비 : B... 형태
pairs(target,                          # 대상 데이터     
      main="Multi Plots") 