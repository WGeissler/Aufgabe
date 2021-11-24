#!/bin/bash
 
getdate()
{
       ....
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
  help 
  date=$(getdate)
  list > $date
  cat $date
}
 
main
