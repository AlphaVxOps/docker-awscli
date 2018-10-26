FROM docker:latest
RUN apk add py-pip jq
RUN pip install awscli ecs-deploy aws-shell
