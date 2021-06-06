#!/bin/bash

jboss_url=http://$(ifconfig | head -2 | tail -1 | awk '{print $2}'):9990/management 

                curl --digest -L -D - {{ $jboss_url }} --header "Content-Type: application/json" -u akela:Gibi@1234 -d '{"operation" : "add", "address" : {"deployment" : "SampleWebApp.war"}, "content" : [{"url" : "file:/tmp/SampleWebApp.war"}],"json.pretty":1}'
