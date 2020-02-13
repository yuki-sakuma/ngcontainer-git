FROM angular/ngcontainer:0.10.0

USER root

RUN echo "deb http://deb.debian.org/debian jessie main" > /etc/apt/sources.list && \
    echo "deb http://security.debian.org/debian-security jessie/updates main" >> /etc/apt/sources.list && \
    echo "deb http://deb.debian.org/debian jessie-updates main" >> /etc/apt/sources.list && \
    apt-get update && \
    apt-get upgrade -y git
    apt-get upgrade -y nodejs
    
USER circleci

WORKDIR /home/circleci
ENTRYPOINT ["/bin/bash", "--login"]
