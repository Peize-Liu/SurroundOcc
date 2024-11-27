docker run -it --gpus all --net=host \
    --privileged -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix -v /dev:/dev\
    --runtime=nvidia --name="surround_occ_test" \
    -v /home/dji/workspace/drone_occ/SurroundOcc:/SurroundOcc \
    -v /home/dji/hdd/occ:/dataset \
    cuda11_3_pytorch_occ:surroundocc \
    /bin/bash