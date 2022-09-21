    #!/bin/bash

    read n
    
    let n=n+1

    for (( c=0; c<$n; c++ ))
    do
         S[c]=1
    done
    g=$(echo "sqrt ( $n)" | bc -l) ; 
     for (( i=2; i<$n; i++ ))
    do
     
    if [[ " ${S[i]} " -eq 1 ]]; then
       let w=i*i
       while [ $w -le $n ]; do
     
     S[w]=0 
     let w=w+i
     
    done
     
    fi
     
     
    done
     for (( i=2; i<=$n; i++ ))
    do
       if [[ " ${S[i]} " -eq 1 ]]; then
       echo " $i "
       fi
    done
