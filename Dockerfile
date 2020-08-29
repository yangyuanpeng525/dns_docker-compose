FROM   registry.cn-hangzhou.aliyuncs.com/yangyuanpeng/debian:stretch-slim-tsinghua-sources
RUN  apt update && \
     apt install bind9  -y && \
     mkdir  /etc/bind/data.conf /etc/bind/data.zones && \
     echo 'include "/etc/bind/data.conf/named.conf.default-zones";'  >> /etc/bind/named.conf
COPY ./logging  /tmp
RUN  cat /tmp/logging >> /etc/bind/named.conf && rm -rf /tmp/logging   
COPY ./start.sh /
CMD ["/start.sh","run" ]
