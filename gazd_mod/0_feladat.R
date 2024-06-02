feladat_0=function(){
  x="r65ukg"
  z=charToRaw(iconv(x, "latin1", "UTF-8"))
  for(i in 1:6) v=paste("0x", z, sep="")
  e=strtoi(v)
  ax=e[1]; ay=e[2]; az=e[3]; av=e[4]; ss=sum(strtoi(v))+9
  cat("ax=", ax, "\n")  #114
  cat("ay=",ay, "\n")   #54
  cat("az=",az, "\n")   #53
  cat("av=",av, "\n") #117
  cat("ss=",ss, "\n") #557
  ar=c("FB","AAPL","AMZN","GOOG","NFLX","TSLA")
  ai=ss-6*floor(ss/6)   #5
  ev=2019-(ss-10*floor(ss/10))
  cat("ev=",ev,"\n")  #2012
  cat("reszveny=",ar[ai+1],"\n")  #TSLA
}