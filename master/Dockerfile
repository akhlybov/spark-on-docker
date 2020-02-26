FROM akhlybov/spark-base:0.2

LABEL author="hlybov@outlook.com"

ENV SPARK_MASTER_PORT 7077
ENV SPARK_MASTER_WEBUI_PORT 8080
ENV SPARK_MASTER_LOG /spark/logs

EXPOSE 8080 7077 6066

ENV RECOVERY_MODE ZOOKEEPER
ENV ZOOKEEPER_URLS localhost:2181

ENV SPARK_DAEMON_JAVA_OPTS '-Dspark.deploy.recoveryMode="${RECOVERY_MODE}" -Dspark.deploy.zookeeper.url="$ZOOKEEPER_URL"'

ENTRYPOINT /bin/bash /spark/sbin/start-master.sh 