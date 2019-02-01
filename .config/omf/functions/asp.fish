function asp -d 'Switches AWS profile' -a aws_profile
    set -x CONFIG_FILE ~/.aws/config
    if test -n "$aws_profile"
        if fgrep -q "[profile $aws_profile]" $CONFIG_FILE
            echo Setting AWS_PROFILE to $aws_profile
            set -gx AWS_PROFILE $aws_profile

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
                end

                if [ $env_name = "region" ]
                    set -x env_name 'AWS_DEFAULT_REGION'
                    set -xg $env_name $env_val
                end
            end

            if test -n "$AWS_ACCESS_KEY_ID"
                echo "Clearing session tokens."
                set -eg AWS_ACCESS_KEY_ID
                set -eg AWS_SECRET_ACCESS_KEY
                set -eg AWS_SESSION_TOKEN
            end
        else
            echo "Could NOT find profile $aws_profile in config file ($CONFIG_FILE). No profile set"
        end
    else
       if test -n "$AWS_PROFILE"
           echo "Profile: $AWS_PROFILE"
       else
           echo "Profile: No profile set"
       end

       if test -n "$AWS_DEFAULT_REGION"
           echo "Region: $AWS_DEFAULT_REGION"
       else
           echo "Region: No region set"
       end
    end
end
