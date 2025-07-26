#!/bin/bash

updates=$(checkupdates | awk '{print $1,$2}')
update_count=$(echo "$updates" | grep -v '^$' | wc -l)

alt="has-updates"
if [ $update_count -eq 0 ]; then
    alt="updated"
else
    tooltip=$(echo "$updates" | sed ':a;N;$!ba;s/\n/\\n/g')
fi

echo "{ \"text\": \"$update_count\", \"tooltip\": \"$tooltip\", \"alt\": \"$alt\" }"
