FROM alpine:3.11

LABEL author="hlybov@outlook.com"

ENV SPARK_VERSION=2.4.5
ENV HADOOP_VERSION=2.7

ENV SPARK_HOME=/spark/
ENV PATH=$PATH:$SPARK_HOME/bin

# coreutils to enable '--' usage in Alpine version of nohup; look up:
# https://stackoverflow.com/questions/44661274/crashloopbackoff-in-spark-cluster-in-kubernetes-nohup-cant-execute-no-s
# procps to include -p switch for ps; see:
# https://github.com/rmohr/docker-activemq/issues/40
RUN apk add --update --no-cache curl bash openjdk8-jre python3 coreutils procps\
    && wget https://archive.apache.org/dist/spark/spark-${SPARK_VERSION}/spark-${SPARK_VERSION}-bin-hadoop${HADOOP_VERSION}.tgz \
    && tar -xvzf spark-${SPARK_VERSION}-bin-hadoop${HADOOP_VERSION}.tgz \
    && mv spark-${SPARK_VERSION}-bin-hadoop${HADOOP_VERSION} spark \
    && rm spark-${SPARK_VERSION}-bin-hadoop${HADOOP_VERSION}.tgz
