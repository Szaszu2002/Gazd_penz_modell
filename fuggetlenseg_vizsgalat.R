
fuggetlenseg_vizsgalat=function(){
A=matrix(c(42,17,28,89,3,21),nrow=2,ncol=3)
r=2
s=3
N=sum(A)
x_2=0
for (i in 1:r){
	for (j in 1:s){
		x_2=x_2+(((A[i,j]-(sum(A[i,])*sum(A[,j]))/N)^2)/((sum(A[i,])*sum(A[,j]))/N))
	}
}
print(x_2)
}
