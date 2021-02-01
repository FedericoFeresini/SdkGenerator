# We have a fat-jar application in the build context at 'build/app.jar'
FROM ubuntu:16.04

RUN apt-get update && apt-get install -y --no-install-recommends \
    python3.5 \
    python3-pip \
    && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*
    
RUN pip install chevron
    
COPY application.properties.template /app/
COPY properties /app/
COPY entrypoint.sh /

RUN chmod a+x /entrypoint.sh

WORKDIR /app

ENTRYPOINT ["/entrypoint.sh"]
