# 그룹 정보가 있는 두 변수의 산점도

iris.2 <- iris[,3:4]                # 데이터 준비
point <- as.numeric(iris$Species)   # 점의 모양
point                               # point 내용 출력
color <- c("red","green","blue")    # 점의 컬러
plot(iris.2, 
     main="Iris plot",
     pch=c(point),
     col=color[point]) 
