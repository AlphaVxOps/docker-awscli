FROM docker:latest
RUN apk add openssh git jq py-pip ca-certificates iptables
RUN pip install -U pip awscli ecs-deploy aws-shell

COPY dockerd-entrypoint.sh /usr/local/bin/

VOLUME /var/lib/docker

ENTRYPOINT ["dockerd-entrypoint.sh"]
CMD ["aws-shell"]
