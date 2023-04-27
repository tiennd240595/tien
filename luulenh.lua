--------------------------Cài Zerotier centos                                           font: unico
--lenh cai:
curl -s https://install.zerotier.com | sudo bash
--lenh them mang:
zerotier-cli join xxxxxxxx
--------------------------setup linux
doi pass khi mất pass
      centos 6 
      khởi động ấn e
      sau đó thêm ( =1 " có dấu cách đầu dấu =") vào cuối đoạn code và chạy boot : "b"
      nhập lệnh: "passwd"   để thiết lập lại
--------------------------ifconfig: command not found--------------------------------
ifconfig: command not found
khi sử dụng trên centos/RHEL thì bạn có thể khắc phuc bằng cách cài đặt net-tools
yum install net-tools

netstat -tulpn 						" xem port đang chạy"

--------------------------Nén và giải nén file trong centos
1. Nén và giải nén file có đuôi .gz
1.1 Nén
#gzip [tên file]

1.2 Giải nén
#gunzip [tên file]

2. Gom và bung tập tin hoặc thư mục đuôi .tar
2.1 Gom
#tar -cvf [tênfile.tar] [file1] [file2] ...
//Đóng gói và nén dữ liệu
//# tar -czvf filename.tar.gz file1 file2 folder1 folder2
2.2 Bung
#tar -xvf [file.tar]

2.3 Nén và Gom
#tar -zcvf [file.tar.gz] file1 file2 ...

2.4 Giải nén và bung
#tar -zxvf [file.tar.gz]

3. Giải nén file có đuôi .bz2
#tar xjvf [file.tar.bz2]
--------------------------xoá file trong centos

rm "tên file"
rm -r "tên thư mục"
rm -d "tên thư mục rỗng"


thêm các chức năng sau rm:
-i :		.Khi bạn xoá 1 file hoặc thư mục nào đó bạn cần chương trình lệnh hiển thị thông 
			báo hỏi xác nhận có muốn xoá file đó hay không thì hãy sử dụng option ‘-i‘
-f :		.Bạn sử dụng option ‘-f‘ để ép buộc xoá file không hỏi xác nhận. 
			.Kết hợp giữa option ‘-r‘ và option ‘-f‘để xoá 1 thư mục
			
--------------------------lenh hamachi
-----xoa khoi room
hamachi evict (network ID) (client ID)
-----tao room
hamachi create  (network ID) (pass)
cài hamachi bằng file

sudo yum install redhat-lsb
wget https://www.vpn.net/installers/file-moi-nhat.rpm
wget https://www.vpn.net/installers/logmein-hamachi-2.1.0.203-1.x86_64.rpm
sudo rpm -ivh file-moi-nhat.rpm
sudo rpm -ivh logmein-hamachi-2.1.0.203-1.x86_64.rpm

----------------------------restart mang

systemctl restart NetworkManager

--------------------------lỗi 
--bash: wget: command not found

Bước 1. Cài đặt và cập nhật thời gian. Nếu chưa cài đặt hãy chạy lệnh sau: trong khi đang cài, 
đừng thao tác gì trên màn hình cmd nhé

yum –y update

Bước 2. Installing wget – Cài đặt wget

Hãy dùng lệnh sau để cài đặt wget: Bạn sẽ nhập "y" sau đó nhấn enter nếu được hỏi 

wget cài rất nhanh, mất vài s thôi nhé

yum install wget

Như vậy là Bạn đã cài xong rồi đó!


--------------------------lỗi không tạo được thư viện
# yum install redhat-lsb
--------------------------Lỗi ???? ở SecureCRT:
Vào centos thêm đoạn này vào cuối rồi ping ip xem nhận chưa.
Code:
ifconfig eth1 192.168.1.100 netmask 255.255.255.0 up
Trích dẫn Gửi bởi vipbk  Xem bài viết
Lỗi chơi 1 thời gian đánh không ra vật phẩm và ném đồ ra ngoài mất luôn:

* Nguyên nhân (theo mình hiểu): các bạn ra ngoài thành Tương Dương phía tây (và cả một số thành khác) để ý thấy có rất nhiều Kim/Mộc/Thủy/Hỏa/Thổ Liên Hoa cứ sau một khoảng thời gian lại tự động rớt ra.
=> Rớt ra quá nhiều nên đánh quái nào cũng không ra đồ nữa 

