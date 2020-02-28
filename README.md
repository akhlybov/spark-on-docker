# Spark on Docker

Images to run Spark and Worker classes.

**To start Master:**
```bash
docker run --network host --name smaster -d -e "RECOVERY_MODE=ZOOKEEPER" akhlybov/spark-master:0.5
```
Parameters:
1. SPARK_MASTER_HOST (host Spark Master will listen on)
2. SPARK_MASTER_PORT (port Master will listen on)
3. SPARK_MASTER_WEBUI_PORT (port Spark Master ui will listen on)
4. RECOVERY_MODE:
    * None (Spark master won't be recovered)
    * ZOOKEEPER (Zookeeper will initiate re-election of new leader among Master slaves; you should have several slaves of Master desirably on different machines for fault tolerance)

**To start Worker:**
```bash
docker run --network host -d akhlybov/spark-worker:0.1
```
Parameters:
1. MASTER_URL (required; default is set to localhost:7077)
2. SPARK_WORKER_PORT (port Worker will listen on)
3. SPARK_WORKER_WEBUI_PORT (port Worker ui will listen on)
4. CORES (amount of cores dedicated to current Worker)
5. MEM (amount of RAM dedicated to Worker, e.g. 1000M, 2G)
