FROM alpine:latest
RUN apk add docker openssh-client git jq py-pip
RUN pip install -U pip awscli ecs-deploy aws-shell
CMD ["aws-shell"]
