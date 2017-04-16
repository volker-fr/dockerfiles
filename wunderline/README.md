Run wunderline in a docker container.

`wunderline-backup.sh` is the old script. Not used by docker.

# Usage

    touch "~/.config/configstore/wunderline.json"
    docker run --rm -it \
        -v "/etc/localtime:/etc/localtime:ro" \
        -v "/mydata/wunderline:/root/.config/configstore/"
        volkerfr/wunderline
