var1 <- 2
2 -> var1
var1 = 2

head(iris)

sum(iris$Sepal.Length) + sum(iris$Sepal.Width)

sum(iris$Sepal.Length[1 : 10])

sum(1:100)
sum(10,20,30)

var1
var1[1]

num2 <- c(10,20,30)

num2[2] + num2[1]

sum(num2)

sum(10,20,30,NA, na.rm = T)

#자료형 확인
is.numeric(iris$Sepal.Length) #숫자인가
is.integer(iris$Sepal.Length) #정수인가
is.double(iris$Sepal.Length) #소수인가
class(iris$Sepal.Length) #자료형 알려줌
is.data.frame(iris)
class(iris)
sum(is.na(iris$Sepal.Length))

#iris 의 자료구조 확인하기

str(iris)

num1 <- "12345"

is.numeric(num1)

num1 <- c(1,2,3,"4")

num1

class(num1)


num2 <- as.numeric(num1)
num2

class(num2)

#Factor(요인형 : 범주형(category))변환

gender <- c("man","woman","woman","man","man")
gender
class(gender)

#빈도수 확인
table(gender)

#문자열 테이터를 factor로 변환하기
Ngender <- as.factor(gender)

Ngender

table(Ngender)
plot(Ngender)

str(Ngender)

#날짜형 변환
date1 <- "17/02/18"
date1 

as.Date(date1,"%y/%m/%d")
as.Date("2018/12/31", "%Y/%m/%d")

#진짜 요일 데이터인지 확인하기
datas <- c("02/28/17","02/29/17","03/01/17")
datas
as.Date(datas,"%m/%d/%y")

#날짜계산
mydates <- as.Date(c("2007-06-22","2004-02-13"))
mydates
mydates[1]-mydates[2]

#현재일자 기준으로 날짜 계산하기
Sys.Date()
class(Sys.Date())

Sys.Date() - as.Date("1993-11-14")
num1 <- 1234
as.character(num1)

#Vector 자료구조
# - 1차원 선형 자료구조 형태
# - 구성 : 변수[첨자],첨자는 1부터 시작
# - 동일한 자료형의 데이터만 저장 할 수 있다.
# - 벡터 생성 함수 : c(), seq(), rep()
# - 벡터 처리함수 : sum(), mean(), sd(), union()


head(iris)
#iris의 Sepal.Length 컬럼의 내용을 1차원 벡터로 만들기
irisSepalLength <- iris$Sepal.Length
irisPetalLength <- iris$Petal.Length
#벡터인지 확인하기
is.vector(irisSepalLength)

sum(irisSepalLength)
mean(irisSepalLength)
max(irisSepalLength) - max(irisPetalLength) 
mean(irisSepalLength) - mean(irisPetalLength) 
min(irisSepalLength)

mean(irisPetalLength)
median(irisPetalLength)
mean(irisSepalLength)
median(irisSepalLength)#중앙값

range(irisSepalLength)[1] == min(irisSepalLength)

sd(irisSepalLength)

a <- c(1,1,3,4,5)
mean(a)
sd(a)

sum(irisPetalLength[c(1,10,11)])


sum(irisSepalLength[c(1:20,30,40)])

#벡터형 자료의 일부를 변경
x <- c(10,20,30,40,50)
x
y <- replace(x, c(2, 4), c(200, 400))
y

#초기값, 최종값, 증가값으로 구성되는 벡터 함수 생성
seq(1, 10, 0.5)

#1부터 10까지의 홀수, 1에서 10,50,60을 벡터로 만들어 합계 구하기

y <- c(seq(1,10,2), 1:10, 50,60)
y
sum(y)

#repeat
rep(1:3,3)
c(rep("red",4),"grean")
rep(c(1,4,7,9),3)
rep(1:3, each=3)

#1~20까지의 숫자중 짝수만 2번 반복하여 벡터를 만들고 합꼐 구하기

x <- rep(seq(0,20,2),2)
x
sum(x)


#합집합

x <- c(1,3,5,7,9)
y <- c(3,5)
union(x,y)

#교집합
intersect(x,y)

#차집합
setdiff(x,y)

#
sample(1:10,2)

sample(1:10, 10)
sample(1:45, 6)

sort(sample(1:45, 6))

#iris의 Sepal.Length와 Petal.Length의 교집합의 갯수
length(intersect(irisSepalLength,irisPetalLength))

#iris의 Sepal.Length와 Petal.Length의 합집합의 갯수
length(union(irisSepalLength,irisPetalLength))

#1차원 벡터 Data 에 이름 설정하기
age <- c(30,35,40); age
names(age) <- c("유비","관우","장비" ); age

#중복값을 제거하기
iris$Sepal.Length
unique(iris$Sepal.Length)
unique(iris$Species)

x <- rep(c("a","b","c"),4)

sum(match(x,"a"), na.rm = T)

table(match(x,"a"))

match(x,c("a","b"))
table(match(x,c("a","b")))

name <- c("Apple", "Computer", " Samsung", "Communication")

#name 에서 Co를 가지고 있는 단어의 번지수
name[grep("Co", name)]

#name 에서 om를 가지고 있는 단어의 번지수
name[grep("om", name)]

a <- 1:500
a

#10번~전체 Data중에 끝에서 5개는 빼고 출력
a[10:(length(a)-5)]
a

#1번지 값 지우기
a <- 10:50
a <- a[-1]
a

#10,11,12 번지 값 지우기
a <- a[-c(10:12,grep(13,a))]


#a의 홀수번지 Dara의 합계 구하기
a <- 10:50

sum(a[seq(1,length(a),2)])

#최대값과 최소값의 차이가 3보다 큰지 확인

if(max(a) - min(a) > 3){
  FALSE
}

max(a) - min(a) > 3






