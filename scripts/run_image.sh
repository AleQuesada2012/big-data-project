docker rm -f tarea3-container 2>/dev/null || true

docker run --platform=linux/amd64 \
  --name tarea3-container \
  -p 8888:8888 \
  -it tarea3 /bin/bash
