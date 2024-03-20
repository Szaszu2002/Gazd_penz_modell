#k=c(83,91,122,107,74,123) #vektor a valószínűségekkel
#p=c(1/6,1/6,1/6,1/6,1/6,1/6) #vektor

illeszkedes=function(k,p){
N=sum(k)
r=length(k)
x=0

for (i in 1:r){
	x=x+(((k[i]-(N*p[i]))^2)/(N*p[i]))
}
print(x)
}