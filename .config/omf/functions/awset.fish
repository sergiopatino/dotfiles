function awset -d 'Call ase and asp to set AWS profile and ENV varbiales' -a aws_profile if test -n "$aws_profile"
            ase "$aws_profile"
            asp "$aws_profile"
end
