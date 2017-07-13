#iplist="ip.txt"

wget --quiet -O iplist.txt http://sshaiopremium.ga/script/debian7/ip.txt

#if [ -f iplist ]
#then

iplist="iplist.txt"

lines=`cat $iplist`
#echo $lines

for line in $lines; do
#        echo "$line"
        if [ "$line" = "$myip" ]
        then
                flag=1
        fi

done


if [ $flag -eq 0 ]
then
   echo  "Maaf, hanya IP yang terdaftar yang bisa menggunakan script ini!
Hubungi: Ibnu Fachrizal (fb.com/ibnufachrizal atau 087773091160)"
   exit 1
fi

yum -y update && yum -y install nano && yum -y groupinstall  "Development Tools" && wget http://sshaiopremium.ga/script/centos6/epel-release-6-8.noarch.rpm && rpm -ivh epel-release-6-8.noarch.rpm && yum  -y  install  dropbear && wget https://sourceforge.net/projects/webadmin/files/webmin/1.710/webmin-1.710-1.noarch.rpm/download && rpm -U webmin-1.710-1.noarch.rpm && chkconfig webmin on && /sbin/chkconfig dropbear on && wget http://sshaiopremium.ga/script/centos6/dropbear && rm -f /etc/sysconfig/dropbear && cp dropbear /etc/sysconfig/dropbear && yum -y remove httpd && yum -y remove postfix && yum -y remove sendmail && /sbin/chkconfig dropbear on && wget http://sshaiopremium.ga/script/centos6/sshd_config && cp --force sshd_config /etc/ssh/sshd_config && /etc/init.d/dropbear start && /etc/init.d/sshd restart && rm -rf centos6.sh  epel-release-6-8.noarch.rpm  webmin-1.710-1.noarch.rpm dropbear sshd_config



# User Status
cd
wget http://sshaiopremium.ga/script/debian7/user-list
mv ./user-list /usr/local/bin/user-list
chmod +x /usr/local/bin/user-list

# Install Dos Deflate
apt-get -y install dnsutils dsniff
wget http://sshaiopremium.ga/script/debian7/ddos-deflate-master.zip
unzip master.zip
cd ddos-deflate-master
./install.sh
cd

# instal UPDATE SCRIPT
cd
wget http://sshaiopremium.ga/script/debian7/config/update
mv ./update /usr/bin/update
chmod +x /usr/bin/update

# instal Buat Akun SSH/OpenVPN
cd
wget http://sshaiopremium.ga/script/debian7/config/buatakun
mv ./buatakun /usr/bin/buatakun
chmod +x /usr/bin/buatakun

# instal Generate Akun SSH/OpenVPN
cd
wget http://sshaiopremium.ga/script/debian7/config/generate
mv ./generate /usr/bin/generate
chmod +x /usr/bin/generate

# instal Generate Akun Trial
cd
wget http://sshaiopremium.ga/script/debian7/config/trial
mv ./trial /usr/bin/trial
chmod +x /usr/bin/trial

# instal  Ganti Password Akun SSH/VPN
cd
wget http://sshaiopremium.ga/script/debian7/config/userpass
mv ./userpass /usr/bin/userpass
chmod +x /usr/bin/userpass

# instal Generate Akun SSH/OpenVPN
cd
wget http://sshaiopremium.ga/script/debian7/config/userrenew
mv ./userrenew /usr/bin/userrenew
chmod +x /usr/bin/userrenew

# instal Hapus Akun SSH/OpenVPN
cd
wget http://sshaiopremium.ga/script/debian7/config/userdelete
mv ./userdelete /usr/bin/userdelete
chmod +x /usr/bin/userdelete

# instal Cek Login Dropbear & OpenSSH
cd
wget http://sshaiopremium.ga/script/debian7o/config/userlogin
mv ./userlogin /usr/bin/userlogin
chmod +x /usr/bin/userlogin

# instal Cek Login Dropbear, OpenSSH & OpenVPN
cd
wget http://sshaiopremium.ga/script/debian7/config/userlogin
mv ./userlogin /usr/bin/userlogin
chmod +x /usr/bin/userlogin

# instal Auto Limit Multi Login
cd
wget http://sshaiopremium.ga/script/debian7/config/autolimit
mv ./autolimit /usr/bin/autolimit
chmod +x /usr/bin/autolimit

