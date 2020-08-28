# dns_docker-compose
用来部署dns的docker-compose文件
>
git clone https://github.com/yangyuanpeng525/dns_docker-compose.git
>
cd dns_docker-compose 
>
docker-compose up -d 
>
修改dns，测试模板中自带的域名：
>
nslookup www.haha.com   >>  127.0.0.4
>
nslookup ccc.haha.com   >>  183.2.45.2
>
根据需求修改 dns_docker-compose/{data.conf,data.zones}两个文件
