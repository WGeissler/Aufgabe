#!/bin/bash
 
getdate()
{
       ....
}
 
help()
{
    if [ -z $1 ] 

       then  

          echo "Fehlerhafte Eingabe. Gib ./list_repos.sh gültigerUsername ein." 

    fi 
}
 
list()
{
    ...
}
 
main()
{
  help 
  date=$(getdate)
  list > $date
  cat $date
}

main 
