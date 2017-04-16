Simple `duplicity` container

# Usage

    duplicity() {
        docker run --rm -it \
            -v "/etc/localtime:/etc/localtime:ro" \
            -v "/data_to_backup:/data:ro" \
            -v "$HOME/mydata/cache:/root/.cache" \
            -e "AWS_ACCESS_KEY_ID=${AWS_ACCESS_KEY_ID}" \
            -e "AWS_ACCESS_KEY_ID=${AWS_ACCESS_KEY_ID}" \
            volkerfr/duplicity "$@"
    }

Then run duplicity as usual while pointing files to /data
