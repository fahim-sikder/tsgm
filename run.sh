!/bin/bash

mUID=$(id -u $USER)
mGID=$(id -g $USER)

docker run --gpus device=0 -it --rm \
    -v $(pwd)/../:/home/$USER \
    --user root \
    tsgm \
    /bin/bash -c "cd /home/$USER; exec /bin/bash"
