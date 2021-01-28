FROM alpine


RUN apk add --no-cache \
                bash \
                httpie \
                jq \
                which bash && \
                which http && \
                which jq



ADD ./entrypoint.sh /entrypoint.sh
ADD ./sample_push_event.json /sample_push_event.json

RUN chmod +x /entrypoint.sh -v



ENTRYPOINT ["/entrypoint.sh"]

