#! /bin/bash
rename '.repo' '.repo.bak' /etc/yum.repos.d/*.repo

echo "----------------rename finished!----------------"

# https://mirrors.aliyun.com/repo/Centos-vault-8.5.2111.repo
# wget http://mirrors.aliyun.com/repo/Centos-vault-8.5.2111.repo -O /etc/yum.repos.d/Centos-vault-8.5.2111.repo
# wget http://mirrors.aliyun.com/repo/epel-archive-8.repo -O /etc/yum.repos.d/epel-archive-8.repo

echo "----------------repo downloaded!----------------"

# sed -i 's/http:\/\/mirrors.cloud.aliyuncs.com/url_tmp/g' /etc/yum.repos.d/Centos-vault-8.5.2111.repo && sed -i 's/url_tmp/http:\/\/mirrors.aliyun.com/g' /etc/yum.repos.d/Centos-vault-8.5.2111.repo

echo "----------------repo fixed!----------------"

curl -o /etc/yum.repos.d/CentOS-Base.repo https://mirrors.aliyun.com/repo/Centos-vault-8.5.2111.repo

yum clean all && yum makecache

echo "----------------yum cleaned----------------"
