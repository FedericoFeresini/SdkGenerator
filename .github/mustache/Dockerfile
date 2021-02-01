# We have a fat-jar application in the build context at 'build/app.jar'
FROM openjdk:8-jre-alpine

# install bash and wget, bash is necessary because Mustache does not run on /bin/sh
RUN apk add --no-cache wget bash && \
# install mustache as script
    wget -O /usr/bin/mo https://git.io/get-mo && \
    chmod a+x /usr/bin/mo && \
    apk del wget && \
    mkdir -p /app
RUN ls -a
RUN chmod a+x ./entrypoint.sh
    
COPY application.properties.template /app/
COPY properties /app/
COPY entrypoint.sh /

RUN ls -a

WORKDIR /app

RUN echo "----------------"
RUN ls -a

ENTRYPOINT ["/entrypoint.sh"]
