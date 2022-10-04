expressions<-function(n){
  total<-0
  num<-0
  for(i in 1:n){
    for(j in i:n){
      total<-total+j
      if(total==n){num<-num+1}else{if(total>n){break}}
      j<-j+1
    }
    total<-0
    i<-i+1
  }
  return(num)
}
