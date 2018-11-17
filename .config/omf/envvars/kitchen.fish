set -gx TK_IAM_PROFILE_NAME 'test-kitchen'
set -gx TK_AWS_PROFILE 'oim-dev'
set -gx TK_AWS_SSH_KEY_ID 'oim-dev'
set -gx TK_INSTANCE_TYPE 't2.small'
set -gx TK_SSH_KEY '~/.ssh/aws-oim-dev.pem'
set -gx TK_SSH_GATEWAY_USERNAME 'ec2-user'
set -gx KITCHEN_YAML .kitchen.ec2.yml
#set -gx KITCHEN_YAML .kitchen.yml
set -gx KITCHEN_LOCAL_YAML .kitchen.local.yml

# us-west-2
set -gx TK_REGION 'us-west-2'
set -gx TK_SUBNET_ID 'subnet-17991e4c'
set -gx TK_SECURITY_GROUP_ID 'sg-f9c54383'
set -gx TK_SSH_GATEWAY 'oim-dev-us-west-2'

# us-east-2
#set -gx TK_REGION 'us-east-2'
#set -gx TK_SUBNET_ID 'subnet-e037efad'
#set -gx TK_SECURITY_GROUP_ID 'sg-6f35d007'
#set -gx TK_SSH_GATEWAY 'oim-dev-us-east-2'