* Cách sửa: không cho s3relay chạy event đó nữa:
Mở file gateway/s3relay/relaysetting/task/tasklist.ini
Xóa bỏ:
Code:
[Task_58]
TaskFile=menglanjie_06.lua
hoặc đổi tên file trên để s3 không load file đó nữa (do không tìm thấy file)


--------------------------CÀI ĐẶT CÁC VPS


Bước 2: Đổi mật khẩu Root ngay sau chúng ta đăng nhập vào được (lưu ý: mật khẩu Root khá là quan trọng, nên các bạn phải nhớ kỹ đó nhé). Các bạn gõ Command sau:



Code:

sudo passwd root
Sau đó nhập mật khẩu mới và Xác nhận mật khẩu mới bằng việc lập lại thêm một lần nữa (lưu ý: là lúc gõ mật khẩu mới, nó sẽ không hiển thị trên màn hình, nên tuyệt đối phải cẩn thận từng chữ)

Sau khi xong nó sẽ báo như hình dưới:

Read more: http://bao.edu.vn/threads/646-Huong-dan-cai-VPS-linux-va-dang-nhap-bang-SSH-tren-Google-Cloud-Platform.html?#ixzz4Glm5GxR3

Bước 03: Config để đăng nhập SSH bằng mật khẩu thông qua PuTTY và Bitvise



Chúng ta bắt đầu gõ lệnh nhé:

Code:

sudo yum install nano -y
Sau đó chúng ta Edit File sshd_config

Code:

sudo nano /etc/ssh/sshd_config
Tại đây chúng ta tìm và chú ý đến 2 dòng: 
- PasswordAuthentication, bạn sửa lại là yes
- PermitRootLogin, bạn sửa lại là yes

sau khi sửa xong, bạn nhấn Ctrl+O --> Enter (để lưu lại) -> Ctrl+X (để thoát ra)

Read more: http://bao.edu.vn/threads/646-Huong-dan-cai-VPS-linux-va-dang-nhap-bang-SSH-tren-Google-Cloud-Platform.html?#ixzz4GlmEC6NQ

Bước 04: Restart lại SSHD



Code:

sudo service sshd restart
Hoặc reboot Server

Code:

sudo reboot

Read more: http://bao.edu.vn/threads/646-Huong-dan-cai-VPS-linux-va-dang-nhap-bang-SSH-tren-Google-Cloud-Platform.html?#ixzz4GlmQZoaJ
=======================================================================================================================================


--------------------------cài swap 
sudo dd if=/dev/zero of=/swapfile bs=4096 count=4096k
1. TạO SWAP
- SWAP là gì ? ( Nhiều người hay gọi là RAM ảO nhưng ko phải ảo đâu )
Swap ( trao đổi ) ram với Bộ nhớ ram của máy , và swap dùng ổ cứng với một phân vùng trên là linux swap .
swap sẽ cho tốt độ chậm vì vậy bạn cần sử dụng ổ cứng có tốc độ đọc và ghi cao . Mình khuyên các bạn hãy sử dụng các VPS có sử dụng ổ cứng SSD để tạo SWAP , mình đã thử nghiệm trên VPS của http://digitalocean.com và thấy swap chạy khá nhanh , rất dễ hiểu vì digitalocean là SSD 
- Tạo swap bằng các lệnh sau đây
Kiểm tra xem đã có phân vùng linux swap nào được kích hoạt hay chưa
Mã:
swapon -s
Nếu chưa có sẽ thấy chỉ thấy như sau
Mã:
Filename                Type        Size    Used    Priority
Tiếp tục tạo ra file swap
Mã:
dd if=/dev/zero of=/swapfile bs=1024 count=1024k
ở đây tôi tạo ra file swap là 1024MB , bạn cho thể tạo file 512mb nếu bạn muốn và thay bằng 512k
Make linux swap
Mã:
mkswap /swapfile
Thành công sẽ thấy hiện như sau
Mã:
Setting up swapspace version 1, size = 1048572 KiB
no label, UUID=257be8d9-54ee-4cc2-962d-cdadeadba1f4
Kích hoạt swap
Mã:
swapon /swapfile
Bây giờ ban hãy kiểm tra xem phân vùng linux swap đã hoạt động hay chưa
Mã:
swapon -s
Kết quả như dưới là đã ok
Mã:
Filename                                Type            Size    Used    Priority
/swapfile                              file            1048568 0      -1
Để mỗi lần reboot lại VPS thì mặc định swap sẽ bật thì các ban làm như sau
Chỉnh sửa file /etc/fstab
Mã:
nano /etc/fstab
Thêm vào cuối
Mã:
 /swapfile      none    swap    sw      0      0
