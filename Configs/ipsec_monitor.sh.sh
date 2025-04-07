#!/bin/bash

LOG_FILE="/var/log/ipsec_status.log"
SUBNET="192.168.20"

# Infinite loop to continuously check IP connectivity
while true; do
    # Initialize a flag to track connectivity
    CONNECTIVITY_OK=0

    # Check connectivity to each IP in the subnet
    for i in {1..254}; do
        IP="$SUBNET.$i"
        ping -c 1 -W 1 "$IP" > /dev/null 2>&1
        if [ $? -eq 0 ]; then
            CONNECTIVITY_OK=1
            break # Exit the loop if any IP responds
        fi
    done

    if [ $CONNECTIVITY_OK -eq 0 ]; then
        # If no IP is reachable, log the issue and restart IPsec
        echo "$(date): No connectivity to any IP in $SUBNET. Restarting IPsec..." >> $LOG_FILE
        sudo /usr/sbin/ipsec restart
        echo "$(date): IPsec restarted." >> $LOG_FILE
    else
        # Log successful connectivity
        echo "$(date): Connectivity is okay. At least one IP responded." >> $LOG_FILE
    fi
    
    # Sleep for a while before checking again
    sleep 300
done

