feladat_3=function(zn){ 
  #Adatok betöltése
  x=zn[,1]
  y=zn[,2]
  
  #Rács készítése
  grid_size=50
  x_range=seq(min(x), max(x), length.out=grid_size)
  y_range=seq(min(y), max(y), length.out=grid_size)
  
  #Kétváltozós sűrűség becslése
  library(MASS)
  fhat=kde2d(x,y,n=grid_size)
  
  #Plot-ok 2x2-es elhelyezése
  par(mfrow=c(2,2)) #plot ablak felosztása
  
  #Perspektivikus ábrázolás
  persp(x_range, y_range, fhat$z, theta = 45, phi = 20, xlab="X", ylab="Y", zlab="Z", main="Perspektivikus ábrázolás")    #perspektivikus ábrázolás
  
  #Szintvonalas ábrázolás
  contour(x_range, y_range, fhat$z, xlab="X", ylab="Y", main="Szintvonalak")  #szintvonalak ábrázolása
  plot(zn, main="A zn mátrix")
}