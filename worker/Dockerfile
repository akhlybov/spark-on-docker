FROM akhlybov/spark-base:0.3

LABEL author="hlybov@outlook.com"

ADD run-worker.sh .

ENV MASTER_URL localhost:7077
ENV SPARK_WORKER_PORT 7077
ENV SPARK_WORKER_WEBUI_PORT 8081

ENV CORES 2
ENV MEM 2G

ENTRYPOINT /bin/bash run-worker.sh