# missing Values


v1= c(1,2,NA,NA,5)
v1=
is.na(v1)
sum(is.na(v1))
mean(v1)
mean(v1,na.rm=T) # remove NA values
v1a=na.omit(v1)
v1a
sum(v1a)
?na.omit
anyNA(v1)
#all
v1[is.na(v1)]=mean(v1,na.rm=T)
v1

#denoted by NA
install.packages('VIM')
library(VIM)
data(sleep,package = 'VIM') #another way of downloading packages
head(sleep)
dim(sleep)
complete.cases(sleep)# all complete rows without any missing values
sum(complete.cases(sleep))
sleep[complete.cases(sleep),]
sleep[!complete.cases(sleep),]
sum(!complete.cases(sleep))
is.na(sleep$Dream)
sum(is.na(sleep$Dream))
mean(is.na(sleep$Dream))

colSums(is.na(sleep))
rowSums(is.na(sleep))
head(sleep)
is.na(sleep[1;3,])
head(sleep)

install.packages('mice')
library(mice)
mice::md.pattern(sleep)



VIM::aggr(sleep,prop=F,numbers=T)
VIM::matrixplot(sleep)
VIM::marginmatrix(sleep,prop=F,numbers=T)
VIM::marginplot(sleep[c('Gest','Dream')],pch=c(20), col= c("darkgray","red","blue"))













