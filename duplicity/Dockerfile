# Usage
#
#    duplicity() {
#        docker run --rm -it \
#            -v "/etc/localtime:/etc/localtime:ro" \
#            -v "/data_to_backup:/data:ro" \
#            -v "$HOME/mydata/cache:/root/.cache" \
#            -e "AWS_ACCESS_KEY_ID=${AWS_ACCESS_KEY_ID}" \
#            -e "AWS_ACCESS_KEY_ID=${AWS_ACCESS_KEY_ID}" \
#            -h duplicity-docker-container \
#            volkerfr/duplicity "$@"
#    }
FROM alpine

RUN apk --update add duplicity ca-certificates

ENTRYPOINT ["/usr/bin/duplicity"]
