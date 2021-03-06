pwd; ls -ltrh;
java -version;
curl https://downloads.apache.org//jmeter/binaries/apache-jmeter-5.4.1.tgz -o apache-jmeter-5.4.1.tgz;
tar -xvzf apache-jmeter-5.4.1.tgz;
mv apache-jmeter-5.4.1 apache-jmeter;
mkdir -p -m a=rwx out;
cp in/JMeter/Group_1.jmx apache-jmeter/bin; 
cd apache-jmeter/bin;
sh jmeter.sh -n -t Group_1.jmx -l Group_1.jtl;
sh jmeter.sh -g Group_1.jtl -f -e -o Group_1;
cd ../../out;
rm -rf Group_1;
mv ../apache-jmeter/bin/Group_1 .;
tar -cvzf Group_1.tgz Group_1;
mv ../apache-jmeter/bin/Group_1.jtl .;

cd ..
rm apache-jmeter-5.4.1.tgz;
rm -rf apache-jmeter;