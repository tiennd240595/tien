--------------------------Cµi Zerotier centos                                           font: unico
--lenh cai:
curl -s https://install.zerotier.com | sudo bash
--lenh them mang:
zerotier-cli join xxxxxxxx
--------------------------setup linux
doi pass khi mÊt pass
      centos 6 
      khëi ®éng Ên e
      sau ®ã thªm ( =1 " cã dÊu c¸ch ®Çu dÊu =") vµo cuèi ®o¹n code vµ ch¹y boot : "b"
      nhËp lÖnh: "passwd"   ®Ó thiÕt lËp l¹i
--------------------------ifconfig: command not found--------------------------------
ifconfig: command not found
khi sö dông trªn centos/RHEL th× b¹n cã thÓ kh¾c phuc b»ng c¸ch cµi ®Æt net-tools
yum install net-tools

netstat -tulpn 						" xem port ®ang ch¹y"

--------------------------NÐn vµ gi¶i nÐn file trong centos
1. NÐn vµ gi¶i nÐn file cã ®u«i .gz
1.1 NÐn
#gzip [tªn file]

1.2 Gi¶i nÐn
#gunzip [tªn file]

2. Gom vµ bung tËp tin hoÆc th­ môc ®u«i .tar
2.1 Gom
#tar -cvf [tªnfile.tar] [file1] [file2] ...
//§ãng gãi vµ nÐn d÷ liÖu
//# tar -czvf filename.tar.gz file1 file2 folder1 folder2
2.2 Bung
#tar -xvf [file.tar]

2.3 NÐn vµ Gom
#tar -zcvf [file.tar.gz] file1 file2 ...

2.4 Gi¶i nÐn vµ bung
#tar -zxvf [file.tar.gz]

3. Gi¶i nÐn file cã ®u«i .bz2
#tar xjvf [file.tar.bz2]
--------------------------xo¸ file trong centos

rm "tªn file"
rm -r "tªn th­ môc"
rm -d "tªn th­ môc rçng"


thªm c¸c chøc n¨ng sau rm:
-i :		.Khi b¹n xo¸ 1 file hoÆc th­ môc nµo ®ã b¹n cÇn ch­¬ng tr×nh lÖnh hiÓn thÞ th«ng 
			b¸o hái x¸c nhËn cã muèn xo¸ file ®ã hay kh«ng th× h·y sö dông option ‘-i‘
-f :		.B¹n sö dông option ‘-f‘ ®Ó Ðp buéc xo¸ file kh«ng hái x¸c nhËn. 
			.KÕt hîp gi÷a option ‘-r‘ vµ option ‘-f‘®Ó xo¸ 1 th­ môc
			
--------------------------lenh hamachi
-----xoa khoi room
hamachi evict (network ID) (client ID)
-----tao room
hamachi create  (network ID) (pass)
cµi hamachi b»ng file

sudo yum install redhat-lsb
wget https://www.vpn.net/installers/file-moi-nhat.rpm
wget https://www.vpn.net/installers/logmein-hamachi-2.1.0.203-1.x86_64.rpm
sudo rpm -ivh file-moi-nhat.rpm
sudo rpm -ivh logmein-hamachi-2.1.0.203-1.x86_64.rpm

----------------------------restart mang

systemctl restart NetworkManager

--------------------------lçi 
--bash: wget: command not found

B­íc 1. Cµi ®Æt vµ cËp nhËt thêi gian. NÕu ch­a cµi ®Æt h·y ch¹y lÖnh sau: trong khi ®ang cµi, 
®õng thao t¸c g× trªn mµn h×nh cmd nhÐ

yum –y update

B­íc 2. Installing wget – Cµi ®Æt wget

H·y dïng lÖnh sau ®Ó cµi ®Æt wget: B¹n sÏ nhËp "y" sau ®ã nhÊn enter nÕu ®­îc hái 

wget cµi rÊt nhanh, mÊt vµi s th«i nhÐ

yum install wget

Nh­ vËy lµ B¹n ®· cµi xong råi ®ã!


