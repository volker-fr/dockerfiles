# Usage

    docker run -it --rm -v ~/sync/keepass2.kdbx:/DB.kdbx:ro \
         --name kpcli-search \
         volkerfr/kpcli-search <search term>
