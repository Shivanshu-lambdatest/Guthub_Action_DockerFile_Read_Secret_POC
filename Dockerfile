# Container image that runs your code
FROM alpine:3.10

ARG LT_PRIVATE_KEY

# Copies your code file from your action repository to the filesystem path `/` of the container

# ENV WEB_IP "$LT_PRIVATE_KEY"

# ENTRYPOINT echo $WEB_IP

ENV pvt_key "$LT_PRIVATE_KEY"

# ENTRYPOINT echo $pvt_key

RUN echo $TEST

# RUN cat app.rsa

# COPY app.rsa .

# Code file to execute when the docker container starts up (`entrypoint.sh`)
ENTRYPOINT ["/entrypoint.sh"]