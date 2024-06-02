bonusz=function(zn){  #eloszlás vizsgálat   #Poisson eloszlás
  library(ggpubr)
  ggdensity(zn[,1],main="Sűrűségdiagram (1)")
}

poisson=fuction(ax, ay, az){
  set.seed(ss+17)
  x=y=x.new=y.new=x.new.p=y.new.p=vector()
  for(i in 1:500){
    x=rpois(1,(ax+az) / (ax+ay+az))
    y=rpois(1,(ax+az) / (ax+ay+az))
    x.new=c(x.new, x)
    y.new=c(y.new, y)
    plot(x.new.p, y.new.p, type="b", main=paste("Poisson folyamat\nIdo", i,sep=""), xlab="x koordinatak", col=c(rep("gray", i-1), "red"),pch=c(rep(20,1-1),1))
  }
  poisson_q=matrix(c(x.new.p, y.new.p), ncol=2)
  return(poisson_q)
}