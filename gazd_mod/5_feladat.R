feladat_5=function(){
  details=read.csv("C:/Users/user/Desktop/gazd_mod/TSLA.csv")
  logreturn=c()
  zaro=details$Close
  for(i in 1:length(zaro)-1){
    logreturn[i]=abs(log(zaro[i+1]/zaro[i]))
  }
  chisq.test(logreturn) #Khi négyzet teszt
  
  #Statisztikák
  hist(logreturn, main="záró árak változása")
  plot(logreturn)
}