month = 1:12
late1  = c(5,8,7,9,4,6,12,13,8,6,6,4)
late2  = c(4,6,5,8,7,8,10,11,6,5,7,3)
plot(month,                                # x data
     late1,                                # y data
     main="Late Students",
     type= "b",                            # �׷����� ���� ����(���ĺ�) 
     lty=1,                                # ���� ����(line type) ����
     col="red",                            # ���� ���� ����          
     xlab="Month ",                        # x�� ���̺�
     ylab="Late cnt",                      # y�� ���̺�
     ylim=c(1, 15)                         # y�� ���� (����, ����)
)
lines(month,                               # x data
      late2,                               # y data
      type = "b",                          # ���� ����(line type) ����
      col = "blue")                        # ���� ���� ����