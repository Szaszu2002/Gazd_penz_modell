feladat_4=function(){
  set.seed(ss+27)
  n=1
  t=100/365
  mu=ax
  sigma=(ax+ay)/(ax+ay+az)
  S0=100
  dt=1/365
  gbm=GBM_simulate(n,t,mu,sigma,S0,dt)
  #n-mennyi szimulációs szeretnénk
  #t-a becslés mérete években
  #mu- a geomuetriai brown folyamat várható értéke
  #sigma- a geometriai brown folyamat szórása
  #S0- a szimuláció kezdő értéke
  #dt- megfigyelések nagysága
  plot(gbm,type="1")
  summary(gbm)
  skewness(gbm)
  kurtosis(gbm)
}