--------------------------lçi kh«ng t¹o ®­îc th­ viÖn
# yum install redhat-lsb
--------------------------Lçi ???? ë SecureCRT:
Vµo centos thªm ®o¹n nµy vµo cuèi råi ping ip xem nhËn ch­a.
Code:
ifconfig eth1 192.168.1.100 netmask 255.255.255.0 up
TrÝch dÉn Göi bëi vipbk  Xem bµi viÕt
Lçi ch¬i 1 thêi gian ®¸nh kh«ng ra vËt phÈm vµ nÐm ®å ra ngoµi mÊt lu«n:

* Nguyªn nh©n (theo m×nh hiÓu): c¸c b¹n ra ngoµi thµnh T­¬ng D­¬ng phÝa t©y (vµ c¶ mét sè thµnh kh¸c) ®Ó ý thÊy cã rÊt nhiÒu Kim/Méc/Thñy/Háa/Thæ Liªn Hoa cø sau mét kho¶ng thêi gian l¹i tù ®éng rít ra.
=> Rít ra qu¸ nhiÒu nªn ®¸nh qu¸i nµo còng kh«ng ra ®å n÷a 

* C¸ch söa: kh«ng cho s3relay ch¹y event ®ã n÷a:
Më file gateway/s3relay/relaysetting/task/tasklist.ini
Xãa bá:
Code:
[Task_58]
TaskFile=menglanjie_06.lua
hoÆc ®æi tªn file trªn ®Ó s3 kh«ng load file ®ã n÷a (do kh«ng t×m thÊy file)


--------------------------CµI §ÆT C¸C VPS


B­íc 2: §æi mËt khÈu Root ngay sau chóng ta ®¨ng nhËp vµo ®­îc (l­u ý: mËt khÈu Root kh¸ lµ quan träng, nªn c¸c b¹n ph¶i nhí kü ®ã nhÐ). C¸c b¹n gâ Command sau:



Code:

sudo passwd root
Sau ®ã nhËp mËt khÈu míi vµ X¸c nhËn mËt khÈu míi b»ng viÖc lËp l¹i thªm mét lÇn n÷a (l­u ý: lµ lóc gâ mËt khÈu míi, nã sÏ kh«ng hiÓn thÞ trªn mµn h×nh, nªn tuyÖt ®èi ph¶i cÈn thËn tõng ch÷)

Sau khi xong nã sÏ b¸o nh­ h×nh d­íi:

Read more: http://bao.edu.vn/threads/646-Huong-dan-cai-VPS-linux-va-dang-nhap-bang-SSH-tren-Google-Cloud-Platform.html?#ixzz4Glm5GxR3

B­íc 03: Config ®Ó ®¨ng nhËp SSH b»ng mËt khÈu th«ng qua PuTTY vµ Bitvise



Chóng ta b¾t ®Çu gâ lÖnh nhÐ:

Code:

sudo yum install nano -y
Sau ®ã chóng ta Edit File sshd_config

Code:

sudo nano /etc/ssh/sshd_config
T¹i ®©y chóng ta t×m vµ chó ý ®Õn 2 dßng: 
- PasswordAuthentication, b¹n söa l¹i lµ yes
- PermitRootLogin, b¹n söa l¹i lµ yes

sau khi söa xong, b¹n nhÊn Ctrl+O --> Enter (®Ó l­u l¹i) -> Ctrl+X (®Ó tho¸t ra)

Read more: http://bao.edu.vn/threads/646-Huong-dan-cai-VPS-linux-va-dang-nhap-bang-SSH-tren-Google-Cloud-Platform.html?#ixzz4GlmEC6NQ

B­íc 04: Restart l¹i SSHD



Code:

sudo service sshd restart
HoÆc reboot Server

Code:

sudo reboot

Read more: http://bao.edu.vn/threads/646-Huong-dan-cai-VPS-linux-va-dang-nhap-bang-SSH-tren-Google-Cloud-Platform.html?#ixzz4GlmQZoaJ
=======================================================================================================================================


