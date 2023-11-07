library(progress)
make_time <- function(s, name="waiting"){
  pb <- progress_bar$new(
    format = paste0(" ", name, " [:bar] :percent eta: :eta"),
    total = s*2, clear = FALSE, width= 60)
  
  for(i in 1:(s*2)){
    pb$tick()
    Sys.sleep(0.5)
  }
}
