FROM ubuntu:20.04
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update && \
    apt-get install -y build-essential cmake clang libssl-dev libgmp-dev vim git
RUN	git clone https://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:x-oauth-basic@github.com/uchina1/my_mcl.git 

WORKDIR /my_mcl