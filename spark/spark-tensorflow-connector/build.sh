mvn versions:set -DnewVersion=1.14.0
while [ 1 ]
do
    mvn install -Dspark.version=2.4.4 -Dmaven.test.skip=true
    if [ $? -eq 0 ];then
        exit 
    fi
done
