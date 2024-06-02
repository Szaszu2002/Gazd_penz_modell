feladat_2=function(zn){
  summary(zn)
  #Min: az adott vektorban tapasztalt legkisebb érték
  #1st Qu: első kvantilis, a megfigyelések 25%-a ettől az értéktől kisebb
  #Median: az adott vektorban tapasztalt medián
  #Mean: átlag, empirikus közép
  #3rd Qu: harmadik kvantilis, a megfigyelések 75%-a ettől az értéktől kisebb
  #Max: az adott vektorban tapasztalt legnagyobb érték
  library(moments)
  skewness(zn) #ferdeség megállapítása
  kurtosis(zn)  #lapultság vizsgálat
  cor(zn) #peremek függetlenségének vizsgálata
}