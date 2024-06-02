new_4=function(){
  n = 800
  shape=1+(ax+az)/(ax+ay+az)
  location=100
  scale=11
  skew=0
  set.seed(ss+139)
  library(stabledist)
  stab_minta = rstable(n, shape, skew, scale, location) #stabilis eloszlású minta generálása
  plot(stab_minta, main="Plot ")
  qqnorm(stab_minta, main="Q-Q Plot")
  dens=density(stab_minta)
  plot(dens, main="Sűrűség")
  
  fit_norm=fitdist(stab_minta, "norm")  #nem normális eloszlást mutat!
  ks.test(stab_minta, "pnorm", fit_norm$estimate[1])
  
  fit_t=fitdistr(stab_minta, "t") #nem is student eloszlású!
  ks.test(stab_minta, "pt", fit_t$estimate["df"])
}