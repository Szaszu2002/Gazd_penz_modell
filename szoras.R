x = rnorm(100)
szoras = function(x){
s = 0
n = length(x)
source('atlag.R')
a=atlag(x)
for (i in 1:n){
	s=s+(x[i]-a)^2
}
print(s/(n-1))
}
	

