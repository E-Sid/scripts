#/!/bin/bash

echo "what is the AVPU score (A/V/P/U)"
while true; do
read avpu
case $avpu in
    [Aa] ) echo "The AVPU score is A (Alert) GCS 15/15";
	   break;;
    [vV] ) echo "The AVPU score is V (verbal) GCS 13/15";
	   break;;
    [pP] ) echo "The AVPU score is P (Pain response) GCS 8/15";
	   break;;
    [uU] ) echo "The AVPU score is U (Unresponsive) GCS 3/15";
	   exit;;
       * ) echo "Invalid response"
esac
done
		      
       