Sau đó lưu lại
Set permissions cho swapfile
Mã:
chown root:root /swapfile
chmod 0600 /swapfile
Bây giờ thì bạn đã có thêm 1GB ram nữa rồi nhé
Gõ free để biết thông số swap ram


2. CHỉNH SWAPPINESS 
Swappiness là gì ?
Chi tiết WIKI
Có rất nhiều tranh cải về việc tối ưu hệ thống Linux liên quan đến Swappiness. Ngay cả các nhà phát triển Linux cũng không đồng y về tham số Swappiness nào là tối ưu.
Giá trị swappiness điều khiển xu hướng trao đổi (swap) thông tin của kernel từ RAM và ổ cứng, Swappiness chấp nhận một giá trị trong khoảng từ 0 đến 100.
Giá trị mặc định của swappiness được thiết lâp ở giá trị là 60. Nếu bạn cảm thấy quá trình trao đổi thông tin giữa nhân Linux ( kernel ) và RAM hay ổ cứng không đạt đến giá trị đó, bạn có thể giảm thông số của swappiness lên hoặc xuống theo ý của bạn
Nói tóm lại thống số Swappiness để chỉ định mức độ ưu tiên của swap
swappiness = 0 - có nghĩ là swap chỉ sử dụng thì RAM vật lý bị tràn ( hết ram )
swappiness = 10 - Có nghĩa là nếu RAM vật lý còn 10% thì hệ thống sẽ dùng đến swap
swappiness = 60 - Mặc định
swappiness = 100 - Swap sẽ hoạt động hết mình . ưu tiên như là ram thật ( máy sẽ làm việc vất vả hơn)

Để chỉnh thông số swappiness ta dùng lệnh
Mã:
echo 20 > /proc/sys/vm/swappiness
Tuy nhiên thông số này sẽ về mặc định là 60 khi ta khởi động lại máy
Để cho thông số luôn thay đổi khi khởi động lại máy chúng ta cần gõ lệnh sau
Mã:
echo "vm.swappiness=20" | sudo tee -a /etc/sysctl.conf && sudo sysctl -p
Gía trị tôi đặt là 10 còn các bạn tùy nhé
cat /proc/sys/vm/swappiness để kiểm tra
Đã thử nghiệm trên VPS SSD của http://digitalocean.com
Chúc các bạn thành công

3. THAM KHảO THÊM: http://www.cyberciti.biz/faq/linux-a...ap-file-howto/

4. NGUồN: daivietpda.vn



Bạn cần disable dịch vụ iptables đang chạy trên CentOS version 4/5/6.
(a)iptables – IPv4 iptables firewall service.
(b)ip6tables – IPv6 iptables firewall service.
Disable firewall

Những command bên dưới được thực hiện ở user root để disable firewall IPv4.
[root@linux24h ~]# service iptables save
[root@linux24h ~]# service iptables stop
[root@linux24h ~]# chkconfig iptables off
Sample Outputs:
iptables: Flushing firewall rules:                         [  OK  ]
iptables: Setting chains to policy ACCEPT: filter          [  OK  ]
iptables: Unloading modules:                               [  OK  ]
Tiếp theo, những command bên dưới được thực hiện ở user root để disable firewall IPv6.
[root@linux24h ~]# service ip6tables save
[root@linux24h ~]# service ip6tables stop
[root@linux24h ~]# chkconfig ip6tables off
Sample Outputs:
ip6tables: Flushing firewall rules:                        [  OK  ]
ip6tables: Setting chains to policy ACCEPT: filter         [  OK  ]
ip6tables: Unloading modules:                              [  OK  ]
Enable Firewall

Bạn cần mở(Enable) Firewall IPv4 sử dụng các lệnh dưới đây ở root user:
[root@linux24h ~]# service iptables start
[root@linux24h ~]# chkconfig iptables on
Sample Outputs:
iptables: Applying firewall rules:                         [  OK  ]
Đối với Firewall IPv6
[root@linux24h ~]# service ip6tables start
[root@linux24h ~]# chkconfig ip6tables on
Command để kiểm tra tình trạng

