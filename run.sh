#/bin/bash
docker build . -t anglican-jupyter
docker run --rm -p 8888:8888 -it anglican-jupyter
