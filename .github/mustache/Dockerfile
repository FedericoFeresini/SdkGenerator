FROM ubuntu:16.04

RUN apt-get update && apt-get install -y --no-install-recommends \
    python3.5 \
    python3-pip \
    && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*
    
RUN pip3 install chevron
    
COPY application.properties.template /app/
COPY properties.json /app/
COPY entrypoint.sh /

RUN chmod a+x /entrypoint.sh
RUN chevron -d /app/properties.json /app/application.properties.template
