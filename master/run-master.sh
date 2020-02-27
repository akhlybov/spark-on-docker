if [[ $RECOVERY_MODE = "None" ]]
then
    /bin/bash /spark/sbin/start-master.sh -p $SPARK_MASTER_PORT --webui-port $SPARK_MASTER_WEBUI_PORT
else
    if [[ $RECOVERY_MODE = "ZOOKEEPER" ]]
    then
        if [[ $ZOOKEEPER_URLS = "None" ]]
        then
            # resolves host machine ip from within container assuming Zookeeper is not running on Docker
            ZOOKEEPER_URL="$(ip route show | awk '/default/ {print $3}'):2181"
        fi
        export SPARK_DAEMON_JAVA_OPTS="-Dspark.deploy.recoveryMode=$RECOVERY_MODE -Dspark.deploy.zookeeper.url=$ZOOKEEPER_URL"
        /bin/bash /spark/sbin/start-master.sh -p $SPARK_MASTER_PORT --webui-port $SPARK_MASTER_WEBUI_PORT
    else
        echo "Invalid recovery mode: $RECOVERY_MODE"
    fi
fi

tail -f /dev/null