--------------------------cµi swap 
sudo dd if=/dev/zero of=/swapfile bs=4096 count=4096k
1. T¹O SWAP
- SWAP lµ g× ? ( NhiÒu ng­êi hay gäi lµ RAM ¶O nh­ng ko ph¶i ¶o ®©u )
Swap ( trao ®æi ) ram víi Bé nhí ram cña m¸y , vµ swap dïng æ cøng víi mét ph©n vïng trªn lµ linux swap .
swap sÏ cho tèt ®é chËm v× vËy b¹n cÇn sö dông æ cøng cã tèc ®é ®äc vµ ghi cao . M×nh khuyªn c¸c b¹n h·y sö dông c¸c VPS cã sö dông æ cøng SSD ®Ó t¹o SWAP , m×nh ®· thö nghiÖm trªn VPS cña http://digitalocean.com vµ thÊy swap ch¹y kh¸ nhanh , rÊt dÔ hiÓu v× digitalocean lµ SSD 
- T¹o swap b»ng c¸c lÖnh sau ®©y
KiÓm tra xem ®· cã ph©n vïng linux swap nµo ®­îc kÝch ho¹t hay ch­a
M·:
swapon -s
NÕu ch­a cã sÏ thÊy chØ thÊy nh­ sau
M·:
Filename                Type        Size    Used    Priority
TiÕp tôc t¹o ra file swap
M·:
dd if=/dev/zero of=/swapfile bs=1024 count=1024k
ë ®©y t«i t¹o ra file swap lµ 1024MB , b¹n cho thÓ t¹o file 512mb nÕu b¹n muèn vµ thay b»ng 512k
Make linux swap
M·:
mkswap /swapfile
Thµnh c«ng sÏ thÊy hiÖn nh­ sau
M·:
Setting up swapspace version 1, size = 1048572 KiB
no label, UUID=257be8d9-54ee-4cc2-962d-cdadeadba1f4
KÝch ho¹t swap
M·:
swapon /swapfile
B©y giê ban h·y kiÓm tra xem ph©n vïng linux swap ®· ho¹t ®éng hay ch­a
M·:
swapon -s
KÕt qu¶ nh­ d­íi lµ ®· ok
M·:
Filename                                Type            Size    Used    Priority
/swapfile                              file            1048568 0      -1
§Ó mçi lÇn reboot l¹i VPS th× mÆc ®Þnh swap sÏ bËt th× c¸c ban lµm nh­ sau
ChØnh söa file /etc/fstab
M·:
nano /etc/fstab
Thªm vµo cuèi
M·:
 /swapfile      none    swap    sw      0      0
Sau ®ã l­u l¹i
Set permissions cho swapfile
M·:
chown root:root /swapfile
chmod 0600 /swapfile
B©y giê th× b¹n ®· cã thªm 1GB ram n÷a råi nhÐ
Gâ free ®Ó biÕt th«ng sè swap ram


2. CHØNH SWAPPINESS 
Swappiness lµ g× ?
Chi tiÕt WIKI
Cã rÊt nhiÒu tranh c¶i vÒ viÖc tèi ­u hÖ thèng Linux liªn quan ®Õn Swappiness. Ngay c¶ c¸c nhµ ph¸t triÓn Linux còng kh«ng ®ång y vÒ tham sè Swappiness nµo lµ tèi ­u.
Gi¸ trÞ swappiness ®iÒu khiÓn xu h­íng trao ®æi (swap) th«ng tin cña kernel tõ RAM vµ æ cøng, Swappiness chÊp nhËn mét gi¸ trÞ trong kho¶ng tõ 0 ®Õn 100.
Gi¸ trÞ mÆc ®Þnh cña swappiness ®­îc thiÕt l©p ë gi¸ trÞ lµ 60. NÕu b¹n c¶m thÊy qu¸ tr×nh trao ®æi th«ng tin gi÷a nh©n Linux ( kernel ) vµ RAM hay æ cøng kh«ng ®¹t ®Õn gi¸ trÞ ®ã, b¹n cã thÓ gi¶m th«ng sè cña swappiness lªn hoÆc xuèng theo ý cña b¹n
Nãi tãm l¹i thèng sè Swappiness ®Ó chØ ®Þnh møc ®é ­u tiªn cña swap
swappiness = 0 - cã nghÜ lµ swap chØ sö dông th× RAM vËt lý bÞ trµn ( hÕt ram )
swappiness = 10 - Cã nghÜa lµ nÕu RAM vËt lý cßn 10% th× hÖ thèng sÏ dïng ®Õn swap
swappiness = 60 - MÆc ®Þnh
swappiness = 100 - Swap sÏ ho¹t ®éng hÕt m×nh . ­u tiªn nh­ lµ ram thËt ( m¸y sÏ lµm viÖc vÊt v¶ h¬n)

