FROM akhlybov/spark-base:0.3

LABEL author="hlybov@outlook.com"

ADD run-master.sh .

ENV SPARK_MASTER_PORT 7077
ENV SPARK_MASTER_WEBUI_PORT 8080
ENV SPARK_MASTER_HOST localhost

ENV RECOVERY_MODE None
ENV ZOOKEEPER_URLS localhost:2118

ENTRYPOINT /bin/bash run-master.sh