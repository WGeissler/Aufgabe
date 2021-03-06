#!/bin/bash
 
getdate()
{	

	## date = Jahr_Kalenderwoche_Monat_Tag_Uhrzeit ##

      now=`date +%Y_%V_%m_%T`
      echo Repos_$now
}
 
help()
{ 

          echo 'Fehlerhafte Eingabe. Gib "./list_repos.sh gültigerUsername" ein.' 
}
 
list()
{
  A=$(curl --silent https://api.github.com/users/$1/repos 2>/dev/null)
  B=$(curl --silent https://api.github.com/users/$1/repos 2>/dev/null | jq '.[].full_name' 2>/dev/null)
  C=$(echo $A | grep -c full_name)

  if [[ $C -gt 0 ]]; then 
     echo $B 

  fi
}

list()
{
a=$(curl -s https://api.github.com/users/$1/repos | jq '.[].full_name' 2> /dev/null)
b=$(curl -s https://api.github.com/users/$1/repos | grep -c full_name)



if [[ $b -gt 0 ]]
then
echo $a
fi
}

main ( )
{
if [ -z $1 ]
then
  help
else
  r=$(list $1)
 
 if [[ -z $r ]]
 then
   echo "Ungültiger Username"
 else
   echo $r > $(getdate)
 fi

fi
}
 
main() 
{ 
Suchdirwasaus=$(list $1)

if [ -z $Suchdirwasaus ]; then
  echo "Fehler" 
else 
echo $Suchdirwasaus > $(getdate)
fi
}
if [ -z $1 ]; then 
  help
else 
  main $1
fi