IPv4
[root@linux24h ~]# service iptables status
Hoặc
[root@linux24h ~]# /sbin/iptables -L -v -n
IPv6
[root@linux24h ~]# service ip6tables status
Hoặc
[root@linux24h ~]# /sbin/ip6tables -L -v -n
Sample Outputs(Disable Firewall):
Chain INPUT (policy ACCEPT 0 packets, 0 bytes)
 pkts bytes target     prot opt in     out     source               destination         

Chain FORWARD (policy ACCEPT 0 packets, 0 bytes)
 pkts bytes target     prot opt in     out     source               destination         

Chain OUTPUT (policy ACCEPT 0 packets, 0 bytes)
 pkts bytes target     prot opt in     out     source               destination 








Các câu lệnh MySQL cần phải biết
 Học VPS / Database / Các câu lệnh MySQL cần phải biết
 07/03/2014  Luân Trần  Database  11,024 Views  6 Comments
CHIA Sẻ:


Khi chạy các lệnh này, bạn cần login vào MySQL với tài khoản root (MySQL root chứ không phải tài khoản root quản lý VPS) hoặc tài khoản có full quyền. Tất cả các thao tác mình thực hiện trên VPS CentOS

Đăng nhập MySQL bạn dùng lệnh: mysql -u root -p

1. Thư mục chứa database

Trên CentOS, toàn bộ file raw database được lưu trong thư mục /var/lib/mysql

2. Quản lý tài khoản và phân quyền

Hiển thị toàn bộ users:
mysql> SELECT * FROM mysql.user;

Xóa null user:
mysql> DELETE FROM mysql.user WHERE user = ' ';

Xóa tất cả user mà không phải root:
mysql> DELETE FROM mysql.user WHERE NOT (host="localhost" AND user="root");

Đổi tên tài khoản root (giúp bảo mật):
mysql> UPDATE mysql.user SET user="mydbadmin" WHERE user="root";

Gán full quyền cho một user mới:
mysql> GRANT ALL PRIVILEGES ON *.* TO 'username'@'localhost' IDENTIFIED BY 'mypass' WITH GRANT OPTION;

Phân quyền chi tiết cho một user mới:
mysql> GRANT SELECT, INSERT, UPDATE, DELETE, CREATE, DROP, INDEX, ALTER, CREATE TEMPORARY TABLES, LOCK TABLES ON mydatabase.* TO 'username'@'localhost' IDENTIFIED BY 'mypass';

Gán full quyền cho một user mới trên một database nhất định:
mysql> GRANT ALL PRIVILEGES ON mydatabase.* TO 'username'@'localhost' IDENTIFIED BY 'mypass' WITH GRANT OPTION;

Thay đổi mật khẩu user:
mysql> UPDATE mysql.user SET password=PASSWORD("newpass") WHERE User='username';

Xóa user:
mysql> DELETE FROM mysql.user WHERE user="username";
3. Các thao tác database

Hiển thị toàn bộ databases:
mysql> SHOW DATABASES;
Tạo database:
mysql> CREATE DATABASE mydatabase;

Sử dụng một database:
mysql> USE mydatabase;

Xóa một database:
mysql> DROP DATABASE mydatabase;

Tối ưu database:
All Databases:
$ sudo mysqlcheck -o --all-databases -u root -p
Single Database:
$ sudo mysqlcheck -o db_schema_name -u root -p
4. Các thao tác table

Tất cả các thao tác bên dưới bạn phải lựa chọn trước database bằng cách dùng lệnh: mysql> USE mydatabase;

Hiển thị toàn bộ table:
mysql> SHOW TABLES;

Hiển thị dữ liệu của table:
mysql> SELECT * FROM tablename;

Đổi tên table :
mysql> RENAME TABLE first TO second;
hoặc
mysql> ALTER TABLE mytable rename as mynewtable;

Xóa table:
mysql> DROP TABLE mytable;
5. Các thao tác cột và hàng

Tất cả các thao tác bên dưới bạn phải lựa chọn trước database bằng cách dùng lệnh: mysql> USE mydatabase;

Hiển thị các column trong table:
mysql> DESC mytable;
hoặc
mysql> SHOW COLUMNS FROM mytable;

Đổi tên column:
mysql> UPDATE mytable SET mycolumn="newinfo" WHERE mycolumn="oldinfo";

Select dữ liệu:
mysql> SELECT * FROM mytable WHERE mycolumn='mydata' ORDER BY mycolumn2;

Insert dữ liệu vào table:
mysql> INSERT INTO mytable VALUES('column1data','column2data','column3data','column4data','column5data','column6data','column7data','column8data','column9data');

