new_3=function(){
  lambda1=1/2
  lambda2=1/3
  corr_coeff=0.6
  
  library(MASS)
  mu=c(0,0)
  sigma=matrix(c(1, corr_coeff, corr_coeff, 1), nrow=2, ncol=2)
  n_minta=mvrnorm(1000, mu, sigma)
  
  e_minta = pnorm(n_minta) #átalakítom a mintát egyenletes eloszlásúvá
  exp_minta1=-log(1-e_minta[,1])/lambda1 #exponenciálisssá tovább alakítom
  exp_minta2=-log(1-e_minta[,2])/lambda2
  
  cov12= cov(exp_minta1, exp_minta2)
  matrix(c(sd(exp_minta1), cov12, cov12, sd(exp_minta2)), nrow=2, ncol=2)
  
  qqnorm(exp_minta1,main="első minta")
  qqnorm(exp_minta2, main="második minta")
}