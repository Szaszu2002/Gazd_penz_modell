x=rnorm(100,30)
y=rnorm(100,30)

linreg=function(x,y){
  n=length(x)
  a1=0
  b1=0
  c1=0
  a2=0
  c2=0
  for (i in 1:n){
    a1=a1+x[i]*y[i]
    b1=b1+(-x[i])
    c1=c1+y[i]
    
    a2=a2+x[i]^2
    c2=c2+x[i]
  }
  a=(a1*n-c1*b1)/(a2*n-c2*b1)
  b=(a2*c1-c2*a1)/(a2*n-c2*b1)
  print(a)
  print(b)
  
  return( list(a=a, b=b))
}

VAL <- linreg(x,y)

plot(x, y, pch=19)
lines(x, VAL$a*x+VAL$b*x, col="green", lwd=2)
