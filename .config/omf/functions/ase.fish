function ase -d 'Sets AWS Session Keys' -a aws_profile
    set -x CONFIG_FILE ~/.aws/config
    if test -n "$aws_profile"
        if fgrep -q "[profile $aws_profile]" $CONFIG_FILE

            #if test -n "$AWS_PROFILE"
            #    echo "Unsetting AWS_PROFILE environment variable"
            #    set -eg AWS_PROFILE
            #end

            set -x lines (grep -A99 -E "\[profile $aws_profile\]" $CONFIG_FILE)
            for line in $lines[2..-1]
                # Skip if line is emty
                if  test -z "$line"
                    continue
                end

                # The grep will return 0 when match
                if echo $line | grep -Eq '^ *\[.*\] *$'
                    # Beginning of new section
                    break
                end

                set -x env_name (echo $line | grep -Eo '^ *[^=]+ *' | xargs)
                set -x env_val (echo $line | grep -Eo ' *[^=]+ *$' | xargs)

                # Do eiam login if found in config
                if [ $env_name = "credential_process" ]
                    eval eiam login spatino

                    if test -z (eiam creds list | grep $aws_profile)
                        set -x accountid (echo $env_val | awk '{print $4}')
                        eval eiam creds get $accountid PowerUser
                    else
                        eval eiam creds refresh $aws_profile
                    end
                end

                if [ $env_name = "region" ]
                    set -x env_name 'AWS_DEFAULT_REGION'
                    set -xg $env_name $env_val
                end
            end

            set -gx AWS_ACCESS_KEY_ID (eiam creds env $aws_profile aws_access_key_id)
            set -gx AWS_SECRET_ACCESS_KEY (eiam creds env $aws_profile aws_secret_access_key)
            set -gx AWS_SESSION_TOKEN (eiam creds env $aws_profile aws_session_token)
        else
            echo "Could NOT find profile $aws_profile in config file ($CONFIG_FILE). No profile set"
        end
    else
       if test -n "$AWS_DEFAULT_REGION"
           echo "Region: $AWS_DEFAULT_REGION"
       else
           echo "Region: No region set"
       end
    end
end

