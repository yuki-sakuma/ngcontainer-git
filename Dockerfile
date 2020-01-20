FROM angular/ngcontainer:0.10.0

USER root

RUN apt-get update \
    && apt-get upgrade -y git
    
USER circleci

WORKDIR /home/circleci
ENTRYPOINT ["/bin/bash", "--login"]
