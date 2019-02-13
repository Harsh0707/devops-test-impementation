Devops Test Implementation

Prerequisites:

AWS_ACCOUNT_ID
AWS_ACCESS_KEY_ID
AWS_SECRET_ACCESS_KEY
AWS_REGION


The test is carried out as a Dockerized web applicaiton on CirclCI, push to AWS EC2 container registry and deploy onto AWS ECS container cluster.
.
 Infrastructure consists of ECS CLuster, VPC, ALB and is deployed using CFN templates.

CircleCI is configure as a CI pipleline which will automatically upload  new docker image on ECR when a new code is triggered in github. The above pre-requisites needs to be configured in circleci for pipeline to be implemented.
