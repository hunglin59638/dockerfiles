FROM alpine:3.15
RUN apk add nmap-ncat &&\
    echo -e '#!/bin/sh\nncat --sh-exec "ncat $SERVER_IP $SERVER_PORT" -l $LOCAL_PORT --keep-open' > entrypoint.sh &&\
    chmod +x entrypoint.sh
ENTRYPOINT ["./entrypoint.sh"]