§Ó chØnh th«ng sè swappiness ta dïng lÖnh
M·:
echo 20 > /proc/sys/vm/swappiness
Tuy nhiªn th«ng sè nµy sÏ vÒ mÆc ®Þnh lµ 60 khi ta khëi ®éng l¹i m¸y
§Ó cho th«ng sè lu«n thay ®æi khi khëi ®éng l¹i m¸y chóng ta cÇn gâ lÖnh sau
M·:
echo "vm.swappiness=20" | sudo tee -a /etc/sysctl.conf && sudo sysctl -p
GÝa trÞ t«i ®Æt lµ 10 cßn c¸c b¹n tïy nhÐ
cat /proc/sys/vm/swappiness ®Ó kiÓm tra
§· thö nghiÖm trªn VPS SSD cña http://digitalocean.com
Chóc c¸c b¹n thµnh c«ng

3. THAM KH¶O TH£M: http://www.cyberciti.biz/faq/linux-a...ap-file-howto/

4. NGUåN: daivietpda.vn



B¹n cÇn disable dÞch vô iptables ®ang ch¹y trªn CentOS version 4/5/6.
(a)iptables – IPv4 iptables firewall service.
(b)ip6tables – IPv6 iptables firewall service.
Disable firewall

Nh÷ng command bªn d­íi ®­îc thùc hiÖn ë user root ®Ó disable firewall IPv4.
[root@linux24h ~]# service iptables save
[root@linux24h ~]# service iptables stop
[root@linux24h ~]# chkconfig iptables off
Sample Outputs:
iptables: Flushing firewall rules:                         [  OK  ]
iptables: Setting chains to policy ACCEPT: filter          [  OK  ]
iptables: Unloading modules:                               [  OK  ]
TiÕp theo, nh÷ng command bªn d­íi ®­îc thùc hiÖn ë user root ®Ó disable firewall IPv6.
[root@linux24h ~]# service ip6tables save
[root@linux24h ~]# service ip6tables stop
[root@linux24h ~]# chkconfig ip6tables off
Sample Outputs:
ip6tables: Flushing firewall rules:                        [  OK  ]
ip6tables: Setting chains to policy ACCEPT: filter         [  OK  ]
ip6tables: Unloading modules:                              [  OK  ]
Enable Firewall

B¹n cÇn më(Enable) Firewall IPv4 sö dông c¸c lÖnh d­íi ®©y ë root user:
[root@linux24h ~]# service iptables start
[root@linux24h ~]# chkconfig iptables on
Sample Outputs:
iptables: Applying firewall rules:                         [  OK  ]
§èi víi Firewall IPv6
[root@linux24h ~]# service ip6tables start
[root@linux24h ~]# chkconfig ip6tables on
Command ®Ó kiÓm tra t×nh tr¹ng

IPv4
[root@linux24h ~]# service iptables status
HoÆc
[root@linux24h ~]# /sbin/iptables -L -v -n
IPv6
[root@linux24h ~]# service ip6tables status
HoÆc
[root@linux24h ~]# /sbin/ip6tables -L -v -n
Sample Outputs(Disable Firewall):
Chain INPUT (policy ACCEPT 0 packets, 0 bytes)
 pkts bytes target     prot opt in     out     source               destination         

