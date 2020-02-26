zookeeper_urls = $1
if [zookeeper_urls == "None"]
then
    hostip = $(ip route show | awk '/default/ {print $3}')
fi

export SPARK_DAEMON_JAVA_OPTS='-Dspark.deploy.recoveryMode="${RECOVERY_MODE}" -Dspark.deploy.zookeeper.url="$ZOOKEEPER_URL"'