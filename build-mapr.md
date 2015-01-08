# Building Titan for MapR

```
# Build and install code artifacts
cd titan
mvn clean install -Phadoop2,mapr-hadoop-2 -DskipTests=true
# Build distributions *without documentation* -- not suitable for release
cd titan-dist
mvn clean install -Paurelius-release,hadoop2,mapr-hadoop-2 -DskipTests=true -Dgpg.skip=true
# the zip will be generated at titan-dist/titan-dist-hadoop-2/target
cd titan-dist-hadoop-2/target
unzip titan-0.5.2-SNAPSHOT-hadoop2.zip
cd titan-0.5.2-SNAPSHOT-hadoop2
./bin/mapr-lib-patch.sh
```

