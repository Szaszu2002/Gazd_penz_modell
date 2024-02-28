x = rnorm(100)
atlag = function(x){
s = 0
n = length(x)
for (i in 1:n){
	s = s + x[i]
}
print(s/n)

}