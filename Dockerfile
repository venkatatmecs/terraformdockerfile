FROM ubuntu
RUN apt-get update
RUN apt-get install unzip
RUN apt-get install -y wget

RUN wget https://releases.hashicorp.com/terraform/0.11.11/terraform_0.11.11_linux_amd64.zip
#ENTRYPOINT ["wget", "-O", "-"]
#ADD https://releases.hashicorp.com/terraform/0.11.11/terraform_0.11.11_linux_amd64.zip / 

RUN unzip /terraform_0.11.11_linux_amd64.zip
RUN mv terraform /usr/local/bin/
RUN apt-get install -y vim