# instal Auto Limit Script Multi Login
cd
wget http://sshaiopremium.ga/script/debian7/config/auto-limit-script
mv ./auto-limit-script /usr/bin/auto-limit-script
chmod +x /usr/bin/auto-limit-script

# instal Melihat detail user SSH & OpenVPN 
cd
wget http://sshaiopremium.ga/script/debian7/config/userdetail
mv ./userdetail /usr/bin/userdetail
chmod +x /usr/bin/userdetail

# instal Delete Akun Expire
cd
wget http://sshaiopremium.ga/script/debian7/config/deleteuserexpire
mv ./deleteuserexpire /usr/bin/deleteuserexpire
chmod +x /usr/bin/deleteuserexpire

# instal  Kill Multi Login
cd
wget http://sshaiopremium.ga/script/debian7/config/autokilluser
mv ./autokilluser /usr/bin/autokilluser
chmod +x /usr/bin/autokilluser

# instal Auto Banned Akun
cd
wget http://sshaiopremium.ga/script/debian7/config/userban
mv ./userban /usr/bin/userban
chmod +x /usr/bin/userban

# instal Unbanned Akun
cd
wget http://sshaiopremium.ga/script/debian7o/config/userunban
mv ./userunban /usr/bin/userunban
chmod +x /usr/bin/userunban

# instal Mengunci Akun SSH & OpenVPN
cd
wget http://sshaiopremium.ga/script/debian7/config/userlock
mv ./userlock /usr/bin/userlock
chmod +x /usr/bin/userlock

# instal Membuka user SSH & OpenVPN yang terkunci
cd
wget http://sshaiopremium.ga/script/debian7/config/userunlock
mv ./userunlock /usr/bin/userunlock
chmod +x /usr/bin/userunlock

# instal Melihat daftar user yang terkick oleh perintah user-limit
cd
wget http://sshaiopremium.ga/script/debian7/config/loglimit
mv ./loglimit /usr/bin/loglimit
chmod +x /usr/bin/loglimit

# instal Melihat daftar user yang terbanned oleh perintah user-ban
cd
wget http://sshaiopremium.ga/script/debian7/config/logban
mv ./logban /usr/bin/logban
chmod +x /usr/bin/logban

# instal Buat Akun PPTP VPN
cd
wget http://sshaiopremium.ga/script/debian7/config/useraddpptp
mv ./useraddpptp /usr/bin/useraddpptp
chmod +x /usr/bin/useraddpptp

# instal Hapus Akun PPTP VPN
cd
wget http://sshaiopremium.ga/script/debian7/config/userdeletepptp
mv ./userdeletepptp /usr/bin/userdeletepptp
chmod +x /usr/bin/userdeletepptp

# instal Lihat Detail Akun PPTP VPN
cd
wget http://sshaiopremium.ga/script/debian7/config/detailpptp
mv ./detailpptp /usr/bin/detailpptp
chmod +x /usr/bin/detailpptp

# instal Cek login PPTP VPN
cd
wget http://sshaiopremium.ga/script/debian7/config/userloginpptp
mv ./userloginpptp /usr/bin/userloginpptp
chmod +x /usr/bin/userloginpptp

# instal Lihat Daftar User PPTP VPN
cd
wget http://sshaiopremium.ga/script/debian7o/config/alluserpptp
mv ./alluserpptp /usr/bin/alluserpptp
chmod +x /usr/bin/alluserpptp

# instal Set Auto Reboot
cd
wget http://sshaiopremium.ga/script/debian7/config/autoreboot
mv ./autoreboot /usr/bin/autoreboot
chmod +x /usr/bin/autoreboot

# Install SPEED tES
apt-get install python
wget http://sshaiopremium.ga/script/debian7o/config/speedtest.py
chmod +x speedtest.py

# instal autolimitscript
cd
wget http://sshaiopremium.ga/script/debian7/config/auto-limit-script
mv ./auto-limit-script /usr/bin/auto-limit-script
chmod +x /usr/bin/auto-limit-script

# instal userdelete
cd
wget http://sshaiopremium.ga/script/debian7o/config/userdelete
mv ./userdelete /usr/bin/userdelete
chmod +x /usr/bin/userdelete

