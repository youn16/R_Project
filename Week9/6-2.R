# ���� ���̺��� �ϳ��� �� ���̵��� ǥ���ϴ� �ڵ�
# ���� ������ ���� ������

vars <- c("mpg","disp","drat","wt")    # ��� ���� 
target <- mtcars[,vars]                # mtcars�������� ���� �� ���� vars�� �����ϴ� �̸�����
head(target)

# ���� : A, ���� : B... ����
pairs(target,                          # ��� ������     
      main="Multi Plots") 