Chain FORWARD (policy ACCEPT 0 packets, 0 bytes)
 pkts bytes target     prot opt in     out     source               destination         

Chain OUTPUT (policy ACCEPT 0 packets, 0 bytes)
 pkts bytes target     prot opt in     out     source               destination 








C¸c c©u lÖnh MySQL cÇn ph¶i biÕt
 Häc VPS / Database / C¸c c©u lÖnh MySQL cÇn ph¶i biÕt
 07/03/2014  Lu©n TrÇn  Database  11,024 Views  6 Comments
CHIA SÎ:


Khi ch¹y c¸c lÖnh nµy, b¹n cÇn login vµo MySQL víi tµi kho¶n root (MySQL root chø kh«ng ph¶i tµi kho¶n root qu¶n lý VPS) hoÆc tµi kho¶n cã full quyÒn. TÊt c¶ c¸c thao t¸c m×nh thùc hiÖn trªn VPS CentOS

§¨ng nhËp MySQL b¹n dïng lÖnh: mysql -u root -p

1. Th­ môc chøa database

Trªn CentOS, toµn bé file raw database ®­îc l­u trong th­ môc /var/lib/mysql

2. Qu¶n lý tµi kho¶n vµ ph©n quyÒn

HiÓn thÞ toµn bé users:
mysql> SELECT * FROM mysql.user;

Xãa null user:
mysql> DELETE FROM mysql.user WHERE user = ' ';

Xãa tÊt c¶ user mµ kh«ng ph¶i root:
mysql> DELETE FROM mysql.user WHERE NOT (host="localhost" AND user="root");

§æi tªn tµi kho¶n root (gióp b¶o mËt):
mysql> UPDATE mysql.user SET user="mydbadmin" WHERE user="root";

G¸n full quyÒn cho mét user míi:
mysql> GRANT ALL PRIVILEGES ON *.* TO 'username'@'localhost' IDENTIFIED BY 'mypass' WITH GRANT OPTION;

Ph©n quyÒn chi tiÕt cho mét user míi:
mysql> GRANT SELECT, INSERT, UPDATE, DELETE, CREATE, DROP, INDEX, ALTER, CREATE TEMPORARY TABLES, LOCK TABLES ON mydatabase.* TO 'username'@'localhost' IDENTIFIED BY 'mypass';

G¸n full quyÒn cho mét user míi trªn mét database nhÊt ®Þnh:
mysql> GRANT ALL PRIVILEGES ON mydatabase.* TO 'username'@'localhost' IDENTIFIED BY 'mypass' WITH GRANT OPTION;

Thay ®æi mËt khÈu user:
mysql> UPDATE mysql.user SET password=PASSWORD("newpass") WHERE User='username';

Xãa user:
mysql> DELETE FROM mysql.user WHERE user="username";
3. C¸c thao t¸c database

HiÓn thÞ toµn bé databases:
mysql> SHOW DATABASES;
T¹o database:
mysql> CREATE DATABASE mydatabase;

Sö dông mét database:
mysql> USE mydatabase;

Xãa mét database:
mysql> DROP DATABASE mydatabase;

Tèi ­u database:
All Databases:
$ sudo mysqlcheck -o --all-databases -u root -p
Single Database:
$ sudo mysqlcheck -o db_schema_name -u root -p
4. C¸c thao t¸c table

TÊt c¶ c¸c thao t¸c bªn d­íi b¹n ph¶i lùa chän tr­íc database b»ng c¸ch dïng lÖnh: mysql> USE mydatabase;

HiÓn thÞ toµn bé table:
mysql> SHOW TABLES;

HiÓn thÞ d÷ liÖu cña table:
mysql> SELECT * FROM tablename;

§æi tªn table :
mysql> RENAME TABLE first TO second;
hoÆc
mysql> ALTER TABLE mytable rename as mynewtable;

Xãa table:
mysql> DROP TABLE mytable;
5. C¸c thao t¸c cét vµ hµng

