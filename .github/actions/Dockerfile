FROM alpine


RUN apk add --no-cache \
                bash \
                httpie \
                jq \
                which bash && \
                which http && \
                which jq

RUN pwd ./ && \
    ls -a && \
    echo "------" && \
    pwd /

ADD /generateSDK.sh /generateSDK.sh
ADD /sample_push_event.json /sample_push_event.json
ADD /mySwagger.json /mySwagger.json

RUN chmod +x /generateSDK.sh -v



ENTRYPOINT ["/generateSDK.sh"]

