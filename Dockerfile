FROM docker:latest
RUN apk add py-pip jq openssh git
RUN pip install awscli ecs-deploy aws-shell
