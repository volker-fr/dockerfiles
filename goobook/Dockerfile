FROM alpine:3.11

RUN apk add --update python3 py3-pip \
 && pip3 install goobook            \
 && apk del py3-pip \
 && rm -rf /usr/lib/python3.8/distutils \
       /usr/lib/python3.8/ensurepip  \
       /usr/lib/python3.8/pydoc_data \
       /var/cache/apk/*

VOLUME ["/.goobook_cache", "/.goobook_auth.json"]
ENTRYPOINT ["goobook"]
