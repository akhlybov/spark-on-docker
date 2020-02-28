/bin/bash /spark/sbin/start-slave.sh $MASTER_URL -c "$CORES" -m "$MEM"
tail -f /dev/null
