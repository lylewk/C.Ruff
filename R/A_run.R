#' @title Albanese et al. (2016) stature regressions
#' @export
A_run=function(i.which='Fem',which.dat=2){
  if(which.dat==2) data(Europe2)
  else(data(Europe))
  bones=c('Fem','Tib','Hum','Rad')
  Row = which(i.which==bones)
  parms=A_reg[Row,]
  if(which.dat==2) dat = Europe2[,c(7,7+Row)]
  else(dat = Europe[,c(7,7+Row)])
  run_it(parms,dat,i.which,'Albanese et al. (2016),')
}
