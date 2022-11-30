search()#comment
help(iris)
iris
head(iris,10)#앞에 6개만 보겠다, 앞에 10개만 보겠다
tail(iris)#뒤에 6개만 보겠다
example(head)

aaa <- head(iris,10)

aaa

ls()
rm(aaa)

#산술연산자
1+2
2+3
32-20
22/5
22 %% 5 #나머지
22 %/% 5 #몫

2**2#제곱
2^2#제곱

sqrt(8)#제곱근
abs(-10)#절대값

runif(10)#난수0~1사이의 수로 난수가 나옴

trunc(100.5)#소수점이하 버림

floor(-1.12) #올림

trunc(runif(10)*100)

trunc(runif(6, min =1 , max = 45))

round(100.567)#반올림
round(100.567,2)

data() #내장형 데이터

head(Nile)
tail(Nile)

#histogram 히스토그램(빈도수)
hist(Nile)
plot(Nile)
plot(iris)

plot(iris$Petal.Length,
     iris$Sepal.Length,
     col=iris$Species
     )