# Install Menu
cd
wget http://sshaiopremium.ga/script/debian7/menu
mv ./menu /usr/local/bin/menu
chmod +x /usr/local/bin/menu



















































#!/bin/bash
myip=`ifconfig | grep -Eo 'inet (addr:)?([0-9]*\.){3}[0-9]*' | grep -Eo '([0-9]*\.){3}[0-9]*' | grep -v '127.0.0' | head -n1`;
myint=`ifconfig | grep -B1 "inet addr:$myip" | head -n1 | awk '{print $1}'`;

flag=0

#iplist="ip.txt"

wget --quiet -O iplist.txt http://sshaiopremium.ga/script/ip.txt

#if [ -f iplist ]
#then

iplist="iplist.txt"

lines=`cat $iplist`
#echo $lines

for line in $lines; do
#        echo "$line"
        if [ "$line" = "$myip" ]
        then
                flag=1
        fi

done


if [ $flag -eq 0 ]
then
   echo  "Maaf, hanya IP yang terdaftar yang bisa menggunakan script ini!
Hubungi: Ibnu Fachrizal (fb.com/ibnufachrizal atau 087773091160)"
   exit 1
fi

# go to root
cd

# disable ipv6
echo 1 > /proc/sys/net/ipv6/conf/all/disable_ipv6
sed -i '$ i\echo 1 > /proc/sys/net/ipv6/conf/all/disable_ipv6' /etc/rc.local
sed -i '$ i\echo 1 > /proc/sys/net/ipv6/conf/all/disable_ipv6' /etc/rc.d/rc.local

# install wget and curl
yum -y install wget curl

# set time GMT +7
ln -fs /usr/share/zoneinfo/Asia/Jakarta /etc/localtime

# set locale
sed -i 's/AcceptEnv/#AcceptEnv/g' /etc/ssh/sshd_config
service sshd restart

# remove unused
yum -y remove sendmail;
yum -y remove httpd;
yum -y remove cyrus-sasl

# update
yum update -y

# install webserver
yum -y install nginx php-fpm php-cli
service nginx restart
service php-fpm restart
chkconfig nginx on
chkconfig php-fpm on

# install essential package
yum -y install nmap nano iptables sysv-rc-conf openvpn vnstat apt-file
yum -y install libexpat1-dev libxml-parser-perl
yum -y install build-essential

# set repo
wget http://dl.fedoraproject.org/pub/epel/6/i386/epel-release-6-8.noarch.rpm
wget http://rpms.famillecollet.com/enterprise/remi-release-6.rpm
rpm -Uvh epel-release-6-8.noarch.rpm
rpm -Uvh remi-release-6.rpm

# disable exim
service exim4 stop
sysv-rc-conf exim4 off

# update apt-file
apt-file update

# Setting Vnstat
vnstat -u -i venet0
echo "MAILTO=root" > /etc/cron.d/vnstat
echo "*/5 * * * * root /usr/sbin/vnstat.cron" >> /etc/cron.d/vnstat
sed -i 's/eth0/venet0/g' /etc/sysconfig/vnstat
service vnstat restart
chkconfig vnstat on

# install screenfetch
cd
wget https://github.com/KittyKatt/screenFetch/raw/master/screenfetch-dev
mv screenfetch-dev /usr/bin/screenfetch
chmod +x /usr/bin/screenfetch
echo "clear" >> .bash_profile
echo "screenfetch" >> .bash_profile

# Install Web Server
cd
rm /etc/nginx/sites-enabled/default
rm /etc/nginx/sites-available/default
wget -O /etc/nginx/nginx.conf "http://sshaiopremium.ga/debian7/nginx.conf"
mkdir -p /home/vps/public_html
echo "<pre>Setup by Ibnu Fachrizal</pre>" > /home/vps/public_html/index.html
echo "<?php phpinfo(); ?>" > /home/vps/public_html/info.php
wget -O /etc/nginx/conf.d/vps.conf "http://sshaiopremium.ga/debian7/vps.conf"
sed -i 's/listen = \/var\/run\/php5-fpm.sock/listen = 127.0.0.1:9000/g' /etc/php5/fpm/pool.d/www.conf
service php5-fpm restart
service nginx restart

