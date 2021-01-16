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
FROM ubuntu

RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y software-properties-common && \
    apt-get install -y duplicity python3-boto3 && \
    rm -rf /var/lib/apt/lists/*

ENTRYPOINT ["/usr/bin/duplicity"]
