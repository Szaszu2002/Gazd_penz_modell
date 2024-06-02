 new_2=function(ss,ax,ay){
  set.seed(ss)
  nx=500
  v=matrix(c(ax,abs(ax-ay),abs(ax-ay),ay),2)
  w=chol(v)
  z1=tan(pi*(runif(nx)-0.5))
  z2=tan(pi*(runif(nx)-0.5))*2
  zm=matrix(c(z1,z2),ncol=2)
  zn=10*zm%*%w
  
  #x=zn[,1]
  #y=zn[,2]
  
  #Rács készítése
  #grid_size=50
  #x_range=seq(min(x), max(x), length.out=grid_size)
  #y_range=seq(min(y), max(y), length.out=grid_size)
  
  #Kétváltozós sűrűség becslése
  library(MASS)
  #fhat=kde2d(x,y,n=grid_size)
  
  #Plot-ok 2x2-es elhelyezése
  #par(mfrow=c(2,2)) #plot ablak felosztása
  
  #Perspektivikus ábrázolás
  #persp(x_range, y_range, fhat$z, theta = 45, phi = 20, xlab="X", ylab="Y", zlab="Z", main="Perspektivikus ábrázolás")    #perspektivikus ábrázolás
  
  #Szintvonalas ábrázolás
  #contour(x_range, y_range, fhat$z, xlab="X", ylab="Y", main="Szintvonalak")  #szintvonalak ábrázolása
  #plot(zn, main="A zn mátrix")
  
  ##Júlia
  summary(zn)
  library(moments)
  skewness(zn)
  kurtosis(zn)
  
  library(fitdistrplus) #paraméter becslés adott eloszlást feltételezve
  fit_norm_zn1 = fitdist(zn[,1], "norm")
  fit_exp_zn1 =fitdist(zn[,1], "exp")
  
  ks.test(zn[,1], "pnorm", fit_norm_zn1$estimate[1], fit_norm_zn1$estimate[2])
  ks.test(zn[,1], "pexp", fit_exp_zn1$estimate[1]) #0.05 fölött van, így exponenciális eloszlású
  
  fit_norm_zn2 = fitdist(zn[,2], "norm")
  fit_exp_zn2 =fitdist(zn[,2], "exp")
  
  ks.test(zn[,2], "pnorm", fit_norm_zn2$estimate[1], fit_norm_zn2$estimate[2])
  ks.test(zn[,2], "pexp", fit_exp_zn2$estimate[1])
  
  #Sűrűségfüggvény kirajzolása
  dens=density(zn[,2])
  plot(dens, main="Második perem sürüségfüggvénye") #Weibull az ábra alapján
  
  mean(zn[,2])
  
  #b
  qqnorm(zn) #exponenciális a kétdimenziós eloszlás
 }