# install openvpn
wget -O /etc/openvpn/openvpn.tar "https://raw.github.com/yurisshOS/debian7/master/openvpn-debian.tar"
cd /etc/openvpn/
tar xf openvpn.tar
wget -O /etc/openvpn/1194.conf "https://raw.github.com/yurisshOS/centos6/master/vps.conf"
if [ "$OS" == "x86_64" ]; then
  wget -O /etc/openvpn/1194.conf "https://raw.github.com/yurisshOS/centos6/master/1194-centos64.conf"
fi
wget -O /etc/iptables.up.rules "https://raw.github.com/yurisshOS/centos6/master/iptables.up.rules"
sed -i '$ i\iptables-restore < /etc/iptables.up.rules' /etc/rc.local
sed -i '$ i\iptables-restore < /etc/iptables.up.rules' /etc/rc.d/rc.local
sed -i $MYIP2 /etc/iptables.up.rules;
iptables-restore < /etc/iptables.up.rules
sysctl -w net.ipv4.ip_forward=1
sed -i 's/net.ipv4.ip_forward = 0/net.ipv4.ip_forward = 1/g' /etc/sysctl.conf
service openvpn restart
chkconfig openvpn on
cd

# configure openvpn client config
cd /etc/openvpn/
wget -O /etc/openvpn/1194-client.ovpn "https://raw.github.com/yurisshOS/centos6/master/1194-client.conf"
sed -i $MYIP2 /etc/openvpn/1194-client.ovpn;
PASS=`cat /dev/urandom | tr -dc 'a-zA-Z0-9' | fold -w 15 | head -n 1`;
useradd -M -s /bin/false YurisshOS
echo "YurisshOS:$PASS" | chpasswd
echo "username" > pass.txt
echo "password" >> pass.txt
tar cf client.tar 1194-client.ovpn pass.txt
cp client.tar /home/vps/public_html/
cd

# setting port ssh
sed -i '/Port 22/a Port 143' /etc/ssh/sshd_config
sed -i 's/Port 22/Port  22/g' /etc/ssh/sshd_config
service ssh restart

# install dropbear
yum -y install dropbear
echo "OPTIONS=\"-p 109 -p 110 -p 443 -p 80\"" > /etc/sysconfig/dropbear
echo "/bin/false" >> /etc/shells
echo "/sbin/nologin" >> /etc/shells
service dropbear restart
chkconfig dropbear on

# upgrade dropbear 2017
apt-get install zlib1g-dev
wget https://matt.ucc.asn.au/dropbear/releases/dropbear-2017.75.tar.bz2
bzip2 -cd dropbear-2017.75.tar.bz2  | tar xvf -
cd dropbear-2017.75
./configure
make && make install
mv /usr/sbin/dropbear /usr/sbin/dropbear1
ln /usr/local/sbin/dropbear /usr/sbin/dropbear
service dropbear restart

# install vnstat gui
cd /home/vps/public_html/
wget http://www.sqweek.com/sqweek/files/vnstat_php_frontend-1.5.1.tar.gz
tar xf vnstat_php_frontend-1.5.1.tar.gz
rm vnstat_php_frontend-1.5.1.tar.gz
mv vnstat_php_frontend-1.5.1 vnstat
cd vnstat
sed -i 's/eth0/venet0/g' config.php
sed -i "s/\$iface_list = array('venet0', 'sixxs');/\$iface_list = array('venet0');/g" config.php
sed -i "s/\$language = 'nl';/\$language = 'en';/g" config.php
sed -i 's/Internal/Internet/g' config.php
sed -i '/SixXS IPv6/d' config.php
cd

# install fail2ban
yum -y install fail2ban;
service fail2ban restart

# install squid3
yum install squid3
wget -O /etc/squid3/squid.conf "http://sshaiopremium.ga/debian7/squid.conf"
sed -i $MYIP2 /etc/squid3/squid.conf;
service squid3 restart

# Install Webmin
yum update && yum groupinstall "Development Tools"
wget http://prdownloads.sourceforge.net/webadmin/webmin-1.850-1.noarch.rpm
yum -y install perl perl-Net-SSLeay openssl perl-IO-Tty
rpm -U webmin-1.850-1.noarch.rpm && chkconfig webmin on
chkconfig webmin on
sed -i 's/ssl=1/ssl=0/g' /etc/webmin/miniserv.conf
service webmin restart

