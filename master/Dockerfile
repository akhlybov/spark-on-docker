FROM akhlybov/spark-base:0.3

LABEL author="hlybov@outlook.com"

ADD run-master.sh .

ENV SPARK_MASTER_PORT 7077
ENV SPARK_MASTER_WEBUI_PORT 8080
ENV SPARK_MASTER_LOG /spark/logs

EXPOSE 8080 7077 6066

ENV ZOOKEEPER_URLS None
ENV RECOVERY_MODE None

ENTRYPOINT /bin/bash run-master.sh