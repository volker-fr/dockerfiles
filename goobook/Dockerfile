FROM alpine:3.2

RUN apk add --update python py-pip \
 && pip install goobook            \
 && rm -rf /usr/lib/python2.7/distutils  \
       /usr/lib/python2.7/idlelib    \
       /usr/lib/python2.7/lib-tk     \
       /usr/lib/python2.7/ensurepip  \
       /usr/lib/python2.7/pydoc_data \
       /var/cache/apk/*

VOLUME ["/.goobook_cache", "/.goobook_auth.json"]
ENTRYPOINT ["goobook"]
