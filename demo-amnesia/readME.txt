# This script run Amnesia anonymization tool (See https://github.com/dTsitsigkos/Amnesia)
#
# Step 1 => Copy demo-amnesia folder into user home and add permission to file .sh
# Unix >> cp /demo-amnesia/ /home/demo-amnesia/ && cd /home/demo-amnesia
# Unix >> chmod +x amnesiaApi.sh
#
# Step 2 => Run Amnesia backend
# Unix >> java -jar -Xms1024m -Xmx4096m -Dorg.eclipse.jetty.server.Request.maxFormKeys=1000000 -Dorg.eclipse.jetty.server.Request.maxFormContentSize=1000000 /amnesia-lin/amnesiaBackEnd-1.0-SNAPSHOT.jar --server.port=8181 --trace
# Unix >> ps -eaf | grep java 
# Cygwin >> ps -W | grep java 
#
# Step 3 => Run amnesia anonymization running this script 
./amnesiaApi.sh -del “,” -d /home/demo-amnesia/newData.txt -t /home/demo-amnesia/template.txt /home/demo-amnesia/distinct_hier_age.txt /home/demo-amnesia/distinct_hier_salary.txt --out /home/demo-amnesia/anonymized123.txt
