poli2_reg=function()

x=rnorm(100)
y=rnorm(100)

n=length(x)
a1=0
a2=0
a3=0
a4=0
a5=0
a6=0
a7=0
a8=0

d1=0
d2=0
d3=0
d4=0
d5=0
d6=0
d7=0
d8=0


for (i in 1:n){
	a1=a1+x[i]^2*y[i]
	a2=a2+x[i]^3
	a3=a3+x[i]^2
	a4=a4+x[i]*y[i]
	a5=a5+x[i]^2
	a6=a6+x[i]
	a7=a7+y[i]
	a8=a8+x[i]

	d1=d1+x[i]^4
	d2=d2+x[i]^3
	d3=d3+x[i]^2
	d4=d4+x[i]^3
	d5=d5+x[i]^2
	d6=d6+x[i]
	d7=d7+x[i]^2
	d8=d8+x[i]
	
}
det=d1*(d5*n-d8*d6)-d2*(d4*n-d7*d6)+d3*(d4*d8-d7*d5)
a_2=(a1*(a5*n-a8*a6)-a2*(a4*n-a7*a6)+a3*(a4*a8-a7*a5))/det