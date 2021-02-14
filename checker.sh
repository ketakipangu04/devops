#!/bin/bash

service_check()
{
	running=0
    count=`ssh -i ubuntu.pem ubuntu@3.83.33.186 sudo service nginx status | grep running | wc -l`

if [ $count -gt 0 ]; then
	running=1
       echo "Server is up and running"
fi
}

#else
	
#       echo "Server is down"
 #      echo "Starting the service"
  #  ssh -i ubuntu.pem ubuntu@3.83.33.186 sudo service nginx start
   # sleep 10

   echo ".............."
date
    service_check
    if [ $running -eq 1 ]; then
	   echo  ""

	else
		echo "server is down..... starting the server"
	       ssh -i ubuntu.pem ubuntu@3.83.33.186 sudo service nginx start
       sleep 10
               service_check
    fi






#fi
