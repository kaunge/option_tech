library(quantmod)
#auto.assign=FALSE���۰ʫ��w�ܼ�
STK <- na.omit(getSymbols("^TWII",auto.assign=FALSE))
#cbind��ɶ���[�Jdataframe
STK <- as.data.frame(STK)
STK <- cbind(row.names(STK),STK)
#������W��
colnames(STK) = c("Date","Open","High","Low","Close","Volume","Adjusted")
#�̷�Date����Ƨ�
STK = STK[rev(order(as.Date(STK$Date, format = "%y-%m-%d"))),]
#��Xcsv��
write.csv(STK, "C:\\xampp\\htdocs\\project\\json\\history.csv",row.names = FALSE)

head(STK)
tail(STK)