TÊt c¶ c¸c thao t¸c bªn d­íi b¹n ph¶i lùa chän tr­íc database b»ng c¸ch dïng lÖnh: mysql> USE mydatabase;

HiÓn thÞ c¸c column trong table:
mysql> DESC mytable;
hoÆc
mysql> SHOW COLUMNS FROM mytable;

§æi tªn column:
mysql> UPDATE mytable SET mycolumn="newinfo" WHERE mycolumn="oldinfo";

Select d÷ liÖu:
mysql> SELECT * FROM mytable WHERE mycolumn='mydata' ORDER BY mycolumn2;

Insert d÷ liÖu vµo table:
mysql> INSERT INTO mytable VALUES('column1data','column2data','column3data','column4data','column5data','column6data','column7data','column8data','column9data');

Xãa d÷ liÖu trong table:
mysql> DELETE FROM mytable WHERE mycolumn="mydata";

CËp nhËt d÷ liÖu trong table:
mysql> UPDATE mytable SET column1="mydata" WHERE column2="mydata";
6. C¸c thao t¸c sao l­u vµ phôc håi

Sao l­u toµn bé database b»ng lÖnh (chó ý kh«ng cã kho¶ng tr¾ng gi÷a -p vµ mËt khÈu):
mysqldump -u root -pmypass --all-databases > alldatabases.sql

Sao l­u mét database bÊt kú:
mysqldump -u username -pmypass databasename > database.sql

Kh«i phôc toµn bé database b»ng lÖnh:
mysql -u username -pmypass < alldatabases.sql (no space in between -p and mypass)

Kh«i phôc mét database bÊt kú:
mysql -u username -pmypass databasename < database.sql

ChØ sao l­u cÊu tróc database:
mysqldump --no-data --databases databasename > structurebackup.sql

ChØ sao l­u cÊu tróc nhiÒu database:
mysqldump --no-data --databases databasename1 databasename2 databasename3 > structurebackup.sql

Sao l­u mét sè table nhÊt ®Þnh:
mysqldump --add-drop-table -u username -pmypass databasename table_1 table_2 > databasebackup.sql
Related Posts:
Backup vµ Restore MySQL Database b»ng dßng lÖnh
T¹o mysql database vµ user b»ng lÖnh terminal
21 c©u lÖnh Linux ph¶i nhí
Reset MySQL root password

----------------------------link tai sql--------------------------
--Root chay game ban win7 xuong

https://drive.google.com/file/d/1l8-PKXLgM0vs6OipmDtmdGXBRivkCKPn/view?usp=sharing

--Root chay game ban win8.1 len
https://drive.google.com/file/d/1b994WQvDm_gYOTGUjtzv9gBd8SsqAdcC/view?usp=sharing
--SQL 2008
https://drive.google.com/file/d/1Fcxu0KxODSwkaWpYSC-yJx5EIi_enHpb/view?usp=sharing

--GMPassGen
https://drive.google.com/file/d/17dYrzaGuHprLn8FtQarVSfNBMuMHVXXt/view?usp=sharing
------------------------------------------------------CAI DAT JX PC------------------------------------------------------

----------------------------------------PHÇN 1 : TR£N CENTOS 7

---------------------------Ch¹y c¸c lÖnh sau ®Ó cµi th­ viÖn---------------------------
yum update -y -y
yum install net-tools -y
yum install libuuid.i686 -y
yum install libcrypto.so.6 -y
yum install libstdc++.so.6 -y
yum install libuuid.so.1 -y

---------------------------Cµi mysql---------------------------
yum install mariadb-server -y
systemctl enable mariadb
systemctl start mariadb

--§Ó Remote MySQL tõ Navicat b»ng User Root th× lµm thªm 1 ph¸t nµy n÷a:

sudo mysql -u root -pP@ssw0rd
GRANT ALL ON *.* to root@'%' IDENTIFIED BY 'P@ssw0rd';

--Note: ch÷ P@ssw0rd chÝnh lµ Password cña c¸c b¸c ®ã nha.

      
--HiÓn thÞ toµn bé databases:
mysql> SHOW DATABASES;
T¹o database:
mysql> CREATE DATABASE mydatabase;

