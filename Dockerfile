FROM ubuntu:22.04
RUN apt update && apt install lsb-release curl -y
RUN curl -so /etc/apt/trusted.gpg.d/oxen.gpg https://deb.oxen.io/pub.gpg
RUN lsb_release -sc
RUN echo "deb https://deb.oxen.io $(lsb_release -sc) main" | tee /etc/apt/sources.list.d/oxen.list
RUN apt update 
RUN apt install oxen-service-node -y
#RUN oxend prepare_registration
CMD ["sleep", "infinity"]
