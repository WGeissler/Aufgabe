#!/bin/bash
 
getdate()
{	

	## date = Jahr_Kalenderwoche_Monat_Tag_Uhrzeit ##

      now=`date +%Y_%V_%m_%T`
      echo "$now"
}
 
help()
{
        ...
}
 
list()
{
    ...
}
 
main()
{
       echo hello
}
 
main
