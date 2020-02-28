if [[ $RECOVERY_MODE = "None" ]]
then
    /bin/bash /spark/sbin/start-master.sh -h $SPARK_MASTER_HOST -p $SPARK_MASTER_PORT --webui-port $SPARK_MASTER_WEBUI_PORT
else
    if [[ $RECOVERY_MODE = "ZOOKEEPER" ]]
    then
        export SPARK_DAEMON_JAVA_OPTS="-Dspark.deploy.recoveryMode=$RECOVERY_MODE -Dspark.deploy.zookeeper.url=$ZOOKEEPER_URL"
        /bin/bash /spark/sbin/start-master.sh -h $SPARK_MASTER_HOST -p $SPARK_MASTER_PORT --webui-port $SPARK_MASTER_WEBUI_PORT
    else
        echo "Invalid recovery mode: $RECOVERY_MODE"
    fi
fi

tail -f /dev/null