--Sö dông mét database:
mysql> USE mydatabase;

--Xãa mét database:
mysql> DROP DATABASE mydatabase;
---------------------------CÊu h×nh mËt khÈu cho mysql (mÆc ®Þnh lµ 1234560123)---------------------------
mysql_secure_installation
NhÊn Enter 
NhÊn Y
§Æt mËt khÈu 1234560123
NhËp l¹i 
Chän Y
Chän n
Chän y råi y

---------------------------T¾t t­êng löa---------------------------
systemctl stop firewalld			" dõng firewalld"
systemctl disable firewalld			"xãa firewalld"
firewall-cmd --zone=public --permanent --add-port=81/tcp
firewall-cmd --reload

---------------------------T¹o Database server1---------------------------
- NhËp 
mysql -uroot -p
mËt khÈu 1234560123
CREATE DATABASE server1;
SHOW DATABASES;
---------------------------ChÐp file vµo CENTOS---------------------------
- Dïng WINSCP chÐp file jxser ®· cã vµo th­ môc /home/

---------------------------ChØnh c¸c th«ng sè IP trong th­ môc gateway vµ server1---------------------------
- Nh­ file jxser mÆc ®Þnh ®· ®Ó IP gièng víi IP khi config card m¹ng CENTOS 6 lóc ®Çu.
C¸c file goddess.cfg
Ngay chæ InternetIP chØnh thµnh IP cña CENTOS (192.168.1.100)
bishop.cfg
- Ngay chæ AccSvrIP = 192.168.1.200 (IP cña m¸y ¶o WIN)
- Cßn c¸i mac-address th× khi nµo lµm online sÏ chØnh theo ®Þa chØ MAC cña m¸y WIN vµ CENTOS riªng
- Ngay chæ InternetIP chØnh thµnh IP cña CENTOS (192.168.1.100)
relay_config.ini
[root]
Address = 192.168.1.200 (IP cña m¸y ¶o WIN)

[FixIP]
InternetIP = 192.168.1.100 (IP cña m¸y ¶o CENTOS)

server.cfg còng chØnh y vËy

TiÕp theo lµ më Port Firewall cña CentOS:

iptables -I INPUT -p TCP --dport 5622 -j ACCEPT
iptables -I INPUT -p TCP --dport 5623 -j ACCEPT
iptables -I INPUT -p TCP --dport 5632 -j ACCEPT
iptables -I INPUT -p TCP --dport 6666 -j ACCEPT
iptables -I INPUT -p TCP --dport 3306 -j ACCEPT
service iptables save
service iptables restart --( muèn ch¹y lÖnh nµy cÇn ph¶i cµi : yum install iptables-services)

      
-- C©u lÖnh ch¹y sv        
cd /home/jxser/gateway
./goddess_y

cd /home/jxser/gateway
./bishop_y

cd /home/jxser/gateway/s3relay
./s3relay_y

cd /home/jxser/server1
./jx_linux_y
          
