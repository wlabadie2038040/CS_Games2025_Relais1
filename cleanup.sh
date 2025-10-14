#!/bin/bash
cat customer_profiles.csv  | wc -l
##sed -i '/,,/d' customer_profiles.csv
#cat customer_profiles.csv  | wc -l

while IFS=, read -r field1 field2 field3 field4 field5 field6
do
    echo "$field1 and $field2 and $field3"
    if [ ! "$field3" ]; then
        echo "empty"
    fi
done < customer_profiles.csv
