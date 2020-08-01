#!/bin/bash

## ./re.sh attempt 2

# move to proper directory
cd /etc/apache2/sites-available

# disable vhost config
sudo a2dissite *
sudo service apache2 restart

# enable vhost config
sudo a2ensite *
sudo service apache2 restart





























#### ./re.sh attempt one. Works, but not fully. Redoing exercise (above script) for understanding after completing Traversy Media basic script tutorial


# CONFIG="$1"
# COMMAND="$2"

# VHOSTS_PATH=/etc/apache2/sites-available/*.conf


# # only allow reload or restart.
# if [ "$COMMAND" == "reload" ] || [ "$COMMAND" == "restart" ]
# then
#     if ["$CONFIG" === "$VHOST_PATH[@]"]
#     then
#         # Move the current execution state to the proper directory
#         cd /etc/apache2/sites-available

#         # Disable a vhost configuration
#         sudo a2dissite "$CONFIG"
#         sudo service apache2 "$COMMAND"

#         # Enable a vhost configuration
#         sudo a2ensite "$CONFIG"
#         sudo service apache2 "$COMMAND"
#     else
#         echo "ERROR: "$CONFIG" is not a working config file. Please select from the following:"
#         for FILENAME in $VHOSTS_PATH
#         do
#         echo $FILENAME
#         done
#         exit 1
#     fi
# else
#     echo "ERROR: $0 requires two paramters {virtual-host} {restart|reload}"
#     exit 1
# fi

# Update the re.sh script such that

# The user will receive an error message if they attempt to reload/restart a virtual-host file that does not exist in /etc/apache2/sites-available.
# The system will return a list of valid files as a part of the error message.
# The system will exit prior to evaluating the reload command if an invalid virtual-host has been chosen.