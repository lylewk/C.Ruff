#' @title Albanese et al. (2016) stature regressions
#' @export
S_run=function(i.which='Fem',which.dat=2,area=0.5){
  if(which.dat==2) data(Europe2)
  else(data(Europe))
  bones=c('Fem','Tib','Hum','Rad')
  Row = which(i.which==bones)
  parms=S_reg[Row,]
  if(which.dat==2) dat = Europe2[,c(7,7+Row)]
  else(dat = Europe[,c(7,7+Row)])
  run_it(parms,dat,i.which,'Sjovold (1990),',area)
}
