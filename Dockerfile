FROM alpine:latest

RUN apk add py-pip jq

RUN pip install awscli ecs-deploy aws-shell

CMD ["aws-shell"]
