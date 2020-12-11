#!/usr/bin/env bash

#PREREQUISTES
#- Must have .aws credentials configured

INI_FILE=~/.aws/credentials
awsprofile="[profilename]"

#Loop through credentials file and read all profiles
while IFS=' = ' read key value
do
    if [[ $key == \[*] ]]; then
        section=$key
    elif [[ $value ]] && [[ $section == ''"$awsprofile"'' ]]; then
        if [[ $key == 'aws_access_key_id' ]]; then
            export AWS_ACCESS_KEY_ID=$value
        elif [[ $key == 'aws_secret_access_key' ]]; then
            export AWS_SECRET_ACCESS_KEY=$value
        elif [[ $key == 'aws_session_token' ]]; then
                export AWS_SESSION_TOKEN=$value
        fi
    fi
done < $INI_FILE

#echo is only here for validation please remove when running script.
echo $AWS_ACCESS_KEY_ID
echo $AWS_SECRET_ACCESS_KEY
echo $AWS_SESSION_TOKEN