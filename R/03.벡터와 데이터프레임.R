c(seq(1,5,2),1:10,seq(1,10,2),rep(1:3,2))

head(iris)
irisTemp <- iris[1:5,c(-5)]

irisTemp
#행과 열을 뒤집기
t(irisTemp)


#iris 데이터의 10의 배수 행만 출력하기

iris[seq(1,(nrow(iris)/10))*10,]

iris[seq(10,nrow(iris),10),]

length(iris)
nrow(iris)
ncol(iris)

#iris의 1~10까지의 데이터중 sepal.Length와 Sepal.width만 출력

iris[1:10,c("Sepal.Length","Sepal.Width")]

colnames(iris)
rownames(iris)

#기본통계량
summary(iris)

str(iris)