Xóa dữ liệu trong table:
mysql> DELETE FROM mytable WHERE mycolumn="mydata";

Cập nhật dữ liệu trong table:
mysql> UPDATE mytable SET column1="mydata" WHERE column2="mydata";
6. Các thao tác sao lưu và phục hồi

Sao lưu toàn bộ database bằng lệnh (chú ý không có khoảng trắng giữa -p và mật khẩu):
mysqldump -u root -pmypass --all-databases > alldatabases.sql

Sao lưu một database bất kỳ:
mysqldump -u username -pmypass databasename > database.sql

Khôi phục toàn bộ database bằng lệnh:
mysql -u username -pmypass < alldatabases.sql (no space in between -p and mypass)

Khôi phục một database bất kỳ:
mysql -u username -pmypass databasename < database.sql

Chỉ sao lưu cấu trúc database:
mysqldump --no-data --databases databasename > structurebackup.sql

Chỉ sao lưu cấu trúc nhiều database:
mysqldump --no-data --databases databasename1 databasename2 databasename3 > structurebackup.sql

Sao lưu một số table nhất định:
mysqldump --add-drop-table -u username -pmypass databasename table_1 table_2 > databasebackup.sql
Related Posts:
Backup và Restore MySQL Database bằng dòng lệnh
Tạo mysql database và user bằng lệnh terminal
21 câu lệnh Linux phải nhớ
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

----------------------------------------PHẦN 1 : TRÊN CENTOS 7

---------------------------Chạy các lệnh sau để cài thư viện---------------------------
yum update -y -y
yum install net-tools -y
yum install libuuid.i686 -y
yum install libcrypto.so.6 -y
yum install libstdc++.so.6 -y
yum install libuuid.so.1 -y

---------------------------Cài mysql---------------------------
yum install mariadb-server -y
systemctl enable mariadb
systemctl start mariadb

--Để Remote MySQL từ Navicat bằng User Root thì làm thêm 1 phát này nữa:

sudo mysql -u root -pP@ssw0rd
GRANT ALL ON *.* to root@'%' IDENTIFIED BY 'P@ssw0rd';

--Note: chữ P@ssw0rd chính là Password của các bác đó nha.

      
--Hiển thị toàn bộ databases:
mysql> SHOW DATABASES;
Tạo database:
mysql> CREATE DATABASE mydatabase;

--Sử dụng một database:
mysql> USE mydatabase;

--Xóa một database:
mysql> DROP DATABASE mydatabase;
---------------------------Cấu hình mật khẩu cho mysql (mặc định là 1234560123)---------------------------
mysql_secure_installation
Nhấn Enter 
Nhấn Y
Đặt mật khẩu 1234560123
Nhập lại 
Chọn Y
Chọn n
Chọn y rồi y

---------------------------Tắt tường lửa---------------------------
systemctl stop firewalld			" dừng firewalld"
systemctl disable firewalld			"xóa firewalld"
firewall-cmd --zone=public --permanent --add-port=81/tcp
firewall-cmd --reload

---------------------------Tạo Database server1---------------------------
- Nhập 
mysql -uroot -p
mật khẩu 1234560123
CREATE DATABASE server1;
SHOW DATABASES;
---------------------------Chép file vào CENTOS---------------------------
- Dùng WINSCP chép file jxser đã có vào thư mục /home/

---------------------------Chỉnh các thông số IP trong thư mục gateway và server1---------------------------
- Như file jxser mặc định đã để IP giống với IP khi config card mạng CENTOS 6 lúc đầu.
Các file goddess.cfg
Ngay chổ InternetIP chỉnh thành IP của CENTOS (192.168.1.100)
bishop.cfg
- Ngay chổ AccSvrIP = 192.168.1.200 (IP của máy ảo WIN)
- Còn cái mac-address thì khi nào làm online sẽ chỉnh theo địa chỉ MAC của máy WIN và CENTOS riêng
- Ngay chổ InternetIP chỉnh thành IP của CENTOS (192.168.1.100)
relay_config.ini
[root]
Address = 192.168.1.200 (IP của máy ảo WIN)

[FixIP]
InternetIP = 192.168.1.100 (IP của máy ảo CENTOS)

server.cfg cũng chỉnh y vậy

Tiếp theo là mở Port Firewall của CentOS:

