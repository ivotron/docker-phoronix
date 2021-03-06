FROM ubuntu:vivid

RUN apt-get update && apt-get install -y \
       libgomp1 phoronix-test-suite && \
    apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
ENTRYPOINT ["phoronix-test-suite"]
CMD ["help"]
