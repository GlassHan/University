change<-function(n){
  target=5
  coins=c(1,2,5)
  ways=rep(c(1,0),c(1,target))
  for(coins in coins){
    for(i in (coins+1):(target+1)){
      ways[i]=ways[i]+ways[i-coins]
    }
  }
  print(ways[target+1])
}
  


