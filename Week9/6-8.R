## (1) Prepare Data ----------------------
library(mlbench)
data("BostonHousing")
myds <- BostonHousing[,c("crim","rm","dis","tax","medv")]

## (2) Add new column ----------------------
grp <- c()
for (i in 1:nrow(myds)) {                   # myds$medv ���� ���� �׷� �з�
  if (myds$medv[i] >= 25.0) {
    grp[i] <- "H"
  } else if (myds$medv[i] <= 17.0) {
    grp[i] <- "L"
  } else {
    grp[i] <- "M"
  }
}
grp <- factor(grp)                          # ���ں��͸� ���� Ÿ������ ����
grp <- factor(grp, levels=c("H","M","L"))   # ������ ������ H,L,M -> H,M,L

myds <- data.frame(myds, grp)               # myds �� grp �÷��߰�

## (3) Add new column ----------------------
str(myds)  
head(myds)
table(myds$grp)                             # ���� ���� �׷캰 ����

## (4) histogram ----------------------
par(mfrow=c(2,3))                           # 2x3 ����ȭ�� ����
for(i in 1:5) {
  hist(myds[,i], main=colnames(myds)[i], col="yellow")
}
par(mfrow=c(1,1))                           # 2x3 ����ȭ�� ���� ����


## (5) boxplot ----------------------
par(mfrow=c(2,3))                           # 2x3 ����ȭ�� ����
for(i in 1:5) {
  boxplot(myds[,i], main=colnames(myds)[i])
}
par(mfrow=c(1,1))                           # 2x3 ����ȭ�� ���� ����

## (6) boxplot by group ------------------
boxplot(myds$crim~myds$grp, main="1�δ� ������")
boxplot(myds$rm~myds$grp, main="����  ��")
boxplot(myds$dis~myds$grp, main="�������ͱ����� �Ÿ�")
boxplot(myds$tax~myds$grp, main="���꼼")

## (7) scatter plot ------------------
pairs(myds[,-6])

## (8) scatter plot with group ------------------
point <- as.integer(myds$grp)                 # ���� ��� ����
color <- c("red","green","blue")              # ���� �� ����   
pairs(myds[,-6], pch=point, col=color[point])

## (9) correlation coefficient ------------------
cor(myds[,-6])