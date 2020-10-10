# dns_docker-compose
用来部署dns的docker-compose文件
>
git clone https://github.com/yangyuanpeng525/dns_docker-compose.git
>
cd dns_docker-compose 
>
docker-compose up -d 
>
docker-compose ps
>
启动之后，测试模板中自带的域名：
>
nslookup www.haha.com   >>  127.0.0.4
>
nslookup ccc.haha.com   >>  183.2.45.2
>
根据需求修改 dns_docker-compose/{data.conf,data.zones}两个文件
>
日志信息在logging文件中，若要修改日志配置，先修改logging文件，再重新docker build 生成新的镜像
>
日志信息的查看方法：https://blog.csdn.net/linux_yyp/article/details/108293193
