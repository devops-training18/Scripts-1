#bash to install tomcat
#----------------------
sudo apt-get update
sudo apt-get install default-jdk
sudo apt-get install tomcat8
sudo apt-get install tomcat8-docs tomcat8-examples tomcat8-admin
#bash to admin-user in tomcat
#----------------------------
sed -i 's+</tomcat-users>+  <role rolename="admin-script"/>+gI' /var/lib/tomcat8/conf/tomcat-users.xml
echo '  <role rolename="manager"/>'  >> /var/lib/tomcat8/conf/tomcat-users.xml
echo '  <role rolename="manager-gui"/>'  >> /var/lib/tomcat8/conf/tomcat-users.xml
echo '  <role rolename="manager-script"/>'  >> /var/lib/tomcat8/conf/tomcat-users.xml
echo '  <role rolename="manager-jmx"/>'  >> /var/lib/tomcat8/conf/tomcat-users.xml
echo '  <role rolename="manager-status"/>'  >> /var/lib/tomcat8/conf/tomcat-users.xml
echo '  <user username="tomcat" password="tomcat" roles="admin, manager,admin-script,manager-script,manager-jmx,manager-status,manager-gui,admingui"/>'  >> /var/lib/tomcat8/conf/tomcat-users.xml
echo "</tomcat-users>"  >> /var/lib/tomcat8/conf/tomcat-users.xml
#bash to restart tomcat
#----------------------
sudo systemctl restart tomcat8
