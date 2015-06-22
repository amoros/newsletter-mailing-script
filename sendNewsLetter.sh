#######################################
# Every Friday ~after lunch CERT-SE   # 
# send out their newsletter of the    #
# week. This is how to get it emailed #
# to an email address of your choice  #
#######################################
#!/bin/bash

# Find out what date, month, week and year it is
YEAR="$(date -d -I '+%G')"
MONTH="$(date -d -I '+%m')"
WEEK="$(date -d -I '+%U')"
URL="https://www.cert.se/"$YEAR"/"$MONTH"/""cert-se-s-veckobrev-v-"$WEEK

# wget the latest newsletter
wget $URL -q -O latest.cert

# Provide some feedback
echo "Getting: " $URL
echo "Saved as: lastest.cert" 

# Do some primitive dirty parsing and send it away
cat latest.cert | grep -A 50 "Nyheter i veckan" | mailx -s "CERT-SE newsletter v.  $WEEK" <email-address>@emailprovider.com

# Close connection
echo "Latest newslatter sent to the specified email address"
