Devops Test Implementation

Prerequisites:

```
AWS_ACCOUNT_ID
AWS_ACCESS_KEY_ID
AWS_SECRET_ACCESS_KEY
AWS_REGION

```

The application is deployed as a Dockerized web application using CirclCI, push to AWS EC2 container registry and deploy onto AWS ECS container cluster.


Infrastructure consists of ECS CLuster, VPC, ALB, ASG's etc. and is deployed using CFN templates.


NOTE: Parameters to deploy cfn templates can either be exported or passed in var file using aws cli.



CircleCI is configured as a CI pipleline which will automatically upload new docker image on ECR when a  code is deployed in github. The above pre-requisites needs to be configured in circleci for pipeline to be implemented.

Also, currently the ECS cluster is deployed in public subnets, for prod deployments private subnets are to be deployed.


------------------------------------------

Alternate Method:

- The infrastructure can be deployed using terraform as well.
- Other method to deploy web application is using kops in aws and integrating it with circleci.

