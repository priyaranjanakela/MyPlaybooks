#!/bin/bash

for i in "$@"
do
curl --digest -L -D - {{ $i }} --header "Content-Type: application/json" -u akela:Gibi@1234 -d '{"operation" : "add", "address" : {"deployment" : "SampleWebApp.war"}, "content" : [{"url" : "file:/tmp/SampleWebApp.war"}],"json.pretty":1}
done
