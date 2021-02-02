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
    pwd && /
    printenv
    
ADD /home/runner/work/SdkGenerator/SdkGenerator/./generateSDK.sh /generateSDK.sh
ADD /home/runner/work/SdkGenerator/SdkGenerator/./sample_push_event.json /sample_push_event.json
ADD /home/runner/work/SdkGenerator/SdkGenerator/./mySwagger.json /mySwagger.json

RUN chmod +x /generateSDK.sh -v



ENTRYPOINT ["/generateSDK.sh"]