----------------------------------Xãa log cña linux nh­ nµo thÕ c¸c b¸c
jxser/sever1/logs
jxser/sever1/itemexchange_setting/rolevalue_log
jxser/sever1/rolevalueladder_setting/rolevalue_log
jxser/gateway/logs
jxser/gateway/roleblack
jxser/gateway/backup
jxser/gateway/s3relay/logs
jxser/gateway/s3relay/relay_log
jxser/gateway/s3relay/RelayRunData
jxser/gateway/s3relay/roleback
----------------------------------------PHÇN 2 : TR£N WINXP
----------------------------------Cµi SQL 2000---------------------------------------------------------------------------------------
- T¶i file SQLServer2000.rar
- Gi¶i nÐn
- Ch¹y file setup.bat
- Lµm theo h­íng dÉn nh­ video
- Authentication Mode
Password : sa
NhËp l¹i: sa
Sau khi cµi xong
- Vµo Start – Program Files chän Microsoft Sql …
- Ch¹y service_manager => xuÊt hiÖn cöa sæ mysql db
- NhÊn nót tam gi¸c xanh ®Ó bËt service lªn
* Attach Database
- §Ó s½n 1 file account_tong.MDF
- Start-Program-Enterprise Manager
- Lµm theo video ®Ó attach database
- Vµo phÇn Security-Login
- ChØnh password thµnh 1234560123
* ChÐp th­ môc Pays – vµ GMPassGen.exe
- Më database.ini
- ChØnh IP thµnh 192.168.1.200
Dïng GMPassGen.exe ®Ó convert m· ho¸ IP
Sau ®ã ®iÒn vµo môc IP trong file database
- Database tªn lµ account_tong – còng m· ho¸
- user vµ pass còng m· ho¸
- User : sa
- Pass: 1234560123
§iÒn theo video (chó ý, GMPassGen.exe mçi lÇn ch¹y lµ m· kh¸c nhau, ë m¸y tui th× ra nh­ video, nh­ng m¸y c¸c b¹n sÏ ra kh¸c, quan träng copy ®ñ vµ ®óng vÞ trÝ)
Chuét ph¶i vµo file S3RelayServer_Y chän Send to desktop
T­¬ng tù víi file Sword3paysys
§Æt tªn 1 cho S3RelayServer_Y, 2 cho Sword3…
Ch¹y 1
Ch¹y 2
Më SecureCRT 
KÕt nèi
Ch¹y 1, 2, 3, S1


Sau ®ã ch¹y l¹i lÖnh khëi ®éng server bªn m¸y ¶o win
----------------------------------Chay qua 1 model hoac ip pulic va Private ---------------------------------------------------------
4. Config jx_server_y
- DÞch vô nµy lµ dÞch vô game chÝnh.
- Ng­êi ch¬i trong game sÏ liªn tôc connect tíi dÞch vô nµy.
- Ch¹y port 6666 (cã thÓ mçi game cã ®æi port).
- File config: servercfg.ini
- Th«ng th­êng chØ chØnh 1 chç lµ InternetIp trong FixIp, chç nµy nÕu cã proxy th× ®Æt IP proxy (123.123.123.123) vµo ®©y.
II. Config tÝch hîp Proxy
1. Add IP Proxy:
- Môc ®Ých ®Ó services cuèi jx_server_y cã thÓ start ®­îc víi IP proxy.
- Ch¹y lÖnh:
/sbin/ip addr add 123.123.123.123/32 dev eth0:1 (víi 123.123.123.123 lµ IP proxy, eth0 lµ tªn card m¹ng - cÇn thay b»ng tªn t­¬ng øng víi server cña b¹n)
- Add dßng trªn vµo file /etc/rc.local lu«n ®Ó khi khëi ®éng tù add IP proxy vµo sv linux.
- Víi CentOS 7 th× cÇn ch¹y thªm lÖnh chmod +x /etc/rc.d/rc.local th× khi reboot míi cã t¸c dông.
2. Xãa c¸c rule iptables mÆc ®Þnh:
- Flush c¸c rules mÆt ®Þnh cña iptables t¹i 3 c¸c chains:
iptables -F INPUT
iptables -F OUTPUT
iptables -F FORWARD
3. Nat traffic game tõ proxy vµo sv linux, nat sang port game.
- Ch¹y lÖnh:
iptables -t nat -A PREROUTING -d 192.168.199.11/32 -p tcp -m tcp --dport 6666 -j DNAT --to-destination 123.123.123.123
- L­u l¹i cÊu h×nh iptables hiÖn t¹i cho lÇn khëi ®éng tiÕp theo: #iptables-save > /etc/sysconfig/iptables
PhÇn nµy lµ rÊt quan träng, cÇn lµm theo chÝnh x¸c ®Ó ch¹y ®­îc game còng nh­ khi reboot m¸y chñ th× ko ph¶i vµo config l¹i. §Õn ®©y lµ hoµn tÊt råi!

----------------------------------------HÕT--------------------------------------------------------------------------------------------------------------