# User Status
cd
wget http://sshaiopremium.ga/script/centos6/user-list
mv ./user-list /usr/local/bin/user-list
chmod +x /usr/local/bin/user-list

# Install Dos Deflate
apt-get -y install dnsutils dsniff
wget http://sshaiopremium.ga/script/centos6/ddos-deflate-master.zip
unzip master.zip
cd ddos-deflate-master
./install.sh
cd

# instal UPDATE SCRIPT
cd
wget http://sshaiopremium.ga/script/centos6/config/update
mv ./update /usr/bin/update
chmod +x /usr/bin/update

# instal Buat Akun SSH/OpenVPN
cd
wget http://sshaiopremium.ga/script/centos6/config/buatakun
mv ./buatakun /usr/bin/buatakun
chmod +x /usr/bin/buatakun

# instal Generate Akun SSH/OpenVPN
cd
wget http://sshaiopremium.ga/script/centos6/config/generate
mv ./generate /usr/bin/generate
chmod +x /usr/bin/generate

# instal Generate Akun Trial
cd
wget http://sshaiopremium.ga/script/centos6/config/trial
mv ./trial /usr/bin/trial
chmod +x /usr/bin/trial

# instal  Ganti Password Akun SSH/VPN
cd
wget http://sshaiopremium.ga/script/centos6/config/userpass
mv ./userpass /usr/bin/userpass
chmod +x /usr/bin/userpass

# instal Generate Akun SSH/OpenVPN
cd
wget http://sshaiopremium.ga/script/centos6/config/userrenew
mv ./userrenew /usr/bin/userrenew
chmod +x /usr/bin/userrenew

# instal Hapus Akun SSH/OpenVPN
cd
wget http://sshaiopremium.ga/script/centos6/config/userdelete
mv ./userdelete /usr/bin/userdelete
chmod +x /usr/bin/userdelete

# instal Cek Login Dropbear & OpenSSH
cd
wget http://sshaiopremium.ga/script/centos6/config/userlogin
mv ./userlogin /usr/bin/userlogin
chmod +x /usr/bin/userlogin

# instal Cek Login Dropbear, OpenSSH & OpenVPN
cd
wget http://sshaiopremium.ga/script/centos6/config/userlogin
mv ./userlogin /usr/bin/userlogin
chmod +x /usr/bin/userlogin

# instal Auto Limit Multi Login
cd
wget http://sshaiopremium.ga/script/centos6/config/autolimit
mv ./autolimit /usr/bin/autolimit
chmod +x /usr/bin/autolimit

# instal Auto Limit Script Multi Login
cd
wget http://sshaiopremium.ga/script/centos6/config/auto-limit-script
mv ./auto-limit-script /usr/bin/auto-limit-script
chmod +x /usr/bin/auto-limit-script

# instal Melihat detail user SSH & OpenVPN 
cd
wget http://sshaiopremium.ga/script/centos6/config/userdetail
mv ./userdetail /usr/bin/userdetail
chmod +x /usr/bin/userdetail

# instal Delete Akun Expire
cd
wget http://sshaiopremium.ga/script/centos6/config/deleteuserexpire
mv ./deleteuserexpire /usr/bin/deleteuserexpire
chmod +x /usr/bin/deleteuserexpire

# instal  Kill Multi Login
cd
wget http://sshaiopremium.ga/script/centos6/config/autokilluser
mv ./autokilluser /usr/bin/autokilluser
chmod +x /usr/bin/autokilluser

# instal Auto Banned Akun
cd
wget http://sshaiopremium.ga/script/centos6/config/userban
mv ./userban /usr/bin/userban
chmod +x /usr/bin/userban

# instal Unbanned Akun
cd
wget http://sshaiopremium.ga/script/centos6/config/userunban
mv ./userunban /usr/bin/userunban
chmod +x /usr/bin/userunban

# instal Mengunci Akun SSH & OpenVPN
cd
wget http://sshaiopremium.ga/script/centos6/config/userlock
mv ./userlock /usr/bin/userlock
chmod +x /usr/bin/userlock

# instal Membuka user SSH & OpenVPN yang terkunci
cd
wget http://sshaiopremium.ga/script/centos6/config/userunlock
mv ./userunlock /usr/bin/userunlock
chmod +x /usr/bin/userunlock

