# �׷� ������ �ִ� �� ������ ������

iris.2 <- iris[,3:4]                # ������ �غ�
point <- as.numeric(iris$Species)   # ���� ���
point                               # point ���� ���
color <- c("red","green","blue")    # ���� �÷�
plot(iris.2, 
     main="Iris plot",
     pch=c(point),
     col=color[point]) 