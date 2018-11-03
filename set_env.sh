#!/usr/bin/env bash

# Remove any pre-existing export.sh fle
if [ -f exports.sh ]; then
  rm exports.sh
fi

# Create a new blank exports file
touch exports.sh

# List of required API services
APIServices=(
# Add API Services here for example:
# RESOURCE_API
# NODE_ENV
# SECRET_TOKEN
)

# Loop through each API service and prompt the user for a key
for service in "${APIServices[@]}"; do
   read -p "Enter the value for $service: " value

   # Write key to exports file
   echo "export $service=\"$value\"" >> exports.sh
done

completionMessage="
Alright! API key value pairs have been saved to exports.sh.
Make sure exports.sh is on your .gitignore file.
The app is now ready to run.

"

printf "$completionMessage"
