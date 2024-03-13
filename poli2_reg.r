poli2_reg=function(){

x=c(1,2,3,4,5)
#y=c(15,5*2^2+3*2+7,5*3^2+3*3+7,5*4^2+3*4+7)
y=5*x^2+3*x+7
#y=3*x+7 #lineáris regresszió

n=length(x)
a1=0
a2=0
a3=0
a4=0
a5=0
a6=0
a7=0
a8=0

b1=0
b2=0
b3=0
b4=0
b5=0
b6=0
b7=0
b8=0

c1=0
c2=0
c3=0
c4=0
c5=0
c6=0
c7=0
c8=0
c9=0

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

	b1=b1+x[i]^4
	b2=b2+x[i]^2*y[i]
	b3=b3+x[i]^2
	b4=b4+x[i]^3
	b5=b5+x[i]*y[i]
	b6=b6+x[i]
	b7=b7+x[i]^2
	b8=b8+y[i]

	c1=c1+x[i]^4
	c2=c2+x[i]^3
	c3=c3+x[i]^2*y[i]
	c4=c4+x[i]^3
	c5=c5+x[i]^2
	c6=c6+x[i]*y[i]
	c7=c7+x[i]^2
	c8=c8+x[i]
	c9=c9+y[i]

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
a_1=(b1*(b5*n-b8*b6)-b2*(b4*n-b7*b6)+b3*(b4*b8-b7*b5))/det
a_0=(c1*(c5*c9-c8*c6)-c2*(c4*c9-c7*c6)+c3*(c4*c8-c7*c5))/det
print(a_0)
print(a_1)
print(a_2)

plot(x,y)
x_line=seq(0,5, by=0.1)
lines(x_line, a_2*x_line^2+a_1*x_line+a_0)

}