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
curl https://api.github.com/users/$1/repos | jq '.[].full_name'
}
 
main()
{

}
 
main
