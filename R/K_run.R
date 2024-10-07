#' @title Konigsberg & Jantz (2018) stature regressions
#' @description Does plot and returns some counts
#' @param w.which Character name indicating which long bone to use.  Possible
#' values are "Fem" for femur, "Tib" for tibia, "Hum" for humerus, and
#' "Rad" for radius.  Default: "Fem"
#' @param which.dat Integer indicating which data to use from Ruff's European data. The default
#' default value is 2, which uses "Europe2" or any other integer which uses "Europe".
#' See the description of these two data objects.
#' @details Uses the classical calibration method.
#' @return Plot and other info.
#' @export
K_run=function(i.which='Fem',which.dat=2,area=0.5){
  if(which.dat==2) data(Europe2)
  else(data(Europe))
  bones=c('Fem','Tib','Hum','Rad')
  Row = which(i.which==bones)
  parms=K_reg[Row,]
  if(which.dat==2) dat = Europe2[,c(7,7+Row)]
  else(dat = Europe[,c(7,7+Row)])
  run_it(parms,dat,i.which,'Konigsberg & Jantz (2018),',area)
}
