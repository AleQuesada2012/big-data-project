docker rm -f proyecto-container 2>/dev/null || true

docker run --platform=linux/amd64 \
  --name proyecto-container \
  -p 8888:8888 \
  -it proyecto-ajqc /bin/bash
