# Spark on Docker

Images to run Spark and Worker classes.

**To start Master:**
```bash
docker run --network host --name smaster -d -e "RECOVERY_MODE=ZOOKEEPER" akhlybov/spark-master:0.5
```
Parameters:
1. SPARK_MASTER_HOST (host Spark master will listen on)
2. SPARK_MASTER_PORT (port master will listen on)
3. SPARK_MASTER_WEBUI_PORT (port Spark master ui will listen on)
4. RECOVERY_MODE:
    * None (Spark master won't be recovered)
    * ZOOKEEPER (Zookeeper will initiate re-election of new leader among master slaves; you should have several slaves of master desirably on different machines)

**To start Worker:**
```bash
docker run --network host -d akhlybov/spark-worker:0.1
```
Parameters:
1. MASTER_URL (required; default is set to localhost:7077)
2. SPARK_WORKER_PORT (port worker will listen on)
3. SPARK_WORKER_WEBUI_PORT (port worker ui will listen on)
4. CORES (amount of cores dedicated to current worker)
5. MEM (amount of RAM dedicated to worker, e.g. 1000M, 2G)
