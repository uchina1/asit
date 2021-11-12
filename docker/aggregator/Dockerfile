FROM alpine
RUN apk add --no-cache gcc g++ make libc-dev cmake clang gmp-dev vim git
RUN	git clone https://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:x-oauth-basic@github.com/uchina1/my_mcl.git 

WORKDIR /my_mcl

ENTRYPOINT ["sh", "-c", "cd /my_mcl && git pull \
          && make ./bin/aggregator.exe"]