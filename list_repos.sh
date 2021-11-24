#!/bin/bash
 
getdate()
{	

	## date = Jahr_Kalenderwoche_Monat_Tag_Uhrzeit ##

      now=`date +%Y_%V_%m_%T`
      echo "Repos $now"
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
	curl https://api.github.com/users/$1/repos | jq '.[].full_name'
}
 
main ( ) 
{
  help 
  date=$(getdate)
  list > $date
  cat $date
}

main 