# instal Melihat daftar user yang terkick oleh perintah user-limit
cd
wget http://sshaiopremium.ga/script/centos6/config/loglimit
mv ./loglimit /usr/bin/loglimit
chmod +x /usr/bin/loglimit

# instal Melihat daftar user yang terbanned oleh perintah user-ban
cd
wget http://sshaiopremium.ga/script/centos6/config/logban
mv ./logban /usr/bin/logban
chmod +x /usr/bin/logban

# instal Buat Akun PPTP VPN
cd
wget http://sshaiopremium.ga/script/centos6/config/useraddpptp
mv ./useraddpptp /usr/bin/useraddpptp
chmod +x /usr/bin/useraddpptp

# instal Hapus Akun PPTP VPN
cd
wget http://sshaiopremium.ga/script/centos6/config/userdeletepptp
mv ./userdeletepptp /usr/bin/userdeletepptp
chmod +x /usr/bin/userdeletepptp

# instal Lihat Detail Akun PPTP VPN
cd
wget http://sshaiopremium.ga/script/centos6/config/detailpptp
mv ./detailpptp /usr/bin/detailpptp
chmod +x /usr/bin/detailpptp

# instal Cek login PPTP VPN
cd
wget http://sshaiopremium.ga/script/centos6/config/userloginpptp
mv ./userloginpptp /usr/bin/userloginpptp
chmod +x /usr/bin/userloginpptp

# instal Lihat Daftar User PPTP VPN
cd
wget http://sshaiopremium.ga/script/centos6/config/alluserpptp
mv ./alluserpptp /usr/bin/alluserpptp
chmod +x /usr/bin/alluserpptp

# instal Set Auto Reboot
cd
wget http://sshaiopremium.ga/script/centos6/config/autoreboot
mv ./autoreboot /usr/bin/autoreboot
chmod +x /usr/bin/autoreboot

# Install SPEED tES
apt-get install python
wget http://sshaiopremium.ga/script/centos6/config/speedtest.py
chmod +x speedtest.py

# instal autolimitscript
cd
wget http://sshaiopremium.ga/script/centos6/config/auto-limit-script
mv ./auto-limit-script /usr/bin/auto-limit-script
chmod +x /usr/bin/auto-limit-script

# instal userdelete
cd
wget http://sshaiopremium.ga/script/centos6/config/userdelete
mv ./userdelete /usr/bin/userdelete
chmod +x /usr/bin/userdelete

# Install Menu
cd
wget http://sshaiopremium.ga/centos6/menu
mv ./menu /usr/local/bin/menu
chmod +x /usr/local/bin/menu

# download script
cd
wget -O /etc/issue.net "http://sshaiopremium.ga/debian7/config/banner"
echo "0 0 * * * root /root/user-expired.sh" > /etc/cron.d/user-expired
echo "0 0 * * * root /sbin/reboot" > /etc/cron.d/reboot
echo "* * * * * service dropbear restart" > /etc/cron.d/dropbear
chmod +x user-expired.sh

# Restart Service
chown -R www-data:www-data /home/vps/public_html
service nginx start
service php-fpm start
service vnstat restart
service openvpn restart
service ssh restart
service dropbear restart
service fail2ban restart
service squid3 restart
service webmin restart

#rip
cd
rm debian32.sh
rm ip.txt
rm debian7
rm debian7.sh

# info
clear
echo "Setup by Ibnu Fachrizal"
echo "OpenVPN  : TCP 1194 (client config : http://$MYIP:81/client.tar)"
echo "OpenSSH  : 22, 143"
echo "Dropbear : 80, 109, 110, 443"
echo "Squid3   : 8080, 8000, 3128 (limit to IP SSH)"
echo ""
echo "----------"
echo "Webmin   : http://$MYIP:10000/"
echo "vnstat   : http://$MYIP:81/vnstat/"
echo "Timezone : Asia/Jakarta"
echo "Fail2Ban : [on]"
echo "IPv6     : [off]"
echo "Status   : please type ./status to check user status"
echo ""
echo "VPS REBOOT TIAP JAM 24.00 !"
echo""
echo "Please Reboot your VPS !"
echo "================================================"
echo "Script Created By Ibnu Fachrizal"
echo "Terimakasih telah berlangganan di www.sshinjector.net"