iptables -I INPUT -p TCP --dport 5622 -j ACCEPT
iptables -I INPUT -p TCP --dport 5623 -j ACCEPT
iptables -I INPUT -p TCP --dport 5632 -j ACCEPT
iptables -I INPUT -p TCP --dport 6666 -j ACCEPT
iptables -I INPUT -p TCP --dport 3306 -j ACCEPT
service iptables save
service iptables restart --( muốn chạy lệnh này cần phải cài : yum install iptables-services)

      
-- Câu lệnh chạy sv        
cd /home/jxser/gateway
./goddess_y

cd /home/jxser/gateway
./bishop_y

cd /home/jxser/gateway/s3relay
./s3relay_y

cd /home/jxser/server1
./jx_linux_y
          
----------------------------------Xóa log của linux như nào thế các bác
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
----------------------------------------PHẦN 2 : TRÊN WINXP
----------------------------------Cài SQL 2000---------------------------------------------------------------------------------------
- Tải file SQLServer2000.rar
- Giải nén
- Chạy file setup.bat
- Làm theo hướng dẫn như video
- Authentication Mode
Password : sa
Nhập lại: sa
Sau khi cài xong
- Vào Start – Program Files chọn Microsoft Sql …
- Chạy service_manager => xuất hiện cửa sổ mysql db
- Nhấn nút tam giác xanh để bật service lên
* Attach Database
- Để sẵn 1 file account_tong.MDF
- Start-Program-Enterprise Manager
- Làm theo video để attach database
- Vào phần Security-Login
- Chỉnh password thành 1234560123
* Chép thư mục Pays – và GMPassGen.exe
- Mở database.ini
- Chỉnh IP thành 192.168.1.200
Dùng GMPassGen.exe để convert mã hoá IP
Sau đó điền vào mục IP trong file database
- Database tên là account_tong – cũng mã hoá
- user và pass cũng mã hoá
- User : sa
- Pass: 1234560123
Điền theo video (chú ý, GMPassGen.exe mỗi lần chạy là mã khác nhau, ở máy tui thì ra như video, nhưng máy các bạn sẽ ra khác, quan trọng copy đủ và đúng vị trí)
Chuột phải vào file S3RelayServer_Y chọn Send to desktop
Tương tự với file Sword3paysys
Đặt tên 1 cho S3RelayServer_Y, 2 cho Sword3…
Chạy 1
Chạy 2
Mở SecureCRT 
Kết nối
Chạy 1, 2, 3, S1


Sau đó chạy lại lệnh khởi động server bên máy ảo win
----------------------------------Chay qua 1 model hoac ip pulic va Private ---------------------------------------------------------
4. Config jx_server_y
- Dịch vụ này là dịch vụ game chính.
- Người chơi trong game sẽ liên tục connect tới dịch vụ này.
- Chạy port 6666 (có thể mỗi game có đổi port).
- File config: servercfg.ini
- Thông thường chỉ chỉnh 1 chỗ là InternetIp trong FixIp, chỗ này nếu có proxy thì đặt IP proxy (123.123.123.123) vào đây.
II. Config tích hợp Proxy
1. Add IP Proxy:
- Mục đích để services cuối jx_server_y có thể start được với IP proxy.
- Chạy lệnh:
/sbin/ip addr add 123.123.123.123/32 dev eth0:1 (với 123.123.123.123 là IP proxy, eth0 là tên card mạng - cần thay bằng tên tương ứng với server của bạn)
- Add dòng trên vào file /etc/rc.local luôn để khi khởi động tự add IP proxy vào sv linux.
- Với CentOS 7 thì cần chạy thêm lệnh chmod +x /etc/rc.d/rc.local thì khi reboot mới có tác dụng.
2. Xóa các rule iptables mặc định:
- Flush các rules mặt định của iptables tại 3 các chains:
iptables -F INPUT
iptables -F OUTPUT
iptables -F FORWARD
3. Nat traffic game từ proxy vào sv linux, nat sang port game.
- Chạy lệnh:
iptables -t nat -A PREROUTING -d 192.168.199.11/32 -p tcp -m tcp --dport 6666 -j DNAT --to-destination 123.123.123.123
- Lưu lại cấu hình iptables hiện tại cho lần khởi động tiếp theo: #iptables-save > /etc/sysconfig/iptables
Phần này là rất quan trọng, cần làm theo chính xác để chạy được game cũng như khi reboot máy chủ thì ko phải vào config lại. Đến đây là hoàn tất rồi!

----------------------------------------HẾT--------------------------------------------------------------------------------------------------------------

