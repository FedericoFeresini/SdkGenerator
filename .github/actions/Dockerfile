FROM alpine


RUN apk add --no-cache \
                bash \
                httpie \
                jq \
                which bash && \
                which http && \
                which jq



ADD ./entrypoint.sh /generateSDK.sh
ADD ./sample_push_event.json /sample_push_event.json

RUN chmod +x /generateSDK.sh -v



ENTRYPOINT ["/generateSDK.sh"]

